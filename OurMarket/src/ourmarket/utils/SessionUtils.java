package ourmarket.utils;

import ourmarket.sys.SessionInfo;
import javax.servlet.http.HttpServletRequest;

/**
 * 网站会话工具
 * @author Admin_YangD
 *
 */
public	class SessionUtils {
	/**
	 * 从servlet中获取会话信息
	 * @param request
	 * @return
	 */
	public  static SessionInfo	getSessionInfo(HttpServletRequest request) {
		SessionInfo sessionInfo=(SessionInfo) request.getSession().getAttribute("sessionInfo");
		return sessionInfo;
	}
}
