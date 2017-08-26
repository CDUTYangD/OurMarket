package ourmarket.services;

import ourmarket.models.ImageLibrary;

public interface IImageLibraryService {
	void addImageLibrary(ImageLibrary imageList);
	void deleteImageLibrary(ImageLibrary imageList);
	ImageLibrary findImageList(long imageListId);
}
