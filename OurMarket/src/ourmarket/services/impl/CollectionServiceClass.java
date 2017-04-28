package ourmarket.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ourmarket.daos.CollectionDAO;
import ourmarket.models.Collection;
import ourmarket.services.ICollectionService;
/**
 * 
 * @author Admin_YangD
 * @date  2017年4月28日
 * 收藏服务类
 */
@Service
public class CollectionServiceClass implements ICollectionService {

	@Autowired CollectionDAO collectionDAO;
	
	@Override
	public void createCollection(Collection conllection) {
		// TODO Auto-generated method stub
		collectionDAO.save(conllection);
	}

	@Override
	public void deleteCollection(Collection conllection) {
		// TODO Auto-generated method stub
		collectionDAO.delete(conllection);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Collection> findAllCollection() {
		// TODO Auto-generated method stub
		return collectionDAO.findAll();
	}

}
