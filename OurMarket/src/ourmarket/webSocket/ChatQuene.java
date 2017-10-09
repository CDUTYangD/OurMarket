package ourmarket.webSocket;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;


public class ChatQuene {
	//定义容器
		public class Basket {
			private OnWrong oW;
			//创建聊天类方便直接得到Message类实时消息
			Message msg=new Message();
			public void setMsg(Message msg){
				this.msg=msg;
			}
			//获取Message中的聊天类容
			private String message_news;
			public void setMessages(String str) {
			  this.message_news=str;
			}
			//定义队列的容量--测试时为一百
			BlockingQueue<String> basket=new LinkedBlockingQueue<String>(100);
			//生产方法，把生产的东西放入队列
			public void produce() throws InterruptedException{
				try {
					//放入物品   新物品必须等待前物品被消费留下空位
					basket.put(message_news);
					System.out.print("队列人数："+basket.size());
				} catch (Exception e) {
					// TODO: handle exception
				}
				
			}
			//消费物品
			public String consume()throws InterruptedException{
				Lock mylock = new ReentrantLock();
				try {
					
					mylock.lock();
					//take方法取出并移除头部的信息
					return  basket.take();
				} catch (Exception e) {
					// TODO: handle exception
					return oW.putError("消费");
				}finally{
					mylock.unlock();
				}
				
			}
		}

	}
	//定义一个报错者
	class OnWrong{
	 public	String putError(String user){
		 String wrongMessage=user+"操作出错";
		 return wrongMessage;
	 }
}
