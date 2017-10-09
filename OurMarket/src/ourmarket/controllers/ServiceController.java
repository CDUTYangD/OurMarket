package ourmarket.controllers;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import ourmarket.models.DetailMessage;
import ourmarket.pojos.ReturnInfo;
import ourmarket.services.IDetailMessageService;
import ourmarket.sys.SessionInfo;
import ourmarket.utils.SessionUtils;

@Controller
public class ServiceController {
	@Autowired
	IDetailMessageService detailMessageService = null;

	@RequestMapping("service")
	public String index() {

		return "service";
	}

	@RequestMapping("serviceup")
	public String serviceup(HttpServletRequest request, Model model, String servicemessage) {
		SessionInfo sessionInfo = SessionUtils.getSessionInfo(request);

		if (sessionInfo == null || null == String.valueOf(sessionInfo.userID)) {
			return "unload";
		} else {
			DetailMessage Dmessage = new DetailMessage();
			Date date = new Date();
			String datestr = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(date);
			Dmessage.setMid(sessionInfo.userID);
			Dmessage.setMcontent(servicemessage);
			Dmessage.setMtime(Timestamp.valueOf(datestr));
			detailMessageService.addMessage(Dmessage);
		}
		return "service";
	}
	
}
