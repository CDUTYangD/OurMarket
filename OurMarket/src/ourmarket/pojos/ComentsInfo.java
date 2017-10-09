package ourmarket.pojos;

import java.sql.Timestamp;

/**
 * 渲染到界面上的评论pojo
 * @author Admin_YangD
 *
 */
public class ComentsInfo {
	
	String goodName;//商品名称
	int goodNum;//数量
	String goodImg;//图片路径
	float goodPrice;//价格
	short commentState;//评论状态
	Timestamp commentTime;//评论时间
	int oid;
	int gid;
	
	public ComentsInfo() {
		super();
	}
	public ComentsInfo(String goodName, int goodNum, String goodImg, float goodPrice, short commentState,
			Timestamp commentTime, int oid, int gid) {
		super();
		this.goodName = goodName;
		this.goodNum = goodNum;
		this.goodImg = goodImg;
		this.goodPrice = goodPrice;
		this.commentState = commentState;
		this.commentTime = commentTime;
		this.oid = oid;
		this.gid = gid;
	}
	public int getOid() {
		return oid;
	}
	public void setOid(int oid) {
		this.oid = oid;
	}
	public int getGid() {
		return gid;
	}
	public void setGid(int gid) {
		this.gid = gid;
	}
	public String getGoodName() {
		return goodName;
	}
	public void setGoodName(String goodName) {
		this.goodName = goodName;
	}
	public int getGoodNum() {
		return goodNum;
	}
	public void setGoodNum(int goodNum) {
		this.goodNum = goodNum;
	}
	public String getGoodImg() {
		return goodImg;
	}
	public void setGoodImg(String goodImg) {
		this.goodImg = goodImg;
	}
	public float getGoodPrice() {
		return goodPrice;
	}
	public void setGoodPrice(float goodPrice) {
		this.goodPrice = goodPrice;
	}
	public short getCommentState() {
		return commentState;
	}
	public void setCommentState(short commentState) {
		this.commentState = commentState;
	}
	public Timestamp getCommentTime() {
		return commentTime;
	}
	public void setCommentTime(Timestamp commentTime) {
		this.commentTime = commentTime;
	}
	
	
}
