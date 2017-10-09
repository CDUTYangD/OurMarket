package ourmarket.pojos;

import java.sql.Timestamp;

public class PropertyInfo {
	String gname;
	Timestamp otime;
	String ono;
	Float omoney;
	String ostate;
	public PropertyInfo() {
		super();
	}
	public PropertyInfo(String gname, Timestamp otime, String ono, Float omoney, String ostate) {
		super();
		this.gname = gname;
		this.otime = otime;
		this.ono = ono;
		this.omoney = omoney;
		this.ostate = ostate;
	}
	public String getGname() {
		return gname;
	}
	public void setGname(String gname) {
		this.gname = gname;
	}
	public Timestamp getOtime() {
		return otime;
	}
	public void setOtime(Timestamp otime) {
		this.otime = otime;
	}
	public String getOno() {
		return ono;
	}
	public void setOno(String ono) {
		this.ono = ono;
	}
	public Float getOmoney() {
		return omoney;
	}
	public void setOmoney(Float omoney) {
		this.omoney = omoney;
	}
	public String getOstate() {
		return ostate;
	}
	public void setOstate(String ostate) {
		this.ostate = ostate;
	}
	
}
