package ourmarket.services;

import java.util.List;

import ourmarket.models.Collection;

/**
 * 
 * @author Admin_YangD
 * @date  2017年4月28日
 */
public interface ICollectionService {
	//增
	void createCollection(Collection conllection);
	//删
	void deleteCollection(Collection conllection);
	//查
	List<Collection> findAllCollection();
}
