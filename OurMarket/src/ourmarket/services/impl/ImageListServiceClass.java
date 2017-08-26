package ourmarket.services.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ourmarket.daos.ImageListDAO;
import ourmarket.models.ImageList;
import ourmarket.services.IImageListService;
@Service
public class ImageListServiceClass implements IImageListService{
	@Autowired
	ImageListDAO imagelistDao=null;
	@Override
	public void addImageList(Long ImageListId) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteImageList(Long ImageListId) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public ImageList findImageLists(Long ImageListId) {
		// TODO Auto-generated method stub
		return imagelistDao.findById(ImageListId);
	}

}
