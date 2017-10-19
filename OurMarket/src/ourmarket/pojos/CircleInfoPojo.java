package ourmarket.pojos;

public class CircleInfoPojo {
	Short circleID;
	Double circleX;
	Double circleY;
	String circleColor;
	
	public CircleInfoPojo() {
		super();
	}


	public CircleInfoPojo(Short circleID,Double circleX,Double circleY,String circleColor){
		super();
		this.circleX = circleX;
		this.circleY = circleY;
		this.circleColor = circleColor;
		this.circleID=circleID;
	}
	
	
	public CircleInfoPojo(Double circleX, Double circleY, String circleColor) {
		super();
		this.circleX = circleX;
		this.circleY = circleY;
		this.circleColor = circleColor;
	}


	public Short getCircleID() {
		return circleID;
	}
	public void setCircleID(Short circleID) {
		this.circleID = circleID;
	}
	public Double getCircleX() {
		return circleX;
	}
	public void setCircleX(Double circleX) {
		this.circleX = circleX;
	}
	public Double getCircleY() {
		return circleY;
	}
	public void setCircleY(Double circleY) {
		this.circleY = circleY;
	}
	public String getCircleColor() {
		return circleColor;
	}
	public void setCircleColor(String circleColor) {
		this.circleColor = circleColor;
	}
	
}
