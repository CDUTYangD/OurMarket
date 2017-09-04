/**
 * 
 */
package ourmarket.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import ourmarket.models.User;
import ourmarket.services.IUserService;

/**
 * 
 * Title:HomeController Description:
 * 
 * @author SGang
 * @date 2017年4月29日下午4:32:24
 */
@Controller
@RequestMapping("/Home")
public class HomeController {
	@RequestMapping("/Index")
	public String index(HttpServletRequest request,Model model) {
		return "home";
	}
}
