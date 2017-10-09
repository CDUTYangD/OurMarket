package ourmarket.services.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ourmarket.daos.ImageLibraryDAO;
import ourmarket.models.ImageLibrary;
import ourmarket.services.IImageLibraryService;
@Service
public class ImageLibraryServiceClass  implements IImageLibraryService{
	@Autowired
	ImageLibraryDAO imageLibraryDAO=null;
	
	@Override
	public void addImageLibrary(ImageLibrary imageList) {
		// TODO Auto-generated method stub
		imageLibraryDAO.save(imageList);
	}

	@Override
	public void deleteImageLibrary(ImageLibrary imageList) {
		// TODO Auto-generated method stub
		imageLibraryDAO.delete(imageList);
	}
	@Override
	public ImageLibrary findImageList(long imageListId) {
		// TODO Auto-generated method stub
		return imageLibraryDAO.findById(imageListId);
	}

	

}
