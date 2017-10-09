package ourmarket.webSocket;

import ourmarket.webSocket.ChatQuene.Basket;

public class chatQueneProducer implements Runnable {
	private String instance;
	private Basket basket;
	public chatQueneProducer(String str,Basket basket){
		this.basket=basket;
		this.instance=str;
	}
	public void  run() {
		try {
		
				//生产物品
				basket.setMessages(instance);
				basket.produce();
				//休眠5s
				Thread.sleep(5000);
		
			
		} catch (Exception e) {
			// TODO: handle exception
			//生产出错
		}
	}
}
