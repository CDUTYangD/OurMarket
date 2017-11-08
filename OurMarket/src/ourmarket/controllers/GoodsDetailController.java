package ourmarket.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.config.authentication.UserServiceBeanDefinitionParser;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import ourmarket.models.Comments;
import ourmarket.models.Goods;
import ourmarket.models.ImageLibrary;
import ourmarket.models.ImageList;
import ourmarket.models.User;
import ourmarket.pojos.ComentsInfo;
import ourmarket.pojos.GoodsDetailInfo;
import ourmarket.pojos.GoodsInfo;
import ourmarket.services.ICommentService;
import ourmarket.services.IGoodService;
import ourmarket.services.IImageLibraryService;
import ourmarket.services.IImageListService;
import ourmarket.services.IUserService;

@Controller
public class GoodsDetailController {
	
	@Autowired
	ICommentService commentService = null;
	@Autowired
	IUserService userService = null;
	@Autowired
	IGoodService goodService = null;
	@Autowired
	IImageListService imageListService = null;
	@Autowired
	IImageLibraryService imageLibraryService = null;
	@RequestMapping("goodsDetail")
	public String index(HttpServletRequest request,Model model,String Gid)
	{
		GoodsDetailInfo detailInfo = new GoodsDetailInfo();
		Goods good = goodService.findGoodByGid(Integer.valueOf(Gid));
		ImageList imageList = imageListService.findImageLists(good.getImageListId());
		ImageLibrary imageLibrary = imageLibraryService.findImageId(imageList.getImageListId());
		String goodImg = imageLibrary.getImageSrc();

		User sailer = userService.findUserById(good.getUid());
		// 卖家其他货物与评论创建
		List<ComentsInfo> goodComments = new ArrayList<ComentsInfo>();
		List<Comments> Comments = commentService.findCommmentsByGid(good.getGid());

		List<GoodsInfo> otherGoods = new ArrayList<GoodsInfo>();
		List<Goods> Goods = goodService.findGoodByUid(sailer.getUid());
		/**
		 * 单件物品信息创建
		 */
		detailInfo.setImagesrc(goodImg);
		detailInfo.setIntroduce(good.getGtitle());
		detailInfo.setName(good.getGname());
		detailInfo.setPhoneNum(sailer.getUphone());
		detailInfo.setPrice(good.getGprice());
		switch (good.getGlocation()) {
		case 1:
			detailInfo.setLocation("银杏");
			break;
		case 2:
			detailInfo.setLocation("珙桐");
			break;
		case 3:
			detailInfo.setLocation("芙蓉");
			break;
		case 4:
			detailInfo.setLocation("松林");
			break;
		case 5:
			detailInfo.setLocation("香樟");
			break;
		case 6:
			detailInfo.setLocation("北苑");
			break;

		default:
			detailInfo.setLocation("未找到圈子信息");
			break;
		}
		

		/**
		 * 评论信息的创建
		 */
		for (Comments Comment : Comments) {
			ComentsInfo comentsInfo = new ComentsInfo();
			comentsInfo.setCommentTime(Comment.getCommentTime());
			comentsInfo.setCommentString(Comment.getComments());
			comentsInfo.setCommenterNameString(userService.findUserById(Comment.getUid()).getUnickName());

			goodComments.add(comentsInfo);
		}

		/**
		 * 卖家其他货物信息的创建
		 */
		for (Goods Good : Goods) {
			if (Good.getGid() != Integer.valueOf(Gid)) {
				ImageList imageList1 = imageListService.findImageLists(Good.getImageListId());
				ImageLibrary imageLibrary1 = imageLibraryService.findImageId(imageList1.getImageListId());
				GoodsInfo goodsInfo = new GoodsInfo();
				goodsInfo.setImagesrc(imageLibrary1.getImageSrc());
				goodsInfo.setName(Good.getGname());
				goodsInfo.setPrice(Good.getGprice());
				goodsInfo.setGid(Good.getGid());

				System.out.println(goodsInfo.getName());

				otherGoods.add(goodsInfo);
			}
		}
		// 存储到model中与jsp页面完成交互
		model.addAttribute("GoodDetail", detailInfo);
		model.addAttribute("OhterGoods", otherGoods);
		model.addAttribute("goodComments", goodComments);

		return "goodsDetails";
	}

}
