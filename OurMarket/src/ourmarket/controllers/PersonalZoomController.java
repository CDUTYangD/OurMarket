package ourmarket.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import ourmarket.models.User;
import ourmarket.services.IUserService;
import ourmarket.sys.SessionInfo;
import ourmarket.utils.SessionUtils;

@Controller
public class PersonalZoomController {

	@Autowired
	IUserService userService = null;

	@RequestMapping("personalZoom")
	public String index(HttpServletRequest request) {
		SessionInfo sessionInfo = SessionUtils.getSessionInfo(request);
		if (sessionInfo == null || null == String.valueOf(sessionInfo.userID)) {
			return "unload";
		}
		return "personalZoom";
	}

	@RequestMapping("personalZoomUp")
	public String personalSignUp(HttpServletRequest request, Model model, String username, String email, String qq,
			String phone) {

		// 此处做简单的登陆验证
		SessionInfo sessionInfo = SessionUtils.getSessionInfo(request);

		if (sessionInfo == null || null == String.valueOf(sessionInfo.userID)) {
			return "unload";
		} else {
			// 此处从session中取出用户ID信息然后在此处进行完善
			User updateuser = userService.findUserById(sessionInfo.userID);
			if (!username.isEmpty()) {
				updateuser.setUnickName(username);
				sessionInfo.setUserName(username);
			}
			if (!phone.isEmpty()) {
				updateuser.setUphone(phone);
				sessionInfo.setPhone(phone);
			}
			if (!email.isEmpty()) {
				updateuser.setUemial(email);
			}
			if (!qq.isEmpty()) {
				updateuser.setUqq(Integer.valueOf(qq));
			}

			// 更新数据库信息
			userService.updateUser(updateuser);

			// 将更新后的用户信息存入session
			request.getSession().setAttribute("sessionInfo", sessionInfo);
		}

		return "signUpSuccess";
	}
}
