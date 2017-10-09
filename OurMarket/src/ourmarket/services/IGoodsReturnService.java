package ourmarket.services;

import java.util.List;

import ourmarket.models.GoodsReturn;

public interface IGoodsReturnService {
	// 增
	void createReturn(GoodsReturn goodsreturn);

	// 删
	void deleteReturn(GoodsReturn goodsreturn);

	// 改
	void updateReturn(GoodsReturn goodsreturn);
	
	// 查
	List<GoodsReturn> findAllGoodsReturn();
	List<GoodsReturn> findReturnByUid(Integer uid);
	GoodsReturn findReturnByRid(Integer rid);
}
