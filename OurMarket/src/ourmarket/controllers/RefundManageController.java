package ourmarket.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RefundManageController {
	@RequestMapping("refundManage")
	public String index(){
		return "refundManage";
	}
}
