package ourmarket.services;

import java.util.List;

import ourmarket.models.ImageLibrary;

public interface IImageLibraryService {
	void addImageLibrary(ImageLibrary imageList);
	void deleteImageLibrary(ImageLibrary imageList);
	ImageLibrary findImageId(Long imageId);
}
