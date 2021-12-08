package MavenProject.entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperProducts implements RowMapper<Products>  {
	public Products mapRow(ResultSet rs, int rowNum) throws SQLException {
		Products products = new Products();
		products.setId(rs.getString(1));
		products.setName(rs.getString(2));
		products.setImageLink(rs.getString(3));
		products.setPrice(rs.getFloat(4));
		products.setDescription(rs.getString(5));
		products.setAmount(rs.getInt(6));
		products.setCatalogId(rs.getString(7));
		return products;
	}
	
}
