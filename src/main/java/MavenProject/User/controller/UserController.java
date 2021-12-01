package MavenProject.User.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

public class UserController {
	@RequestMapping(value ="/dang-nhap", method = RequestMethod.GET)
	public ModelAndView Login() {
		ModelAndView mv = new ModelAndView("user/login");	
		return mv;
		}
	@RequestMapping("/dang-ky")
	public ModelAndView Register() {
		ModelAndView mv = new ModelAndView("user/register");	
		return mv;
		}
}
