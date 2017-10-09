/**
 * 
 */
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

/**
 * 
 * Title:HomeController Description:
 * 
 * @author SGang
 * @date 2017年4月29日下午4:32:24
 */
@Controller
public class HomeController {
	@Autowired
	IUserService userService = null;
	@RequestMapping("log")
	public String index(HttpServletRequest request,Model model,String phone,String password) {
		
		List<User> users = userService.findAllUsers();
		for(User user:users)
		{
			if(user.getUphone().equals(phone) || user.getUnickName().equals(phone))
			{
				if(user.getUpassword().equals(password))
				{
					SessionInfo sessionInfo = new SessionInfo();
					sessionInfo.setHeadImageID(user.getImageListId());
					sessionInfo.setPhone(user.getUphone());
					sessionInfo.setRoleID(user.getRid());
					sessionInfo.setUserID(user.getUid());
					sessionInfo.setUserName(user.getUnickName());
					//sessionInfo.setLastDate(user.getLastDate());
					request.getSession().setAttribute("sessionInfo", sessionInfo);
					return "redirect:/propertyCenter";
				}
			}
		}		
		return "redirect:/home.jsp";
	}
}
