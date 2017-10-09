package ourmarket.pojos;

public class MyAppriseInfo {
	String gname;//商品名称
	Float gprice;//商品单价
	Integer gnum;//商品数量
	String goodImg;//商品图片
	String comments;//商品评论
	public String getGname() {
		return gname;
	}
	public void setGname(String gname) {
		this.gname = gname;
	}
	public Float getGprice() {
		return gprice;
	}
	public void setGprice(Float gprice) {
		this.gprice = gprice;
	}
	public Integer getGnum() {
		return gnum;
	}
	public void setGnum(Integer gnum) {
		this.gnum = gnum;
	}
	public String getGoodImg() {
		return goodImg;
	}
	public void setGoodImg(String goodImg) {
		this.goodImg = goodImg;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	public MyAppriseInfo(String gname, Float gprice, Integer gnum, String goodImg, String comments) {
		super();
		this.gname = gname;
		this.gprice = gprice;
		this.gnum = gnum;
		this.goodImg = goodImg;
		this.comments = comments;
	}
	public MyAppriseInfo() {
		super();
	}
	
	
}
