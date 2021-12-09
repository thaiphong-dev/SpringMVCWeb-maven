
package MavenProject.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import MavenProject.entity.Products;
import MavenProject.entity.MapperProducts;

@Repository
public class ProductsDao {
	@Autowired
	JdbcTemplate _jdbcTemplate;
	
	public List<Products> GetDataProducts() {
		List<Products> list = new ArrayList<Products>();
		String sql = "SELECT * FROM PRODUCTS";
		list = _jdbcTemplate.query(sql, new MapperProducts());
		return list;
	}
	public List<Products> GetKeyboardProduct() {
		List<Products> list = new ArrayList<Products>();
		String sql = "select * from PRODUCTS where CATALOG_ID='KBOARD'";
		list = _jdbcTemplate.query(sql, new MapperProducts());
		
		return list;
	}
	public List<Products> GetMouseProduct() {
		List<Products> list = new ArrayList<Products>();
		String sql = "select * from PRODUCTS where CATALOG_ID='MOUSE'";
		list = _jdbcTemplate.query(sql, new MapperProducts()); 
		return list;
	}
	public List<Products> GetHPhoneProduct() {
		List<Products> list = new ArrayList<Products>();
		String sql = "select * from PRODUCTS where CATALOG_ID='HPHONE'";
		list = _jdbcTemplate.query(sql, new MapperProducts());
		return list;
	}
	public List<Products> GetMicrophoneProduct() {
		List<Products> list = new ArrayList<Products>();
		String sql = "select * from PRODUCTS where CATALOG_ID='MPHONE'";
		list = _jdbcTemplate.query(sql, new MapperProducts());
		return list;
	}
	public List<Products> GetChairProduct() {
		List<Products> list = new ArrayList<Products>();
		String sql = "select * from PRODUCTS where CATALOG_ID='GCHAIR'";
		list = _jdbcTemplate.query(sql, new MapperProducts());
		return list;
	}
	
	public Products FindProductByID(String id) {
		List<Products> list = new ArrayList<Products>();
		String sql = "select * from PRODUCTS where ID = '"+id+"'";
		list = _jdbcTemplate.query(sql, new MapperProducts());
		if (list.size() != 0) return list.get(0);
		return null;
	}
	public List<Products> GetProductByID(String id) {
		List<Products> list = new ArrayList<Products>();
		String sql = "select * from PRODUCTS where ID='" + id +"'";
		list = _jdbcTemplate.query(sql, new MapperProducts());		
		return list;
	}
	
	public List<Products> GetAllProducts() {
		List<Products> list = new ArrayList<Products>();
		String sql = "select * from PRODUCTS";
		list = _jdbcTemplate.query(sql, new MapperProducts());
		return list;
	}
	
	
}
