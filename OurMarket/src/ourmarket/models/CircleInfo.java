package ourmarket.models;

import java.sql.Timestamp;

/**
 * CircleInfo entity. @author MyEclipse Persistence Tools
 */

public class CircleInfo implements java.io.Serializable {

	// Fields

	private Short circleId;
	private Double circleX;
	private Double circleY;
	private String circleName;
	private String circleDes;
	private Timestamp circleTime;

	// Constructors

	/** default constructor */
	public CircleInfo() {
	}

	/** minimal constructor */
	public CircleInfo(Double circleX, Double circleY, String circleName, Timestamp circleTime) {
		this.circleX = circleX;
		this.circleY = circleY;
		this.circleName = circleName;
		this.circleTime = circleTime;
	}

	/** full constructor */
	public CircleInfo(Double circleX, Double circleY, String circleName, String circleDes, Timestamp circleTime) {
		this.circleX = circleX;
		this.circleY = circleY;
		this.circleName = circleName;
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

	public Double getCircleX() {
		return this.circleX;
	}

	public void setCircleX(Double circleX) {
		this.circleX = circleX;
	}

	public Double getCircleY() {
		return this.circleY;
	}

	public void setCircleY(Double circleY) {
		this.circleY = circleY;
	}


	public String getCircleName() {
		return circleName;
	}

	public void setCircleName(String circleName) {
		this.circleName = circleName;
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