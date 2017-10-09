package ourmarket.webSocket;

public class Message {
	//发信人
		private String fromName;
		//收信人
		private String toName;
		//消息内容
		private String msg;
		//时间
		private String date;
		//消息类型--1-用户端--2-服务器推送--3-其他
		private String tType="1";
		public void setTType(String  i){
			this.tType=i;
		}
		public void setFromName(String name) {
			this.fromName=name;
		}
		public void setToName(String name) {
			this.toName=name;
		}
		public void setDate(String date) {
			this.date=date;
		}
		public void setMsg(String msg) {
			this.msg=msg;
		}
		public String getMsg() {
			return msg;
		}
		public String getFromName() {
			return fromName;
		}
		public String getToName() {
			return toName;
		}
		public String getDate() {
			return date;
		}
		public String getTType()
		{
			return tType;
		}
		@Override  
		    public String toString() {  
		        return "Message [fromName=" + fromName + ", toName=" + toName + ", msg="+msg+", date="+date+",type="+tType+"]";  
		    } 
		
}
