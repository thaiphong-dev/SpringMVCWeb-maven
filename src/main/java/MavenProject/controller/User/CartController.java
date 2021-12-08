package MavenProject.controller.User;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import MavenProject.dao.CartDao;
import MavenProject.dao.OrderDao;
import MavenProject.entity.Cart;
import MavenProject.entity.Order;



@Controller
public class CartController {
	
	@Autowired
	CartDao cartDao;
	@Autowired
	OrderDao orderDao;
//	private CartServiceImpl cartService = new CartServiceImpl();
	
	@RequestMapping(value = "/gio-hang")
	public ModelAndView cart() {
		ModelAndView mv = new ModelAndView("user/cart");
		mv.addObject("order", new Order());
		return mv;
		}
	
	@RequestMapping(value = "AddCart/{id}")
	public String AddCart(HttpServletRequest request ,HttpSession session, @PathVariable String id) {
		HashMap<String, Cart> cart = (HashMap<String, Cart>)session.getAttribute("Cart");
		if(cart == null) {
			cart = new HashMap<String, Cart>();
		}
		cart = cartDao.AddCart(id, cart);
		session.setAttribute("Cart", cart);
		session.setAttribute("TotalQuantyCart", cartDao.TotalQuanty(cart));
		session.setAttribute("TotalPriceCart", cartDao.TotalPrice(cart));
		return "redirect:"+request.getHeader("Referer");
	}
	
	@RequestMapping(value = "EditCart/{id}/{quanty}")
	public String EditCart(HttpServletRequest request ,HttpSession session, @PathVariable String id, @PathVariable int quanty) {
		HashMap<String, Cart> cart = (HashMap<String, Cart>)session.getAttribute("Cart");
		if(cart == null) {
			cart = new HashMap<String, Cart>();
		}
		cart = cartDao.EditCart(id, quanty, cart);
		session.setAttribute("Cart", cart);
		session.setAttribute("TotalQuantyCart", cartDao.TotalQuanty(cart));
		session.setAttribute("TotalPriceCart", cartDao.TotalPrice(cart));
		return "redirect:"+request.getHeader("Referer");
	}
	
	
	@RequestMapping(value = "DeleteCart/{id}")
	public String DeleteCart(HttpServletRequest request ,HttpSession session, @PathVariable String id) {
		HashMap<String, Cart> cart = (HashMap<String, Cart>)session.getAttribute("Cart");
		if(cart == null) {
			cart = new HashMap<String, Cart>();
		}
		cart = cartDao.DeleteCart(id, cart);
		session.setAttribute("Cart", cart);
		session.setAttribute("TotalQuantyCart", cartDao.TotalQuanty(cart));
		session.setAttribute("TotalPriceCart", cartDao.TotalPrice(cart));
		return "redirect:"+request.getHeader("Referer");
	}
	
	@RequestMapping(value = "/gio-hang", method = RequestMethod.POST)
	public String checkoutOrder(HttpServletRequest request ,HttpSession session, @ModelAttribute("order") Order order) {
		HashMap<String, Cart> cartHashMap = (HashMap<String, Cart>)session.getAttribute("Cart");
		
		if (cartHashMap == null) {
			session.setAttribute("status", "Không có sản phẩm nào trong giỏ hàng");
			return "redirect:"+request.getHeader("Referer");
		}
		
		if (orderDao.AddOrder(order) > 0) {
//			HashMap<String, Cart> cartHashMap = (HashMap<String, Cart>)session.getAttribute("Cart");
			orderDao.AddOrderDetail(cartHashMap);
		}
		session.removeAttribute("Cart");
		session.removeAttribute("TotalQuantyCart");
		session.removeAttribute("TotalPriceCart");
		session.removeAttribute("status");
		return "redirect:"+request.getHeader("Referer");
	}
}
