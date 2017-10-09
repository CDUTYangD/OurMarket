package ourmarket.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ourmarket.daos.GoodsReturnDAO;
import ourmarket.models.GoodsReturn;
import ourmarket.services.IGoodsReturnService;
@Service
public class GoodsReturnServiceClass implements IGoodsReturnService{

	@Autowired
	GoodsReturnDAO returnDAO;
	@Override
	public void createReturn(GoodsReturn goodsreturn) {
		// TODO Auto-generated method stub
		returnDAO.save(goodsreturn);
	}

	@Override
	public void deleteReturn(GoodsReturn goodsreturn) {
		// TODO Auto-generated method stub
		returnDAO.delete(goodsreturn);
	}

	@Override
	public void updateReturn(GoodsReturn goodsreturn) {
		// TODO Auto-generated method stub
		returnDAO.update(goodsreturn);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<GoodsReturn> findAllGoodsReturn() {
		// TODO Auto-generated method stub
		return returnDAO.findAll();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<GoodsReturn> findReturnByUid(Integer uid) {
		// TODO Auto-generated method stub
		return returnDAO.findByUid(uid);
	}

	@Override
	public GoodsReturn findReturnByRid(Integer rid) {
		// TODO Auto-generated method stub
		return returnDAO.findById(rid);
	}

}
