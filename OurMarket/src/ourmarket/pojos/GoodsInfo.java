package ourmarket.pojos;

public class GoodsInfo {

	String imagesrc;
	float price;
	String name;
	Integer number;
	
	
	public GoodsInfo() {
		super();
	}
	public GoodsInfo(String imagesrc, float price, String name, Integer number) {
		super();
		this.imagesrc = imagesrc;
		this.price = price;
		this.name = name;
		this.number = number;
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
	public Integer getNumber() {
		return number;
	}
	public void setNumber(Integer number) {
		this.number = number;
	}
	
}
