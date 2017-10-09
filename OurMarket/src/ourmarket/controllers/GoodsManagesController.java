package ourmarket.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import ourmarket.sys.SessionInfo;
import ourmarket.utils.SessionUtils;

@Controller
public class GoodsManagesController {
	@RequestMapping("goodsManages")
	public String index(HttpServletRequest request){
	SessionInfo sessionInfo=SessionUtils.getSessionInfo(request);
		
		if (sessionInfo==null||null==String.valueOf(sessionInfo.userID))
		{
			return "unload";
		}else{
		  
		}
		 return "goodsManages";
	}
}
