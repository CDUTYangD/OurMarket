package ourmarket.pojos;

import java.sql.Timestamp;

public class UncollectedInfo {

	 String imagesrc;
	 Timestamp otime;
	 Float omoney;
	 Short opayState;
	 Integer onum;
	 String gname;
	public String getImagesrc() {
		return imagesrc;
	}
	public void setImagesrc(String imagesrc) {
		this.imagesrc = imagesrc;
	}
	public Timestamp getOtime() {
		return otime;
	}
	public void setOtime(Timestamp otime) {
		this.otime = otime;
	}
	public Float getOmoney() {
		return omoney;
	}
	public void setOmoney(Float omoney) {
		this.omoney = omoney;
	}
	public Short getOpayState() {
		return opayState;
	}
	public void setOpayState(Short opayState) {
		this.opayState = opayState;
	}
	public Integer getOnum() {
		return onum;
	}
	public void setOnum(Integer onum) {
		this.onum = onum;
	}
	public String getGname() {
		return gname;
	}
	public void setGname(String gname) {
		this.gname = gname;
	}
	public UncollectedInfo(String imagesrc, Timestamp otime, Float omoney, Short opayState, Integer onum,
			String gname) {
		super();
		this.imagesrc = imagesrc;
		this.otime = otime;
		this.omoney = omoney;
		this.opayState = opayState;
		this.onum = onum;
		this.gname = gname;
	}
	public UncollectedInfo() {
		super();
	}
	
	
}
