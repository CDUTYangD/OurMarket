package ourmarket.services;

import java.util.List;

import ourmarket.models.Goods;

/**
 * 
 * @author Admin_YangD
 * @date  2017年4月28日
 */
public interface IGoodService {
	//增
	void createGood(Goods good);
	//删
	void deleteGood(Goods good);
	//改
	void updateGood(Goods good);
	//查
	List<Goods> findAllGoods();
	Goods findGoodByGid(int gid);
}
