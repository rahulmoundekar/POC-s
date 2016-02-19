package in.com.spring.controller;

import in.com.spring.beans.User;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CommonController {

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public ModelAndView welcome() {
		return new ModelAndView("globalHome");
	}
	
	@RequestMapping(value = "login/loginPage", method = RequestMethod.GET)
	public ModelAndView LoginJsp() {
		return new ModelAndView("global_login.def", "user", new User());
	}
}
