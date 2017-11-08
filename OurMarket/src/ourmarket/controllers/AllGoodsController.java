package ourmarket.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

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
import ourmarket.services.impl.GoodServiceClass;
import ourmarket.services.impl.ImageListServiceClass;

@Controller

public class AllGoodsController {
	@Autowired
	IGoodService goodService = null;
	@Autowired
	IImageListService imageListService = null;
	@Autowired
	IImageLibraryService imageLibraryService = null;

	@RequestMapping("AllGoods")
	public String index(HttpServletRequest request, Model model) {
		/**
		 * 圈子商品信息获得，这里直接查找，如果在用户登录或者服务器开启的时候取出来存在了session中可以从session中获取
		 */
		Integer is3;
		short sl = 4;
		short fr = 3;
		short gt = 2;
		short yx = 1;
		short xz = 5;
		short by = 6;
		//松林
		is3 = 0;
		List<GoodsInfo> slCircleGoodsInfo = new ArrayList<GoodsInfo>();
		List<GoodsInfo> slCircleGoodsInfos = new ArrayList<GoodsInfo>();
		List<Goods> slCircleGoods = goodService.findGoodsByLocation(sl);
		for(Goods good:slCircleGoods)
		{
			GoodsInfo goodsInfo = new GoodsInfo();
			ImageList imageList=imageListService.findImageLists(good.getImageListId());
			ImageLibrary imageLibrary=imageLibraryService.findImageId(imageList.getImageListId());
			goodsInfo.setGid(good.getGid());
			goodsInfo.setImagesrc(imageLibrary.getImageSrc());
			goodsInfo.setName(good.getGname());		
			if(is3 <= 2)
			{
				slCircleGoodsInfo.add(goodsInfo);
				is3++;
			}
			slCircleGoodsInfos.add(goodsInfo);
		}
		//芙蓉
		is3 = 0;
		List<GoodsInfo> frCircleGoodsInfo = new ArrayList<GoodsInfo>();
		List<GoodsInfo> frCircleGoodsInfos = new ArrayList<GoodsInfo>();
		List<Goods> frCircleGoods = goodService.findGoodsByLocation(fr);
		for(Goods good:frCircleGoods)
		{
			GoodsInfo goodsInfo = new GoodsInfo();
			ImageList imageList=imageListService.findImageLists(good.getImageListId());
			ImageLibrary imageLibrary=imageLibraryService.findImageId(imageList.getImageListId());
			goodsInfo.setGid(good.getGid());
			goodsInfo.setImagesrc(imageLibrary.getImageSrc());
			goodsInfo.setName(good.getGname());		
			if(is3 <= 2)
			{
				frCircleGoodsInfo.add(goodsInfo);
				is3++;
			}
			frCircleGoodsInfos.add(goodsInfo);
		}
		//珙桐
		is3 = 0;
		List<GoodsInfo> gtCircleGoodsInfo = new ArrayList<GoodsInfo>();
		List<GoodsInfo> gtCircleGoodsInfos = new ArrayList<GoodsInfo>();
		List<Goods> gtCircleGoods = goodService.findGoodsByLocation(gt);
		for(Goods good:gtCircleGoods)
		{
			GoodsInfo goodsInfo = new GoodsInfo();
			ImageList imageList=imageListService.findImageLists(good.getImageListId());
			ImageLibrary imageLibrary=imageLibraryService.findImageId(imageList.getImageListId());
			goodsInfo.setGid(good.getGid());
			goodsInfo.setImagesrc(imageLibrary.getImageSrc());
			goodsInfo.setName(good.getGname());		
			if(is3 <= 2)
			{
				gtCircleGoodsInfo.add(goodsInfo);
				is3++;
			}
			gtCircleGoodsInfos.add(goodsInfo);
		}
		//银杏
		is3 = 0;
		List<GoodsInfo> yxCircleGoodsInfo = new ArrayList<GoodsInfo>();
		List<GoodsInfo> yxCircleGoodsInfos = new ArrayList<GoodsInfo>();
		List<Goods> yxCircleGoods = goodService.findGoodsByLocation(yx);
		for(Goods good:yxCircleGoods)
		{
			GoodsInfo goodsInfo = new GoodsInfo();
			ImageList imageList=imageListService.findImageLists(good.getImageListId());
			ImageLibrary imageLibrary=imageLibraryService.findImageId(imageList.getImageListId());
			goodsInfo.setGid(good.getGid());
			goodsInfo.setImagesrc(imageLibrary.getImageSrc());
			goodsInfo.setName(good.getGname());		
			if(is3 <= 2)
			{
				yxCircleGoodsInfo.add(goodsInfo);
				is3++;
			}
			yxCircleGoodsInfos.add(goodsInfo);
		}
		//香樟
		is3 = 0;
		List<GoodsInfo> xzCircleGoodsInfo = new ArrayList<GoodsInfo>();
		List<GoodsInfo> xzCircleGoodsInfos = new ArrayList<GoodsInfo>();
		List<Goods> xzCircleGoods = goodService.findGoodsByLocation(xz);
		for(Goods good:xzCircleGoods)
		{
			GoodsInfo goodsInfo = new GoodsInfo();
			ImageList imageList=imageListService.findImageLists(good.getImageListId());
			ImageLibrary imageLibrary=imageLibraryService.findImageId(imageList.getImageListId());
			goodsInfo.setGid(good.getGid());
			goodsInfo.setImagesrc(imageLibrary.getImageSrc());
			goodsInfo.setName(good.getGname());		
			if(is3 <= 2)
			{
				xzCircleGoodsInfo.add(goodsInfo);
				is3++;
			}
			xzCircleGoodsInfos.add(goodsInfo);
		}
		//北苑
		is3 = 0;
		List<GoodsInfo> byCircleGoodsInfo = new ArrayList<GoodsInfo>();
		List<GoodsInfo> byCircleGoodsInfos = new ArrayList<GoodsInfo>();
		List<Goods> byCircleGoods = goodService.findGoodsByLocation(by);
		for(Goods good:byCircleGoods)
		{
			GoodsInfo goodsInfo = new GoodsInfo();
			ImageList imageList=imageListService.findImageLists(good.getImageListId());
			ImageLibrary imageLibrary=imageLibraryService.findImageId(imageList.getImageListId());
			goodsInfo.setGid(good.getGid());
			goodsInfo.setImagesrc(imageLibrary.getImageSrc());
			goodsInfo.setName(good.getGname());	
			if(is3 <= 2)
			{
				byCircleGoodsInfo.add(goodsInfo);
				is3++;
			}
			byCircleGoodsInfos.add(goodsInfo);
		}
		
		model.addAttribute("slCircleGoodsInfo", slCircleGoodsInfo);
		model.addAttribute("slCircleGoodsInfos", slCircleGoodsInfos);
		model.addAttribute("frCircleGoodsInfo", frCircleGoodsInfo);
		model.addAttribute("frCircleGoodsInfos", frCircleGoodsInfos);
		model.addAttribute("gtCircleGoodsInfo", gtCircleGoodsInfo);
		model.addAttribute("gtCircleGoodsInfos", gtCircleGoodsInfos);
		model.addAttribute("yxCircleGoodsInfo", yxCircleGoodsInfo);
		model.addAttribute("yxCircleGoodsInfos", yxCircleGoodsInfos);
		model.addAttribute("xzCircleGoodsInfo", xzCircleGoodsInfo);
		model.addAttribute("xzCircleGoodsInfos", xzCircleGoodsInfos);
		model.addAttribute("byCircleGoodsInfo", byCircleGoodsInfo);
		model.addAttribute("byCircleGoodsInfos", byCircleGoodsInfos);
		
		return "AllGoods";
	}
}
