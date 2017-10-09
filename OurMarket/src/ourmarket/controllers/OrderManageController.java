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
import ourmarket.services.IUserService;
import ourmarket.sys.SessionInfo;
import ourmarket.utils.SessionUtils;

@Controller
public class OrderManageController {

	@Autowired
	IOrderService orderService = null;
	@Autowired
	IUserService userService = null;
	@Autowired
	IGoodService goodService = null;
	@Autowired
	IImageLibraryService imageLibraryService = null;
	@Autowired
	IImageListService imageListService = null;

	@RequestMapping("orderManage")
	public String index(HttpServletRequest request, Model model) {

		SessionInfo sessionInfo=SessionUtils.getSessionInfo(request);
		
		if (sessionInfo==null||null==String.valueOf(sessionInfo.userID))
		{
			return "unload";
		}else{
			List<OrdersInfo> orderInfos = new ArrayList<OrdersInfo>();
			//从session中获取用户信息
			List<Orders> orders = orderService.findOrdersByUid(sessionInfo.userID);
			//List<Orders> orders = orderService.findOrdersByUid(1);
			for (Orders order : orders) {
				if(order.getOsendState()==0)
				{
					OrdersInfo orderInfo = new OrdersInfo();
					Goods good = goodService.findGoodByGid(order.getGid());
					User buyUser = userService.findUserById(order.getUid());
					//User buyUser = userService.findUserById(1);
					ImageList imageList = imageListService.findImageLists(good.getImageListId());
					ImageLibrary imageLibrary = imageLibraryService.findImageList(imageList.getImageListId());

					
					orderInfo.setOid(order.getOid());
					orderInfo.setUname(buyUser.getUnickName());
					orderInfo.setUphone(buyUser.getUphone());
					orderInfo.setUqq(buyUser.getUemial());
					orderInfo.setGname(good.getGname());
					orderInfo.setGprice(good.getGprice());
					orderInfo.setGnum(order.getOnum());
					orderInfo.setGallprice(good.getGprice(),order.getOnum());
					orderInfo.setOno(order.getOno());
					orderInfo.setOtime(order.getOtime());
					orderInfo.setGimg(imageLibrary.getImageSrc());

					orderInfos.add(orderInfo);
				}				
			}
			model.addAttribute("orderInfos", orderInfos);			
		}		
		return "orderManage";
	}
	@RequestMapping("sendgoods")
	public String sendgoods(HttpServletRequest request, Model model, String oID)
	{
		Orders order = orderService.findOrderById(Integer.valueOf(oID));
		order.setOsendState((short) 1);
		orderService.updateOrder(order);
		return "redirect:/orderManage";
	}
}
