package ourmarket.controllers;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import ourmarket.models.Comments;
import ourmarket.models.Goods;
import ourmarket.models.ImageLibrary;
import ourmarket.models.ImageList;
import ourmarket.models.Orders;
import ourmarket.pojos.ComentsInfo;
import ourmarket.services.ICommentService;
import ourmarket.services.IGoodService;
import ourmarket.services.IImageLibraryService;
import ourmarket.services.IImageListService;
import ourmarket.services.IOrderService;
import ourmarket.services.impl.OrderServiceClass;
import ourmarket.sys.SessionInfo;
import ourmarket.utils.SessionUtils;
@Controller

public class AppraiseController {
	
	@Autowired
	ICommentService commentService=null;
	@Autowired
	IOrderService orderService=null;
	@Autowired
	IGoodService goodService=null;
	@Autowired
	IImageListService imageListService=null;
	@Autowired
	IImageLibraryService imageLibraryService=null;
	@RequestMapping("Appraise")
	public String index(HttpServletRequest request,Model model){
		//获取当前用户会话信息
		//SessionInfo sessionInfo=SessionUtils.getSessionInfo(request);
		List<ComentsInfo> comInfos=new ArrayList<ComentsInfo>();
		/*if (sessionInfo==null||null==String.valueOf(sessionInfo.userID)) {
			//跳转到登录界面
		}else {*/
			//没有进行缓存      后面要进行缓存
			//List<Comments> comments=commentService.findCommentsByUid(sessionInfo.userID);
			List<Comments> comments=commentService.findCommentsByUid(1);
			//获取订单、商品信息
			for (Comments comment:comments) {
				ComentsInfo comentsInfo=new ComentsInfo(); 
				Orders orders=orderService.findOrderById(comment.getOid());
				Goods good=goodService.findGoodByGid(orders.getGid());
				ImageList imageList=imageListService.findImageLists(good.getImageListId());
				ImageLibrary imageLibrary=imageLibraryService.findImageId(imageList.getImageListId());
				
				comentsInfo.setCommentState(comment.getCommentState());
				comentsInfo.setCommentTime(comment.getCommentTime());
				comentsInfo.setGoodImg(imageLibrary.getImageSrc());
				comentsInfo.setGoodNum(orders.getOnum());
				comentsInfo.setGoodName(good.getGname());
				comentsInfo.setGoodPrice(orders.getOmoney());
				comInfos.add(comentsInfo);
			}
			//用lambad表达式过滤已买商品
			/*List<Orders>bougutOrders=orders.stream()
					.filter(p->p.getOpayState().equals(1))
					.collect(Collectors.toList());*/
			model.addAttribute("comInfos",comInfos);
		//}
		return "Appraise";
	}
}
