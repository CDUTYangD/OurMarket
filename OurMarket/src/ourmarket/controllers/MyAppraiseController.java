package ourmarket.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class MyAppraiseController {
	@RequestMapping("myAppraise")
	public String index(){
		return "myAppraise";
	}
}
