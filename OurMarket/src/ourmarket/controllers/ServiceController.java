package ourmarket.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ServiceController {
	@RequestMapping("service")
	public String index(){
		return "service";
	}
}
