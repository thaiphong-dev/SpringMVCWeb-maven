package MavenProject.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import MavenProject.entity.Cart;
import MavenProject.entity.MapperOrder;
import MavenProject.entity.MapperProducts;
import MavenProject.entity.Order;
import MavenProject.entity.OrderDetail;
import MavenProject.entity.Products;

@Repository
public class OrderDao {
	@Autowired
	JdbcTemplate _jdbcTemplate;
	
	public int AddOrder(Order order, String userName) {
		StringBuffer  sql = new StringBuffer();
		sql.append("insert into ORDERS (CUSTOMER_ADDRESS, CUSTOMER_EMAIL, CUSTOMER_NAME, CUSTOMER_PHONE, ORDER_DATE, USERNAME) VALUES ( ");
		sql.append("'"+order.getCustomerAddress()+"', ");
		sql.append("'"+order.getCustomerEmail()+"', ");
		sql.append("'"+order.getCustomerName()+"', ");
		sql.append("'"+order.getCustomerPhone()+"', ");
		sql.append("GETDATE(), ");
		sql.append("'"+ userName +"')");// thay cai nay bang username dang dang nhap
		
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	}
	
	public int getIdLastOrder() {
		StringBuffer  sql = new StringBuffer();
		sql.append("select MAX(ID) from ORDERS;");
		int ID = _jdbcTemplate.queryForObject(sql.toString(), new Object[] {}, Integer.class);
		return ID;
	}
	
	public int AddOneOrderDetail(OrderDetail orderDetail) {
		StringBuffer  sql = new StringBuffer();
		sql.append("insert into ORDER_DETAILS (PRODUCT_ID, ORDER_ID, AMOUNT) values ( ");
		sql.append("'"+orderDetail.getProductId()+"', ");
		sql.append(""+orderDetail.getOrderId()+", ");
		sql.append(""+orderDetail.getAmount()+")");
		
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	}
	
	public void AddOrderDetail(HashMap<String, Cart> cart) {
		int idOrder = getIdLastOrder();
		
		for (Map.Entry<String, Cart> itemCart : cart.entrySet()) {
			OrderDetail orderDetail = new OrderDetail();
			orderDetail.setAmount(itemCart.getValue().getQuanty());
			orderDetail.setOrderId(idOrder);
			orderDetail.setProductId(itemCart.getValue().getProduct().getId());
			AddOneOrderDetail(orderDetail);
		}
	}
	public List<Order> GetAllProducts() {
		List<Order> list = new ArrayList<Order>();
		String sql = "select * from ORDERS";
		list = _jdbcTemplate.query(sql, new MapperOrder());
		return list;
	}

}
