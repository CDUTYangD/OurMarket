package ourmarket.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.mapping.Array;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import ourmarket.models.Goods;
import ourmarket.models.ImageLibrary;
import ourmarket.models.ImageList;
import ourmarket.pojos.GoodsInfo;
import ourmarket.services.IGoodService;
import ourmarket.services.IImageLibraryService;
import ourmarket.services.IImageListService;
import ourmarket.sys.SessionInfo;
import ourmarket.utils.SessionUtils;

@Controller
public class ShelvedGoodsController {
	@Autowired
	IGoodService goodservice = null;
	@Autowired
	IImageLibraryService imageLibraryService = null;
	@Autowired
	IImageListService imageListService = null;

	@RequestMapping("shelved")
	public String index(HttpServletRequest request, Model model) {
		SessionInfo sessionInfo = SessionUtils.getSessionInfo(request);

		if (sessionInfo == null || null == String.valueOf(sessionInfo.userID)) {
			return "unload";
		} else {
			List<GoodsInfo> goodInfos = new ArrayList<GoodsInfo>();
			List<Goods> goods = goodservice.findGoodByUid(sessionInfo.userID);// 从数据库取出货物信息存在列表
			for (Goods good : goods)// 创建Goods类的good对象 从goods获取
			{
				GoodsInfo goodinfo = new GoodsInfo();

				// if(good.getImageListId() == null)
				// {
				// ImageList imageList =
				// imageListService.findImageLists((long)1);
				// }else{
				ImageList imageList = imageListService.findImageLists(good.getImageListId());
				// }
				ImageLibrary imageLibrary = imageLibraryService.findImageId(imageList.getImageListId());

				goodinfo.setImagesrc(imageLibrary.getImageSrc());
				goodinfo.setName(good.getGname());
				goodinfo.setNumber(good.getGnum());
				goodinfo.setPrice(good.getGprice());
				goodInfos.add(goodinfo);
			}
			model.addAttribute("goodInfos", goodInfos);
			return "shelvedGoods";
		}
	}

}
