package MavenProject.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import MavenProject.entity.MapperProduct;
import MavenProject.entity.Product;

@Repository
public class ProductDao extends BaseDao {
	
	public int AddProduct(Product product) {
		StringBuffer  sql = new StringBuffer();
		sql.append("insert into PRODUCTS(ID, NAME, IMAGE_LINK, PRICE, DESCRIPTION, AMOUNT, CATALOG_ID) ");
		sql.append("values ( ");
		sql.append("  '"+product.getId()+"', ");
		sql.append("  '"+product.getName()+"', ");
		sql.append("  '"+product.getImageLink()+"', ");
		sql.append("  "+product.getPrice()+", ");
		sql.append("  '"+product.getDescription()+"', ");
		sql.append("  "+product.getAmount()+", ");
		sql.append("  null ");
		sql.append(")");
		
		
		int insert = _JdbcTemplate.update(sql.toString());
		return insert;
	}
	
	public boolean checkIdProduct(String id) {
		List<Product> list = new ArrayList<Product>();
		String sql = "select * from PRODUCTS where ID = '"+id+"'";
		list = _JdbcTemplate.query(sql, new MapperProduct());
		if (list.size() != 0) return true;
		return false;
	}
	
//	public boolean checkIdCatalog(String id) {
//		List<Catalog> list = new ArrayList<Catalog>();
//		String sql = "select * from CATALOG where ID = '"+id+"'";
//		list = _jdbcTemplate.query(sql, new MapperCatalog());
//		if (list.size() != 0) return true;
//		return false;
//	}
}
