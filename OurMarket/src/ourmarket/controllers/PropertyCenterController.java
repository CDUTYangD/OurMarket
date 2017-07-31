package ourmarket.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PropertyCenterController {
	@RequestMapping("propertyCenter")
	public String index(){
		return "propertyCenter";
	}
}
