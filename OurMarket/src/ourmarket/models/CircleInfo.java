package ourmarket.models;

import java.sql.Timestamp;

/**
 * CircleInfo entity. @author MyEclipse Persistence Tools
 */

public class CircleInfo implements java.io.Serializable {

	// Fields

	private Short circleId;
	private Float circleX;
	private Float circleY;
	private Double circleR;
	private String circleDes;
	private Timestamp circleTime;

	// Constructors

	/** default constructor */
	public CircleInfo() {
	}

	/** minimal constructor */
	public CircleInfo(Float circleX, Float circleY, Double circleR, Timestamp circleTime) {
		this.circleX = circleX;
		this.circleY = circleY;
		this.circleR = circleR;
		this.circleTime = circleTime;
	}

	/** full constructor */
	public CircleInfo(Float circleX, Float circleY, Double circleR, String circleDes, Timestamp circleTime) {
		this.circleX = circleX;
		this.circleY = circleY;
		this.circleR = circleR;
		this.circleDes = circleDes;
		this.circleTime = circleTime;
	}

	// Property accessors

	public Short getCircleId() {
		return this.circleId;
	}

	public void setCircleId(Short circleId) {
		this.circleId = circleId;
	}

	public Float getCircleX() {
		return this.circleX;
	}

	public void setCircleX(Float circleX) {
		this.circleX = circleX;
	}

	public Float getCircleY() {
		return this.circleY;
	}

	public void setCircleY(Float circleY) {
		this.circleY = circleY;
	}

	public Double getCircleR() {
		return this.circleR;
	}

	public void setCircleR(Double circleR) {
		this.circleR = circleR;
	}

	public String getCircleDes() {
		return this.circleDes;
	}

	public void setCircleDes(String circleDes) {
		this.circleDes = circleDes;
	}

	public Timestamp getCircleTime() {
		return this.circleTime;
	}

	public void setCircleTime(Timestamp circleTime) {
		this.circleTime = circleTime;
	}

}