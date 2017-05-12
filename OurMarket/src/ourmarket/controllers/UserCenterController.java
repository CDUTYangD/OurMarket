/**
 * 
 */
package ourmarket.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Title:UserCenterController
 *
 * Description:
 * 
 * @author SGang
 * @date 2017年5月12日下午1:58:51
 */

@Controller
@RequestMapping("/UserCenter")
public class UserCenterController {

	@RequestMapping("/Index")
	public String index() {
		return "userCenter/index";
	}
}