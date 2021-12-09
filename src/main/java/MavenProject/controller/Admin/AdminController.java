package MavenProject.controller.Admin;

import java.awt.Window;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import MavenProject.dao.ProductDao;
import MavenProject.entity.Product;
import MavenProject.entity.Users;
import MavenProject.service.Admin.AccountServiceImplAdmin;
import MavenProject.service.Admin.ProductsServiceImplAdmin;
import MavenProject.service.User.ProductsServiceImpl;
import Service.ProductServiceImpl;

@Controller
public class AdminController {
	@Autowired
	ProductDao productDao;
	
	@Autowired
	ProductsServiceImplAdmin productsService;

	@Autowired
	AccountServiceImplAdmin accountService;
	
	@RequestMapping(value ="/quan-tri", method = RequestMethod.GET)
	public ModelAndView admin() {
		ModelAndView mv = new ModelAndView("admin/admin");
		mv.addObject("product", new Product());
		mv.addObject("user", new Users());
		mv.addObject("allProduct", productsService.GetAllProducts());
		mv.addObject("AllUser", accountService.GetDataUser());
		return mv;
		}
	
	@RequestMapping(value ="/quan-tri", method = RequestMethod.POST)
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
			mv.addObject("product", new Product());
			mv.addObject("user", new Users());
			mv.addObject("allProduct", productsService.GetAllProducts());
			mv.addObject("AllUser", accountService.GetDataUser());
		} else {
			mv.addObject("status", "that bai");
		}
		
		mv.setViewName("admin/admin");
		return mv;
		}
	
	@RequestMapping(value ="/xoa/{userName}", method = RequestMethod.GET)
	public String DeleteUser(HttpServletRequest request, HttpSession session, @PathVariable String userName) {
		ModelAndView mv = new ModelAndView("admin/admin");
		mv.addObject("AllUser", accountService.DeleteUser(userName));
		mv.addObject("product", new Product());
		mv.addObject("user", new Users());
		mv.addObject("allProduct", productsService.GetAllProducts());
		mv.setViewName("redirect:quan-tri");
		mv.setViewName("admin/admin");
		return "redirect:"+request.getHeader("Referer");
}
	

	
	@RequestMapping(value ="/cap-nhat/{id}", method = RequestMethod.GET)
	public String CreateUser(HttpServletRequest request, @ModelAttribute("user") Users user) {
		ModelAndView mv = new ModelAndView("admin/admin");
//		boolean check = accountService.CheckValidate(user);
//		if(check ) {
			int count = accountService.UpdateUser(user);
			if(count > 0) {
				mv.addObject("product", new Product());
				mv.addObject("user", new Users());
				mv.addObject("AllUser", accountService.GetDataUser());
				mv.addObject("allProduct", productsService.GetAllProducts());
			
				mv.setViewName("redirect:quan-tri");
			} else {
				mv.addObject("status", "Đăng ký tài khoản thất bại");
			}
		

			mv.setViewName("admin/admin");
	
		 return "redirect:"+request.getHeader("Referer");
	}
}