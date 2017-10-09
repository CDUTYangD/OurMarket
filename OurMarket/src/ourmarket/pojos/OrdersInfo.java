package ourmarket.pojos;
import java.sql.Timestamp;

public class OrdersInfo {

	String gname;
	float gprice;
	Integer gnum;
	float gallprice;
	String ono;
	Timestamp otime;
	String uname;
	String uphone;
	String uqq;
	String gimg;
	Integer oid;
	
	/**
	 * 无参构造函数
	 */
	public OrdersInfo() {
		super();
	}
	/**
	 * 全参构造函数 
	 */
	public OrdersInfo(String gname, float gprice, Integer gnum, float gallprice, String ono, Timestamp otime,
			String uname, String uphone, String uqq, String gimg, Integer oid) {
		super();
		this.gname = gname;
		this.gprice = gprice;
		this.gnum = gnum;
		this.gallprice = gallprice;
		this.ono = ono;
		this.otime = otime;
		this.uname = uname;
		this.uphone = uphone;
		this.uqq = uqq;
		this.gimg = gimg;
		this.oid = oid;
	}
	
	public Integer getOid() {
		return oid;
	}
	public void setOid(Integer oid) {
		this.oid = oid;
	}
	public String getGname() {
		return gname;
	}
	public void setGname(String gname) {
		this.gname = gname;
	}
	public float getGprice() {
		return gprice;
	}
	public void setGprice(float gprice) {
		this.gprice = gprice;
	}
	public Integer getGnum() {
		return gnum;
	}
	public void setGnum(Integer gnum) {
		this.gnum = gnum;
	}
	public float getGallprice() {
		return gallprice;
	}
	public void setGallprice(float gallprice) {
		this.gallprice = gallprice;
	}
	public String getOno() {
		return ono;
	}
	public void setOno(String ono) {
		this.ono = ono;
	}
	public Timestamp getOtime() {
		return otime;
	}
	public void setOtime(Timestamp otime) {
		this.otime = otime;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUphone() {
		return uphone;
	}
	public void setUphone(String uphone) {
		this.uphone = uphone;
	}
	public String getUqq() {
		return uqq;
	}
	public void setUqq(String uqq) {
		this.uqq = uqq;
	}
	public String getGimg() {
		return gimg;
	}
	public void setGimg(String gimg) {
		this.gimg = gimg;
	}
	public void setGallprice(float gprice,Integer gnum)
	{
		this.gallprice = gprice*gnum;
	}
	
	
	
}
