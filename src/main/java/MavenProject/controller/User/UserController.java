
package MavenProject.controller.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.http.HttpSession;
import MavenProject.entity.Users;
import MavenProject.service.User.AccountServiceImpl;

@Controller
public class UserController {
	@Autowired
	AccountServiceImpl accountService = new AccountServiceImpl();
	
//	@RequestMapping(value ="/dang-nhap", method = RequestMethod.GET)
//	public ModelAndView Login() {
//		ModelAndView mv = new ModelAndView("user/account/login");	
//		return mv;
//		}
	

	
	@RequestMapping(value ="/dang-nhap", method = RequestMethod.GET)
	public ModelAndView Register() {
		ModelAndView mv = new ModelAndView("user/account/register");
		mv.addObject("user", new Users());
		return mv;
		}
	@RequestMapping(value ="/dang-ky", method = RequestMethod.POST)
	public ModelAndView CreateUser(@ModelAttribute("user") Users user) {
		ModelAndView mv = new ModelAndView("user/account/register");
//		boolean check = accountService.CheckValidate(user);		boolean check = true;
		if(check ) {
			int count = accountService.AddAccount(user);
			if(count > 0) {
				mv.addObject("status", "Đăng ký tài khoản thành công");
			} else {
				mv.addObject("status", "Đăng ký tài khoản thất bại");
			}
		}else {
			mv.addObject("status", "Email đã tồn tại");
		}
		
		
		
//		mv.addObject("status", true);
		mv.setViewName("user/account/register");
	
		return mv;
	}
	


	@RequestMapping(value ="/dang-nhap", method = RequestMethod.POST)
	public ModelAndView Login(HttpSession session, @ModelAttribute("user") Users user) {
		ModelAndView mv = new ModelAndView("user/account/register");
	boolean check = accountService.CheckAccount(user);
		
	if(check) {
		System.out.print(user.getRole());
		
		
		if(user.getRole() == 1) {
			mv.setViewName("redirect:quan-tri");
		} else if(user.getRole() == 0) {
			mv.setViewName("redirect:trang-chu");
		}
		
		session.setAttribute("LoginInfo", user);
	} else {
		mv.addObject("statusLogin", "Sai email hoặc mật khẩu");
	}	
		return mv;
	}
	
	@RequestMapping(value ="/dang-xuat", method = RequestMethod.POST)
	public String logout(HttpServletRequest request,HttpSession session, @ModelAttribute("user") Users user) {
		session.removeAttribute("LoginInfo");
		return "redirect:"+request.getHeader("Referer");
}
}

