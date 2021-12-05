package MavenProject.User.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import MavenProject.dao.TestDao;

@Controller
public class HomeController {
	@Autowired
	TestDao testDao;
	@RequestMapping(value = {"/", "/trang-chu"})
	public ModelAndView Index() {
		ModelAndView mv = new ModelAndView("user/index");	
		mv.addObject("account", testDao.GetDataAccount());
		return mv;
		}

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
	@RequestMapping("/danh-sach")
	public ModelAndView ListProduct() {
		ModelAndView mv = new ModelAndView("user/list");	
		return mv;
		}
}
