package ourmarket.services;

import ourmarket.models.ImageList;

public interface IImageListService {
	//增
	void addImageList(Long ImageListId);
	//删
	void deleteImageList(Long ImageListId);
	//查
	ImageList findImageLists(Long ImageListId);
}
