package ourmarket.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import ourmarket.models.User;
import ourmarket.services.IUserService;

@Controller
public class SignUpController {
	@Autowired
	IUserService userService = null;
	@RequestMapping("signUp")
	public String index(){		
		
		
		
		return "signUp";
	}
}
