package ourmarket.controllers;

import java.util.List;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import ourmarket.models.Orders;
import ourmarket.models.User;
import ourmarket.pojos.ChangePasswordInfo;
import ourmarket.services.IUserService;
import ourmarket.sys.SessionInfo;
import ourmarket.utils.SessionUtils;

@Controller
public class Changepassword {
	
	@Autowired
	IUserService userService = null;
	
	
	@RequestMapping("changepassword")
	public String index(HttpServletRequest request,Model model,String oldPassword,String newPassword,String uID){
		
		
		Integer master=1;//从登陆状态得到uid
		 User user=new User();
	     user=userService.findUserById(master);
//		SessionInfo sessionInfo=SessionUtils.getSessionInfo(request);
//		if (sessionInfo==null||null==String.valueOf(sessionInfo.userID)) {
//			//跳转到登录界面
//		}else {
		try {
			
		    if(!(user.getUpassword().equals(oldPassword))&&(oldPassword!=null)&&(oldPassword!="")){
		    	ChangePasswordInfo changePasswordInfo=new ChangePasswordInfo();
		    	changePasswordInfo.setWrongString("旧密码输入错误，请重新输入！");
		    	changePasswordInfo.setImgSrc("img/wrong.png");
		    	model.addAttribute("changePasswordInfo",changePasswordInfo);
		    	return "changepassword";
		      }
		   
		  
		} catch (Exception e) {
			// TODO: handle exception
		}
			
		try {
			  if ((user.getUpassword().equals(oldPassword))) {
		    	    User oldUser=new User();
				   User newUser=new User();
				   oldUser=userService.findUserById(master);
				   newUser=oldUser;
				   newUser.setUpassword(newPassword);
				   userService.deleteUser(oldUser);
			     	userService.addUser(newUser);
				    return "home";
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return "changepassword";
	}
}
