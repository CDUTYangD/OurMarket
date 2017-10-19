package ourmarket.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import ourmarket.models.Goods;
import ourmarket.models.GoodsReturn;
import ourmarket.models.ImageLibrary;
import ourmarket.models.ImageList;
import ourmarket.models.Orders;
import ourmarket.pojos.ReturnInfo;
import ourmarket.services.IGoodService;
import ourmarket.services.IGoodsReturnService;
import ourmarket.services.IImageLibraryService;
import ourmarket.services.IImageListService;
import ourmarket.services.IOrderService;
import ourmarket.services.impl.GoodServiceClass;
import ourmarket.sys.SessionInfo;
import ourmarket.utils.SessionUtils;

@Controller
public class RefundManageController {
	@Autowired
	IGoodsReturnService returnService = null;
	@Autowired
	IGoodService goodService = null;
	@Autowired
	IOrderService orderService = null;
	@Autowired
	IImageLibraryService imageLibraryService = null;
	@Autowired
	IImageListService imageListService = null;

	@RequestMapping("refundManage")
	public String index(HttpServletRequest request, Model model){
	
		SessionInfo sessionInfo=SessionUtils.getSessionInfo(request);
		
		if (sessionInfo==null||null==String.valueOf(sessionInfo.getUserID()))
		{
			return "unload";
		}else{
			List<GoodsReturn> returnGoods = returnService.findReturnByUid(sessionInfo.userID);
			List<ReturnInfo> returnInfos = new ArrayList<ReturnInfo>();
			for(GoodsReturn returnGood:returnGoods)
			{
				if(returnGood.getRstate()==0)
				{
					ReturnInfo returnInfo = new ReturnInfo();
					Orders order = orderService.findOrderById(returnGood.getOid());
					Goods good = goodService.findGoodByGid(order.getGid());
					ImageList imageList = imageListService.findImageLists(good.getImageListId());
					ImageLibrary imageLibrary = imageLibraryService.findImageId(imageList.getImageListId());
					
					returnInfo.setRid(returnGood.getRid());
					returnInfo.setGname(good.getGname());
					returnInfo.setRgmoney(order.getOmoney());
					returnInfo.setRgnum(order.getOnum());
					returnInfo.setRgprice(good.getGprice());
					returnInfo.setrReason(returnGood.getRreason());
					returnInfo.setRtime(returnGood.getRtime());
					returnInfo.setImage(imageLibrary.getImageSrc());
					returnInfos.add(returnInfo);
				}
			}
			model.addAttribute("returnInfos",returnInfos);
		}
		
		return "refundManage";
	}
	@RequestMapping("return")
	public String returngood(HttpServletRequest request, Model model, String rid){
		
		GoodsReturn returnGood = returnService.findReturnByRid(Integer.valueOf(rid));
		returnGood.setRstate((short) 1);
		returnService.updateReturn(returnGood);		
		
		return"redirect:/refundManage";
	}
}
