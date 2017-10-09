package ourmarket.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import ourmarket.models.Orders;
import ourmarket.services.IOrderService;
import ourmarket.sys.SessionInfo;
import ourmarket.utils.SessionUtils;

@Controller
public class BoughtController {
	@Autowired
	IOrderService OrderService=null;
	
	@RequestMapping("bought")
	public String index(HttpServletRequest request,Model model ){
		//得到当前用户会话信息
		SessionInfo sessionInfo=SessionUtils.getSessionInfo(request);
		if (sessionInfo==null||null==String.valueOf(sessionInfo.userID)) {
			//跳转到登录界面
		}else {
			//没有进行缓存
			List<Orders> orders=OrderService.findOrdersByUid(sessionInfo.userID);
//			//用lambda表达式过滤已买商品
//			List<Orders>bougutOrders=orders.stream()
//					.filter(p->p.getOpayState().equals(1))
//					.collect(Collectors.toList());
//			model.addAttribute("bougutOrders",bougutOrders);
		}
		return "bought";
	}
}
