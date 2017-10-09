package ourmarket.pojos;

import java.sql.Timestamp;

public class ReturnInfo {

	Integer rid;
	String gname;
	Timestamp rtime;
	float rgprice;
	Integer rgnum;
	float rgmoney;
	String rReason;
	Integer rstate;
	String image;
	
	
	public ReturnInfo() {
		super();
	}
	public ReturnInfo(Integer rid, String gname, Timestamp rtime, float rgprice, Integer rgnum, float rgmoney, String rReason,
			Integer rstate, String image) {
		super();
		this.rid = rid;
		this.gname = gname;
		this.rtime = rtime;
		this.rgprice = rgprice;
		this.rgnum = rgnum;
		this.rgmoney = rgmoney;
		this.rReason = rReason;
		this.rstate = rstate;
		this.image = image;
	}
	
	
	public Integer getRid() {
		return rid;
	}
	public void setRid(Integer rid) {
		this.rid = rid;
	}
	public String getGname() {
		return gname;
	}
	public void setGname(String gname) {
		this.gname = gname;
	}
	public Timestamp getRtime() {
		return rtime;
	}
	public void setRtime(Timestamp rtime) {
		this.rtime = rtime;
	}
	public float getRgprice() {
		return rgprice;
	}
	public void setRgprice(float rgprice) {
		this.rgprice = rgprice;
	}
	public Integer getRgnum() {
		return rgnum;
	}
	public void setRgnum(Integer rgnum) {
		this.rgnum = rgnum;
	}
	public float getRgmoney() {
		return rgmoney;
	}
	public void setRgmoney(float rgmoney) {
		this.rgmoney = rgmoney;
	}
	public String getrReason() {
		return rReason;
	}
	public void setrReason(String rReason) {
		this.rReason = rReason;
	}
	public Integer getRstate() {
		return rstate;
	}
	public void setRstate(Integer rstate) {
		this.rstate = rstate;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}

	
}
