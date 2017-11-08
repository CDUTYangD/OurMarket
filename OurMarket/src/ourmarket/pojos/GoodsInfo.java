package ourmarket.pojos;

public class GoodsInfo {

	String imagesrc;
	float price;
	String name;
	Integer number;
	Integer gLocaltion;
	Integer gMasterID;
	String  gMasterName;
	Integer gid;
	
	public GoodsInfo() {
		super();
	}
	public GoodsInfo(String imagesrc, float price, String name, Integer number, Integer gLocaltion, Integer gMasterID,
			String gMasterName, Integer gid) {
		super();
		this.imagesrc = imagesrc;
		this.price = price;
		this.name = name;
		this.number = number;
		this.gLocaltion = gLocaltion;
		this.gMasterID = gMasterID;
		this.gMasterName = gMasterName;
		this.gid = gid;
	}
	public Integer getGid() {
		return gid;
	}
	public void setGid(Integer gid) {
		this.gid = gid;
	}
	public Integer getgMasterID() {
		return gMasterID;
	}
	public void setgMasterID(Integer gMasterID) {
		this.gMasterID = gMasterID;
	}
	public String getgMasterName() {
		return gMasterName;
	}
	public void setgMasterName(String gMasterName) {
		this.gMasterName = gMasterName;
	}
	public Integer getgLocaltion() {
		return gLocaltion;
	}
	public void setgLocaltion(Integer gLocaltion) {
		this.gLocaltion = gLocaltion;
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
