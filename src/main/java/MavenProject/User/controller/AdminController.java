package MavenProject.User.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import MavenProject.dao.ProductDao;
import MavenProject.entity.Product;
import Service.ProductServiceImpl;

@Controller
public class AdminController {
	@Autowired
	ProductDao productDao;
	
	ProductServiceImpl productService = new ProductServiceImpl();
	
	@RequestMapping(value ="/admin", method = RequestMethod.GET)
	public ModelAndView admin() {
		ModelAndView mv = new ModelAndView("admin/admin");
		mv.addObject("product", new Product());
		return mv;
		}
	
	@RequestMapping(value ="/admin", method = RequestMethod.POST)
	public ModelAndView addProduct(@ModelAttribute("product") Product product) {
		ModelAndView mv = new ModelAndView("admin/admin");
		boolean check = productDao.checkIdProduct(product.getId());
		if (check) {
			mv.addObject("status", "id da ton tai");
			mv.setViewName("admin/admin");
			return mv;
		}
		
		int count = productDao.AddProduct(product);
		
		if (count > 0) {
			mv.addObject("status", "thanh cong");
		} else {
			mv.addObject("status", "that bai");
		}
		
		mv.setViewName("admin/admin");
		return mv;
		}
}
