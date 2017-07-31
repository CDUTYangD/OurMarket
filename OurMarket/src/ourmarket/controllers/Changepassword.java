package ourmarket.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Changepassword {
	@RequestMapping("changepassword")
	public String index(){
		return "changepassword";
	}
}
