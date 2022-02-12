package MavenProject.entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperOrder implements RowMapper<Order>{
	public Order mapRow(ResultSet rs, int rowNum) throws SQLException {
		Order order = new Order();
		order.setCustomerAddress(rs.getString(1));
		order.setCustomerEmail(rs.getString(2));
		order.setCustomerName(rs.getString(3));
		order.setCustomerPhone(rs.getString(4));
		order.setId(rs.getInt(6));
		order.setOrderDate(rs.getString(5));
		order.setUserName(rs.getString(7));
		return order;
	}
}
