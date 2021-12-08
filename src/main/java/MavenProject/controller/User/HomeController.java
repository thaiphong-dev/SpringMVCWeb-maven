package MavenProject.controller.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import MavenProject.dao.ProductsDao;
import MavenProject.dao.SlideDao;
import MavenProject.service.User.ProductsServiceImpl;

@Controller
public class HomeController {
	@Autowired
	SlideDao slideDao;
	
	@RequestMapping(value = {"/", "/trang-chu"})
	public ModelAndView Index() {
		ModelAndView mv = new ModelAndView("user/index");	
		mv.addObject("slide", slideDao.GetDataSlide());
		return mv;
		}

	@Autowired
	ProductsServiceImpl productsServiceImpl; 
	
	@RequestMapping("/ban-phim-co")
	public ModelAndView Keyboard() {
		ModelAndView mv = new ModelAndView("user/keyboard");
		mv.addObject("keyboard", productsServiceImpl.GetKeyboardProduct());
		return mv;
		}
	@RequestMapping("/chuot-lot-chuot")
	public ModelAndView Mouse() {
		ModelAndView mv = new ModelAndView("user/mouse");
		mv.addObject("mouse", productsServiceImpl.GetMouseProduct());
		return mv;
		}
	@RequestMapping("/tai-nghe")
	public ModelAndView HeadPhone() {
		ModelAndView mv = new ModelAndView("user/headPhone");	
		mv.addObject("headPhone", productsServiceImpl.GetHPhoneProduct());
		return mv;
		}
	@RequestMapping("/ghe-gaming")
	public ModelAndView Chair() {
		ModelAndView mv = new ModelAndView("user/chair");	
		mv.addObject("chair", productsServiceImpl.GetChairProduct());
		return mv;
		}
	@RequestMapping("/microphone")
	public ModelAndView Microphone() {
		ModelAndView mv = new ModelAndView("user/microphone");	
		mv.addObject("microphone", productsServiceImpl.GetMicrophoneProduct());
		return mv;
		}
}
