package ourmarket.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import ourmarket.models.Goods;
import ourmarket.models.Orders;
import ourmarket.models.User;
import ourmarket.pojos.PropertyInfo;
import ourmarket.services.IGoodService;
import ourmarket.services.IOrderService;
import ourmarket.services.IUserService;
import ourmarket.sys.SessionInfo;
import ourmarket.utils.SessionUtils;

@Controller
public class PropertyCenterController {
	@Autowired
	IUserService userService = null;
	@Autowired
	IOrderService orderService = null;
	@Autowired
	IGoodService goodService = null;
	
	@RequestMapping("propertyCenter")
	public String index(HttpServletRequest request, Model model){
		
		SessionInfo sessionInfo=SessionUtils.getSessionInfo(request);
		
		if (sessionInfo==null||null==String.valueOf(sessionInfo.userID))
		{
			return "unload";
		}else{
			List<Orders> orders = orderService.findOrdersByUid(sessionInfo.userID);
			List<PropertyInfo> propertyInfos = new ArrayList<PropertyInfo>();			
			for(Orders order:orders)
			{
				PropertyInfo propertyInfo = new PropertyInfo();
				Goods good = goodService.findGoodByGid(order.getGid());
				propertyInfo.setGname(good.getGname());
				propertyInfo.setOmoney(order.getOmoney());
				propertyInfo.setOno(order.getOno());
				propertyInfo.setOtime(order.getOtime());
				if(order.getOpayState()==1 && order.getOsendState()==1)
				{
					propertyInfo.setOstate("交易成功");
				}else{
					propertyInfo.setOstate("交易未完成");
				}
				propertyInfos.add(propertyInfo);
			}
			model.addAttribute("propertyInfos", propertyInfos);
		}		
		return "propertyCenter";
	}
}
