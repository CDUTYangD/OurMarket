package ourmarket.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NoPayGoodsController {
	@RequestMapping("uncollected")
	public String index(){
		return "uncollected";
	}
}
