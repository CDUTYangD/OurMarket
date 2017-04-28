package ourmarket.services;

import java.util.List;

import ourmarket.models.Goods;

/**
 * 
 * @author Admin_YangD
 * @date  2017��4��28��
 */
public interface IGoodService {
	//��
	void createGood(Goods good);
	//ɾ
	void deleteGood(Goods good);
	//��
	void updateGood(Goods good);
	//��
	List<Goods> findAllGoods();
}
