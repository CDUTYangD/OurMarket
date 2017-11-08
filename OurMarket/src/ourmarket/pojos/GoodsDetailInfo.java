package ourmarket.pojos;

public class GoodsDetailInfo {

	String imagesrc;
	float price;
	String name;
	String Introduce;
	String phoneNum;
	String location;
	
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getImagesrc() {
		return imagesrc;
	}
	public void setImagesrc(String imagesrc) {
		this.imagesrc = imagesrc;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getIntroduce() {
		return Introduce;
	}
	public void setIntroduce(String introduce) {
		Introduce = introduce;
	}
	public String getPhoneNum() {
		return phoneNum;
	}
	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}
	
	public GoodsDetailInfo(String imagesrc, float price, String name, String introduce, String phoneNum,
			String location) {
		super();
		this.imagesrc = imagesrc;
		this.price = price;
		this.name = name;
		Introduce = introduce;
		this.phoneNum = phoneNum;
		this.location = location;
	}
	public GoodsDetailInfo() {
		super();
	}
	
	
}
