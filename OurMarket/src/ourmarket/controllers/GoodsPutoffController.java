package ourmarket.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GoodsPutoffController {
	@RequestMapping("goodsPutoff")
	public String index(){
		return "goodsPutoff";
	}
}
