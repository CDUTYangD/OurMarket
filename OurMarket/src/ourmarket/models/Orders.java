package ourmarket.models;

import java.sql.Timestamp;

/**
 * Orders entity. @author MyEclipse Persistence Tools
 */

public class Orders implements java.io.Serializable {

	// Fields

	private Integer oid;
	private Integer uid;
	private Integer gid;
	private Timestamp otime;
	private Float omoney;
	private Short opayState;
	private Integer onum;
	private String ono;
	private Short osendState;

	// Constructors

	/** default constructor */
	public Orders() {
	}

	/** minimal constructor */
	public Orders(Timestamp otime, Float omoney, Short opayState, Integer onum, String ono, Short osendState) {
		this.otime = otime;
		this.omoney = omoney;
		this.opayState = opayState;
		this.onum = onum;
		this.ono = ono;
		this.osendState = osendState;
	}

	/** full constructor */
	public Orders(Integer uid, Integer gid, Timestamp otime, Float omoney, Short opayState, Integer onum, String ono,
			Short osendState) {
		this.uid = uid;
		this.gid = gid;
		this.otime = otime;
		this.omoney = omoney;
		this.opayState = opayState;
		this.onum = onum;
		this.ono = ono;
		this.osendState = osendState;
	}

	// Property accessors

	public Integer getOid() {
		return this.oid;
	}

	public void setOid(Integer oid) {
		this.oid = oid;
	}

	public Integer getUid() {
		return this.uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}

	public Integer getGid() {
		return this.gid;
	}

	public void setGid(Integer gid) {
		this.gid = gid;
	}

	public Timestamp getOtime() {
		return this.otime;
	}

	public void setOtime(Timestamp otime) {
		this.otime = otime;
	}

	public Float getOmoney() {
		return this.omoney;
	}

	public void setOmoney(Float omoney) {
		this.omoney = omoney;
	}

	public Short getOpayState() {
		return this.opayState;
	}

	public void setOpayState(Short opayState) {
		this.opayState = opayState;
	}

	public Integer getOnum() {
		return this.onum;
	}

	public void setOnum(Integer onum) {
		this.onum = onum;
	}

	public String getOno() {
		return this.ono;
	}

	public void setOno(String ono) {
		this.ono = ono;
	}

	public Short getOsendState() {
		return this.osendState;
	}

	public void setOsendState(Short osendState) {
		this.osendState = osendState;
	}

}