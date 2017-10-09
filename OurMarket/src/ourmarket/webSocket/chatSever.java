package ourmarket.webSocket;


import java.io.IOException;
import java.text.DateFormat;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;


import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

import org.apache.jasper.tagplugins.jstl.core.ForEach;
import org.springframework.beans.factory.annotation.Autowired;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;

import ourmarket.services.IMyMessageService;
import ourmarket.webSocket.ChatQuene.Basket;


@ServerEndpoint("/websocket")
public class chatSever {
	
	//消息队列
	private static final	ChatQuene cq=new ChatQuene();
	private static final	Basket basket=cq.new Basket();

	//线程池
	ExecutorService service = Executors.newCachedThreadPool();
	ExecutorService service2=Executors.newCachedThreadPool();
	//确定文本类型
	String msgType="1";


	//发信人：有的话
	String userName="";
	

	//创建session集合
	private static final Set <Session> peers=
			Collections.synchronizedSet(new HashSet<Session>());

	//创建键值对储存唯一id和其新的WEBSOCKRT地址
	public	static final Hashtable<String,Session> mp1=new Hashtable<String, Session>();


	//打开通道时
	@OnOpen
	public void onOpen(Session peer){
		//创建消息类--此处只做测试处理
		Message msg=new Message();
		try {
		
			//拿到客户端添加的后缀
			String AllText=peer.getQueryString();
			// System.out.println(AllText);
			msg.setFromName(AllText.substring(9).toString());
			userName=AllText.substring(9).toString();
			//获取收信人
			//储存用户与其对应的web地址
			KeyUpdate(userName, peer);
		} 
		catch (Exception e)
		{

		}
	
	}

	//产生通讯
	@OnMessage
	public void message(String message,Session session) throws IOException
	{
		//创建消息类储存每一条消息
		Message msg=new Message();
		//引导消息类转化为json数组
		JSONObject jsonObject=null;
		try {
			//把客户端发来的数据转换为JSON对象
			jsonObject=JSONObject.parseObject(message);	
		} catch (Exception e) {
			return;
		}
		//获取to的值，即信息接收对象
		String toUser=jsonObject.getString("to");
		msg.setToName(toUser);
		//获取消息内容
		String messageContent=jsonObject.getString("message");
		msg.setMsg(messageContent);
		try {
			//获取消息类型
		//	msgType =jsonObject.getString("tType");
		//	System.out.println("我拿到的tTYPE="+msgType);
		//	msg.setTType(msgType);
		} catch (Exception e) {
		}
		
		
		
		//消息队列储存
		chatQueneProducer cqp=new chatQueneProducer(messageContent, basket);
		service.submit(cqp);
		//获取发信人的通道
		msg.setFromName(userName);
		Object usernameAdress=mp1.get(userName);
		Session peer_from=(Session)usernameAdress;
		
		
		//得到时间
		Date now=new Date();
		DateFormat d3 = DateFormat.getTimeInstance();
		msg.setDate( d3.format(now));
		
		
		
		//目前阶段在不使用数据库的情况下验证双方是否在线
		if(mp1.containsKey(toUser))
		{
			//获取收信人的地址
			Object resiverAdress=mp1.get(toUser);
			Session peer_send=(Session)resiverAdress;
			//发送消息
			String jsMessage=JSON.toJSONString(msg);
			System.out.println(msg.getDate());
			System.out.println(jsMessage);
			sendMessage(peer_send,jsMessage);
		}
		else 
		{
//			msg.setFromName("貮获");
//			msg.setMsg("<h4 style='color:red'>系统提示：对方并不在线,消息将延迟发送<h4>");
//			String jString=JSON.toJSONString(msg);
//			//不在线
//			sendMessage(peer_from, jString);
		}			
	}
	//关闭通道时
	@OnClose
	public void onClose(Session peer){
		mp1.remove(peer);
	}

	//更新用户和他的WEBSOCKET的地址
	public void KeyUpdate(String username,Session peer)
	{

		if (mp1.containsKey(username))
		{
			Object ss=mp1.get(username);
			peers.remove(ss);
			onClose((Session)ss);
			mp1.remove(username);
		}
		mp1.put(username, peer);

	}

	//异步发送消息
	public void sendMessage(Session session,String msg) {
		switch(msgType)
		{
			case "1":session.getAsyncRemote().sendText(msg);break;
			case "2":break;
			default: return;
		}
		}
		
	}


