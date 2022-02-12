package MavenProject.service.Admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import MavenProject.dao.OrderDao;
import MavenProject.entity.Order;

@Service
public class OrdersServiceAdminImpl implements OrdersServiceAdmin {
	@Autowired
	OrderDao orderDao;
	public List<Order> GetAllProducts() {
		// TODO Auto-generated method stub
		return orderDao.GetAllProducts();
	}

}
