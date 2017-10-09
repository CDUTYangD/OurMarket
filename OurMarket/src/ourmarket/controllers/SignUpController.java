package ourmarket.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import ourmarket.models.User;
import ourmarket.services.IUserService;
import ourmarket.sys.SessionInfo;

@Controller
public class SignUpController {
	@Autowired
	IUserService userService = null;

	@RequestMapping("signUp")
	public String index(HttpServletRequest request,Model model,String phone,String password){		
		
		//Integer i=1;
		//boolean isOk = true;
		SessionInfo sessionInfo = new SessionInfo();
		List<User> users = userService.findAllUsers();
		
		for(User user:users)
		{
			if(user.getUphone().equals(phone))
			{
				return "signUpDefault";
			}			
		}
		//存储用户至数据库中
		User nuser = new User("用户"+users.size(),phone,password);
		nuser.setImageListId((long)1);
		nuser.setRid(1);
		userService.addUser(nuser);
		
		//存储用户的登陆信息
		sessionInfo.setHeadImageID(nuser.getImageListId());
		sessionInfo.setPhone(nuser.getUphone());
		sessionInfo.setRoleID(nuser.getRid());
		sessionInfo.setUserID(userService.getIdByNickName(nuser.getUnickName()));
		sessionInfo.setUserName(nuser.getUnickName());
		request.getSession().setAttribute("sessionInfo",sessionInfo);
		
		return "personalZoom";
	}
}
