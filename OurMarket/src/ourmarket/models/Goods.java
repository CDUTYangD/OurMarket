package ourmarket.models;

import java.sql.Timestamp;

/**
 * Goods entity. @author MyEclipse Persistence Tools
 */

public class Goods implements java.io.Serializable {

	// Fields

	private Integer gid;
	private Integer uid;
	private Long imageListId;
	private String gname;
	private Integer gnum;
	private Integer gviewNum;
	private Timestamp gproductTime;
	private String gtitle;
	private Float gprice;
	private String gbrifeIntroduction;
	private Short gstate;
	private Short gtype;
	private Short glocation;

	// Constructors

	/** default constructor */
	public Goods() {
	}

	/** minimal constructor */
	public Goods(Integer uid,String gname, Integer gnum, Timestamp gproductTime, String gtitle, Float gprice, Short gstate,
			Short gtype,Short glocation,Long imageListId) {
		this.gname = gname;
		this.gnum = gnum;
		this.gproductTime = gproductTime;
		this.gtitle = gtitle;
		this.gprice = gprice;
		this.gstate = gstate;
		this.gtype = gtype;
		this.glocation=glocation;
		this.imageListId=imageListId;
		this.uid = uid;
	}

	/** full constructor */
	public Goods(Integer uid, Long imageListId, String gname, Integer gnum, Integer gviewNum, Timestamp gproductTime,
			String gtitle, Float gprice, String gbrifeIntroduction, Short gstate, Short gtype,Short glocation) {
		this.uid = uid;
		this.imageListId = imageListId;
		this.gname = gname;
		this.gnum = gnum;
		this.gviewNum = gviewNum;
		this.gproductTime = gproductTime;
		this.gtitle = gtitle;
		this.gprice = gprice;
		this.gbrifeIntroduction = gbrifeIntroduction;
		this.gstate = gstate;
		this.gtype = gtype;
		this.glocation=glocation;
	}

	// Property accessors

	public Short getGlocation() {
		return glocation;
	}

	public void setGlocation(Short glocation) {
		this.glocation = glocation;
	}

	public Integer getGid() {
		return this.gid;
	}

	public void setGid(Integer gid) {
		this.gid = gid;
	}

	public Integer getUid() {
		return this.uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}

	public Long getImageListId() {
		return this.imageListId;
	}

	public void setImageListId(Long imageListId) {
		this.imageListId = imageListId;
	}

	public String getGname() {
		return this.gname;
	}

	public void setGname(String gname) {
		this.gname = gname;
	}

	public Integer getGnum() {
		return this.gnum;
	}

	public void setGnum(Integer gnum) {
		this.gnum = gnum;
	}

	public Integer getGviewNum() {
		return this.gviewNum;
	}

	public void setGviewNum(Integer gviewNum) {
		this.gviewNum = gviewNum;
	}

	public Timestamp getGproductTime() {
		return this.gproductTime;
	}

	public void setGproductTime(Timestamp gproductTime) {
		this.gproductTime = gproductTime;
	}

	public String getGtitle() {
		return this.gtitle;
	}

	public void setGtitle(String gtitle) {
		this.gtitle = gtitle;
	}

	public Float getGprice() {
		return this.gprice;
	}

	public void setGprice(Float gprice) {
		this.gprice = gprice;
	}

	public String getGbrifeIntroduction() {
		return this.gbrifeIntroduction;
	}

	public void setGbrifeIntroduction(String gbrifeIntroduction) {
		this.gbrifeIntroduction = gbrifeIntroduction;
	}

	public Short getGstate() {
		return this.gstate;
	}

	public void setGstate(Short gstate) {
		this.gstate = gstate;
	}

	public Short getGtype() {
		return this.gtype;
	}

	public void setGtype(Short gtype) {
		this.gtype = gtype;
	}

}