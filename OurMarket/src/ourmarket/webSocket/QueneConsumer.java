package ourmarket.webSocket;

import ourmarket.webSocket.ChatQuene.Basket;

public class QueneConsumer {
	private String instance;
	private Basket basket;
	
	public QueneConsumer (String instance,Basket basket) {
		this.instance=instance;
		this.basket=basket;
	}
	//消费物品
	 public void run(){
		
		 try {
			 
				System.out.println(basket.consume());
			    Thread.sleep(4000);
		
			
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	 }
}
