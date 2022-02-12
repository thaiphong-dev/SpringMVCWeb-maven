package MavenProject.service.Admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import MavenProject.entity.Order;

@Service
public interface OrdersServiceAdmin {
	@Autowired
	public List<Order> GetAllProducts();
}
