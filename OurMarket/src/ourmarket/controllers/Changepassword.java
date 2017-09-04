package ourmarket.controllers;

import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import ourmarket.models.Orders;
import ourmarket.models.User;
import ourmarket.services.IUserService;
import ourmarket.sys.SessionInfo;
import ourmarket.utils.SessionUtils;

@Controller
public class Changepassword {
	
	@Autowired
	IUserService userService = null;
	@RequestMapping("changepassword")
	public String index(HttpServletRequest request,Model model){
		SessionInfo sessionInfo=SessionUtils.getSessionInfo(request);
		if (sessionInfo==null||null==String.valueOf(sessionInfo.userID)) {
			//跳转到登录界面
		}else {
			
			
		}
		
		return "changepassword";
	}
}
