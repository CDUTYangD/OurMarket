package ourmarket.models;

import java.sql.Timestamp;

/**
 * Comments entity. @author MyEclipse Persistence Tools
 */

public class Comments implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer commentId;
	private Integer uid;
	private Long imageListId;
	private Integer gid;
	private String comments;
	private Timestamp commentTime;
	private Short commentState;
	private Integer oid;
	// Constructors

	/** default constructor */
	public Comments() {
	}

	/** minimal constructor */
	public Comments(String comments, Timestamp commentTime) {
		this.comments = comments;
		this.commentTime = commentTime;
	}

	/** full constructor */
	public Comments(Integer uid, Long imageListId, Integer gid, String comments, Timestamp commentTime,Short commentState,Integer oid) {
		this.uid = uid;
		this.imageListId = imageListId;
		this.gid = gid;
		this.comments = comments;
		this.commentTime = commentTime;
		this.commentState=commentState;
		this.setOid(oid);
	}

	// Property accessors

	public Integer getCommentId() {
		return this.commentId;
	}

	public void setCommentId(Integer commentId) {
		this.commentId = commentId;
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

	public Integer getGid() {
		return this.gid;
	}

	public void setGid(Integer gid) {
		this.gid = gid;
	}

	public String getComments() {
		return this.comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	public Timestamp getCommentTime() {
		return this.commentTime;
	}

	public void setCommentTime(Timestamp commentTime) {
		this.commentTime = commentTime;
	}

	public Short getCommentState() {
		return commentState;
	}

	public void setCommentState(Short commentState) {
		this.commentState = commentState;
	}

	public Integer getOid() {
		return oid;
	}

	public void setOid(Integer oid) {
		this.oid = oid;
	}

}