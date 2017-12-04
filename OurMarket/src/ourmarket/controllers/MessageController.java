package ourmarket.controllers;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.jasper.tagplugins.jstl.core.ForEach;
import org.apache.tomcat.jni.Time;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mysql.jdbc.Connection;
import com.sun.org.apache.xml.internal.resolver.helpers.Debug;
import com.sun.swing.internal.plaf.metal.resources.metal;

import ourmarket.daos.AdressDAO;
import ourmarket.daos.MessageDAO;
import ourmarket.models.Message;
import ourmarket.models.User;
import ourmarket.pojos.MessagesInfo;
import ourmarket.services.IMyMessageService;
import ourmarket.services.IUserService;
import ourmarket.sys.SessionInfo;
import ourmarket.utils.SessionUtils;

@Controller
public class MessageController {
	@Autowired
	MessageDAO imy;
	@Autowired
	IUserService ius;
	@Autowired
	IMyMessageService ice;
	private static final Logger log = LoggerFactory.getLogger(MessageController.class);

	@RequestMapping("message")
	public String index(HttpServletRequest request, Model model, String fromID, String from, String to, String message,
			String time) {
		SessionInfo sessionInfo = SessionUtils.getSessionInfo(request);

		if (sessionInfo == null || null == String.valueOf(sessionInfo.userID)) {
			return "unload";
		} else {
			Integer uID1 = 1;// 新建信息接收者
			if (fromID == null) {
				uID1 = Integer.valueOf(from);
			} else {
				uID1 = Integer.valueOf(fromID);
			}
			Integer uID2 = sessionInfo.userID;// 新家使用者

			// 写入数据库
			if (message != null && (!message.equals("undefined"))) {
				// 创建user集合 遍历
				try {
					// 生成时间
					Timestamp thisTimestamp = new Timestamp(System.currentTimeMillis());
					Short mState = 1;
					Message msg = new Message(uID2, uID1, thisTimestamp, message, mState);
					ice.creatMessage(msg);
				} catch (Exception e) {
					// TODO: handle exception
					log.error("There is a wrong with saving Message", e);
				}
			}

			// 查询数据库
			try {
				// 建立message集合
				List<MessagesInfo> messages = new ArrayList<MessagesInfo>();
				// List<Message>msgs=new ArrayList<Message>();
				List<Message> msg = ice.selectMessage(uID1, uID2);
				msg.addAll(ice.selectMessage(uID2, uID1));
				int mseeageLongs = msg.size() - 6 >= 0 ? 6: msg.size();
				
				//根据时间排序
				msg.sort(Comparator.comparing(Message::getMtime));
				Collections.reverse(msg);
				
				
				
				
				for (int i = 0; i < mseeageLongs; i++) {
					// Message msaMessage=new Message();
					
					MessagesInfo messagesInfo = new MessagesInfo();
					
					if(msg.get(i).getUid2().equals(uID2)){
						messagesInfo.setType("odd");
					}
					else {
						messagesInfo.setType("even");
					}
					messagesInfo.setFrom(msg.get(i).getUid1().toString());
					messagesInfo.setTo(msg.get(i).getUid2().toString());
					messagesInfo.setMessageString(msg.get(i).getMcontent());
					messagesInfo.setTimestamp(msg.get(i).getMtime());
					messagesInfo.setUid(sessionInfo.getUserID());
					messages.add(messagesInfo);

					// msaMessage.setMcontent(msg.get(i).getMcontent().toString());
					// msaMessage.setMtime(msg.get(i).getMtime());
					// msaMessage.setUid1(msg.get(i).getUid1());
					// msaMessage.setUid2(msg.get(i).getUid2());
					// msgs.add(msaMessage);
					// System.out.println(msaMessage.getMcontent());
					// System.out.println(msaMessage.getMtime());
					//
				}
				// for (int i = 0; i < 10; i++) {
				// System.out.println(msgs.get(i).getMcontent());
				// }
				// model.addAttribute("msgs", msgs);
				Collections.reverse(messages);
				model.addAttribute("messages", messages);
			} catch (Exception e) {
				// TODO: handle exception
				log.error("There is a wrong whit selecting Mesaage", e);
			}

		}

		return "Message";
	}
	
//	
//	public List<Message> reSet(List<Message> list) {
//		Message temp=new Message();
//		for (int i = 0; i < list.size(); i++) {
//			for (int j = 0; j < list.size(); j++) {
//				if(list.get(i).getMtime().getTime()>list.get(j).getMtime().getTime()){
//					 temp=list.get(i);
//					 list.get(i)=list.get(j);
//					 list.get(j)=temp;
//				}
//			}
//			
//		}
//		
//		
//		return list;
//		
//	}
//	/**
//	 *@param 交换message
//	 *@author 16558 
//	 * */
//	public void swop(Message message1,Message message2) {
//	         
//		
//		
//	}
}

