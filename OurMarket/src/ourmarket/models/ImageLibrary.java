package ourmarket.models;

/**
 * ImageLibrary entity. @author MyEclipse Persistence Tools
 */

public class ImageLibrary implements java.io.Serializable {

	// Fields

	private Long imageId;
	private Long imageListId;
	private String imageSrc;

	// Constructors

	/** default constructor */
	public ImageLibrary() {
	}

	/** minimal constructor */
	public ImageLibrary(String imageSrc) {
		this.imageSrc = imageSrc;
	}

	/** full constructor */
	public ImageLibrary(Long imageId, String imageSrc) {
		//this.imageListId = imageListId;
		this.imageId=imageId;
		this.imageSrc = imageSrc;
	}

	// Property accessors

	public Long getImageId() {
		return this.imageId;
	}

	public void setImageId(Long imageId) {
		this.imageId = imageId;
	}

	public Long getImageListId() {
		return this.imageListId;
	}

	public void setImageListId(Long imageListId) {
		this.imageListId = imageListId;
	}

	public String getImageSrc() {
		return this.imageSrc;
	}

	public void setImageSrc(String imageSrc) {
		this.imageSrc = imageSrc;
	}

}