package ourmarket.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FootmarkController {
	@RequestMapping("footmark")
	public String index(){
		return "footmark";
	}
}
