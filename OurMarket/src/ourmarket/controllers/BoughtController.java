package ourmarket.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BoughtController {
	@RequestMapping("bought")
	public String index(){
		return "bought";
	}
}
