package ourmarket.models;

/**
 * Adress entity. @author MyEclipse Persistence Tools
 */

public class Adress implements java.io.Serializable {

	// Fields

	private Long aid;
	private Integer uid;
	private String ainfo;
	private Short astate;

	// Constructors

	/** default constructor */
	public Adress() {
	}

	/** minimal constructor */
	public Adress(String ainfo, Short astate) {
		this.ainfo = ainfo;
		this.astate = astate;
	}

	/** full constructor */
	public Adress(Integer uid, String ainfo, Short astate) {
		this.uid = uid;
		this.ainfo = ainfo;
		this.astate = astate;
	}

	// Property accessors

	public Long getAid() {
		return this.aid;
	}

	public void setAid(Long aid) {
		this.aid = aid;
	}

	public Integer getUid() {
		return this.uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}

	public String getAinfo() {
		return this.ainfo;
	}

	public void setAinfo(String ainfo) {
		this.ainfo = ainfo;
	}

	public Short getAstate() {
		return this.astate;
	}

	public void setAstate(Short astate) {
		this.astate = astate;
	}

}