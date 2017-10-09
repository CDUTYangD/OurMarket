package ourmarket.pojos;

import java.sql.Timestamp;

public class PrivateMessageInfo {
	private	String headImgSRC;
	private String fromName;
	private String firstMessage;
	private Timestamp time;
	private Integer fromID;
	public Integer getFromID() {
		return fromID;
	}
	public void setFromID(Integer fromID) {
		this.fromID = fromID;
	}
	public String getHeadImgSRC() {
		return headImgSRC;
	}
	public void setHeadImgSRC(String headImgSRC) {
		this.headImgSRC = headImgSRC;
	}
	public String getFromName() {
		return fromName;
	}
	public void setFromName(String fromName) {
		this.fromName = fromName;
	}
	public String getFirstMessage() {
		return firstMessage;
	}
	public void setFirstMessage(String firstMessage) {
		this.firstMessage = firstMessage;
	}
	public Timestamp getTime() {
		return time;
	}
	public void setTime(Timestamp time) {
		this.time = time;
	}
}
