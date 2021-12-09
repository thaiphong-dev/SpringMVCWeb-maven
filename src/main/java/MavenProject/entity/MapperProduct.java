package MavenProject.entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperProduct  implements RowMapper<Product>{
	public Product mapRow(ResultSet rs, int rowNum) throws SQLException {
		Product account = new Product();
		account.setId(rs.getString(1));
		account.setName(rs.getString(2));
		account.setImageLink(rs.getString(3));
		account.setPrice(rs.getFloat(4));
		account.setDescription(rs.getString(5));
		account.setAmount(rs.getInt(6));
		account.setCatalogId(rs.getString(7));
		
		return null;
	}
}
