package ourmarket.services;

import java.util.List;

import ourmarket.models.Collection;

/**
 * 
 * @author Admin_YangD
 * @date  2017��4��28��
 */
public interface ICollectionService {
	//��
	void createCollection(Collection conllection);
	//ɾ
	void deleteCollection(Collection conllection);
	//��
	List<Collection> findAllCollection();
}
