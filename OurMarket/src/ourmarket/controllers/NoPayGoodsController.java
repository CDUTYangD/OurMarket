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
import ourmarket.models.Orders;
import ourmarket.models.User;
import ourmarket.pojos.OrdersInfo;
import ourmarket.services.IGoodService;
import ourmarket.services.IImageLibraryService;
import ourmarket.services.IImageListService;
import ourmarket.services.IOrderService;
import ourmarket.sys.SessionInfo;
import ourmarket.utils.SessionUtils;

@Controller
public class NoPayGoodsController {
	@Autowired
	IOrderService orderService = null;
	@Autowired
	IGoodService goodService = null;
	@Autowired
	IImageLibraryService imageLibraryService = null;
	@Autowired
	IImageListService imageListService = null;
	
	@RequestMapping("uncollected")
	public String index(HttpServletRequest request, Model model){
SessionInfo sessionInfo=SessionUtils.getSessionInfo(request);
		
		if (sessionInfo==null||null==String.valueOf(sessionInfo.userID))
		{
			return "unload";
		}else{
			List<OrdersInfo> uncollectedInfos = new ArrayList<OrdersInfo>();
			//从session中获取用户信息
			List<Orders> orders = orderService.findOrdersByUid(sessionInfo.userID);
			//List<Orders> orders = orderService.findOrdersByUid(1);
			for (Orders order : orders) {
				if(order.getOpayState()==0)
				{
					OrdersInfo uncollectedInfo = new OrdersInfo();
					Goods good = goodService.findGoodByGid(order.getGid());
					//User buyUser = userService.findUserById(1);
					ImageList imageList = imageListService.findImageLists(good.getImageListId());
					ImageLibrary imageLibrary = imageLibraryService.findImageId(imageList.getImageListId());					
					uncollectedInfo.setOid(order.getOid());
					uncollectedInfo.setGname(good.getGname());
					uncollectedInfo.setGprice(good.getGprice());
					uncollectedInfo.setGnum(order.getOnum());
					uncollectedInfo.setGallprice(good.getGprice(),order.getOnum());
					uncollectedInfo.setOno(order.getOno());
					uncollectedInfo.setOtime(order.getOtime());
					uncollectedInfo.setGimg(imageLibrary.getImageSrc());

					uncollectedInfos.add(uncollectedInfo);
				}				
			}
			model.addAttribute("uncollectedInfos", uncollectedInfos);	
		}
		return "uncollected";
	}
	@RequestMapping("collected")
	public String sendgoods(HttpServletRequest request, Model model, String oID)
	{
		Orders order = orderService.findOrderById(Integer.valueOf(oID));
		order.setOpayState((short) 1);
		orderService.updateOrder(order);
		return "redirect:/uncollected";
	}
}
