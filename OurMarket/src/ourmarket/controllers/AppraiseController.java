package ourmarket.controllers;

import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import ourmarket.models.Comments;
import ourmarket.models.Orders;
import ourmarket.services.ICommentService;
import ourmarket.sys.SessionInfo;
import ourmarket.utils.SessionUtils;
@Controller

public class AppraiseController {
	
	@Autowired
	ICommentService commentService=null;
	
	@RequestMapping("Appraise")
	public String index(HttpServletRequest request,Model model){
		//获取当前用户会话信息
		SessionInfo sessionInfo=SessionUtils.getSessionInfo(request);
		if (sessionInfo==null||null==String.valueOf(sessionInfo.userID)) {
			//跳转到登录界面
		}else {
			//没有进行缓存      后面要进行缓存
			List<Comments> comments=commentService.findCommentsByUid(sessionInfo.userID);
			//用lambad表达式过滤已买商品
			/*List<Orders>bougutOrders=orders.stream()
					.filter(p->p.getOpayState().equals(1))
					.collect(Collectors.toList());*/
			model.addAttribute("comments",comments);
		}
		return "Appraise";
	}
}
