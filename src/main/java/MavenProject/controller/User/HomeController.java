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

}
