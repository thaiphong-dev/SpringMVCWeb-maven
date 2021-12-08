package MavenProject.dao;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import MavenProject.entity.Cart;
import MavenProject.entity.Products;

@Repository
public class CartDao {
	@Autowired
	JdbcTemplate _jdbcTemplate;
	
	@Autowired
	ProductsDao productsDao = new ProductsDao();
	
	public HashMap<String, Cart> AddCart(String id, HashMap<String, Cart> cart) {
		Cart itemCart = new Cart();
		Products product = productsDao.FindProductByID(id);
		if(product != null && cart.containsKey(id)) {
			itemCart = cart.get(id);
			itemCart.setQuanty(itemCart.getQuanty() + 1);
			itemCart.setTotalPrice(itemCart.getQuanty() * itemCart.getProduct().getPrice());
		}
		else if (product != null) {
			itemCart.setProduct(product);
			itemCart.setQuanty(1);
			itemCart.setTotalPrice(product.getPrice());
		}
		else {
			return cart;
		}
		cart.put(id, itemCart);
		return cart;
	}
	
	public HashMap<String, Cart> EditCart(String id, int quanty, HashMap<String, Cart> cart) {
		if(cart == null) {
			return cart;
		}
		Cart itemCart = new Cart();
		if(cart.containsKey(id)) {
			itemCart = cart.get(id);
			itemCart.setQuanty(quanty);
			double totalPrice = quanty * itemCart.getProduct().getPrice();
			itemCart.setTotalPrice(totalPrice);
		}
		cart.put(id, itemCart);
		return cart;
	}
	
	public HashMap<String, Cart> DeleteCart(String id, HashMap<String, Cart> cart) {
		if(cart == null) {
			return cart;
		}
		if(cart.containsKey(id)) {
			cart.remove(id);
		}
		return cart;
	}
	
	public int TotalQuanty(HashMap<String, Cart> cart) {
		int totalQuanty = 0;
		for(Map.Entry<String, Cart> itemCart : cart.entrySet()) {
			totalQuanty += itemCart.getValue().getQuanty();
		}
		return totalQuanty;
	}
	
	public double TotalPrice(HashMap<String, Cart> cart) {
		double totalPrice = 0;
		for(Map.Entry<String, Cart> itemCart : cart.entrySet()) {
			totalPrice += itemCart.getValue().getTotalPrice();
		}
		return totalPrice;
	}
}