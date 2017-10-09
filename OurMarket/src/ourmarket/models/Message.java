package ourmarket.models;

import java.sql.Timestamp;

/**
 * Message entity. @author MyEclipse Persistence Tools
 */

public class Message implements java.io.Serializable {

	// Fields

	private Integer mid;
	private Integer uid1;
	private Integer uid2;
	private Timestamp mtime;
	private String mcontent;
	private Short mstate;
	// Constructors



	/** default constructor */
	public Message() {
	}

	/** full constructor */
	public Message(Integer uid1, Integer uid2,Timestamp mtime,String mcontent,Short mstate) {
		this.uid1 = uid1;
		this.uid2 = uid2;
		this.mtime=mtime;
		this.mcontent=mcontent;
		this.mstate=mstate;
	}

	// Property accessors

	public Integer getMid() {
		return this.mid;
	}

	public void setMid(Integer mid) {
		this.mid = mid;
	}

	public Integer getUid1() {
		return this.uid1;
	}

	public void setUid1(Integer uid1) {
		this.uid1 = uid1;
	}

	public Integer getUid2() {
		return this.uid2;
	}

	public void setUid2(Integer uid2) {
		this.uid2 = uid2;
	}

	public Timestamp getMtime() {
		return this.mtime;
	}

	public void setMtime(Timestamp mtime) {
		this.mtime = mtime;
	}

	public String getMcontent() {
		return this.mcontent;
	}
	
	public void setMcontent(String mcontent) {
		this.mcontent = mcontent;
	}

	public Short getMstate() {
		return this.mstate;
	}

	public void setMstate(Short mstate) {
		this.mstate = mstate;
	}

}