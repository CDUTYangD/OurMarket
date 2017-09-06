package ourmarket.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import ourmarket.models.User;
import ourmarket.services.IUserService;

@Controller
public class SignUpController {
	@Autowired
	IUserService userService = null;

	@RequestMapping("signUp")
	public String index(HttpServletRequest request,Model model,String phone,String password){		
		
		Integer i=1;
		//boolean isOk = true;
		List<User> users = userService.findAllUsers();
		
		for(User user:users)
		{
			if(user.getUphone().equals(phone))
			{
				return "signUpDefault";
			}			
		}
		User nuser = new User("用户"+users.size(),phone,password);
		userService.addUser(nuser);
		return "signUpSuccess";
	}
}
