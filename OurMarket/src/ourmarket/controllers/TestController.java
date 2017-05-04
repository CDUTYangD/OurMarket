/**
 * 
 */
package ourmarket.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Title:TestController
 *
 * Description:
 * 
 * @author SGang
 * @date 2017年5月4日上午11:25:48
 */
@Controller
@RequestMapping("/Test")
public class TestController {
	@RequestMapping("/Index")
	public String index() {
		return "test/index";
	}

	@RequestMapping("/Other")
	public String other() {
		return "test/other";
	}

	@RequestMapping("/Login")
	public String login() {
		return "test/login";
	}
}
