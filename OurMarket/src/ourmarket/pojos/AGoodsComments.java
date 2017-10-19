package ourmarket.pojos;

import java.sql.Timestamp;
/**
 * @author FCmmmmmm
 * 
 *
 * */
public class AGoodsComments {
	String cString;
	Timestamp cTime;
	String cUName;
	Integer cUId;
	public String getcString() {
		return cString;
	}
	public void setcString(String cString) {
		this.cString = cString;
	}
	public Timestamp getcTime() {
		return cTime;
	}
	public void setcTime(Timestamp cTime) {
		this.cTime = cTime;
	}
	public String getcUName() {
		return cUName;
	}
	public void setcUName(String cUName) {
		this.cUName = cUName;
	}
	public Integer getcUId() {
		return cUId;
	}
	public void setcUId(Integer cUId) {
		this.cUId = cUId;
	}
	
}
