package ourmarket.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import ourmarket.daos.GoodsDAO;
import ourmarket.models.Goods;
import ourmarket.services.IGoodService;
/**
 * 
 * @author Admin_YangD
 * @date  2017年4月28日
 * 商品服务类
 */
@Service
public class GoodServiceClass implements IGoodService{

	@Autowired GoodsDAO goodsDAO;
	
	@Override
	public void createGood(Goods good) {
		// TODO Auto-generated method stub
		goodsDAO.save(good);
	}

	@Override
	public void deleteGood(Goods good) {
		// TODO Auto-generated method stub
		goodsDAO.delete(good);
	}

	@Override
	public void updateGood(Goods good) {
		// TODO Auto-generated method stub
		goodsDAO.update(good);
	}
	//启动缓存
	@Cacheable(value="cacheTest")
	@SuppressWarnings("unchecked")
	@Override
	public List<Goods> findAllGoods() {
		// TODO Auto-generated method stub
		return goodsDAO.findAll();
	}

}
