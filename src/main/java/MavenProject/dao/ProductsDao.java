
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

	
//	public int UpdateProduct(Products product) {
//
//		StringBuffer  sql = new StringBuffer();
//		sql.append("UPDATE ");
//		sql.append("PRODUCTS ");
//		sql.append("SET ");
//		sql.append("productNAME = '" + product.getName() + "', ");
//		sql.append("ACTIVE = " + product.getActive() + " , ");
//		sql.append("ROLE = " + product.getRole() + " , ");
//		sql.append("FULLNAME = '" + product.getFullName() + "', ");
//		sql.append("ADDRESS = '" + product.getAddress() + "' ");
//		sql.append("WHERE ");
//		sql.append("ID = '" + product.getId() + "' ");
//		
//		System.out.print(product.getId());
//		System.out.print(product.getproductName());
//		System.out.print(product.getActive());
//		System.out.print(product.getRole());
//		System.out.print(product.getFullName());
//		System.out.print(product.getAddress());
//		
//		int insert = _jdbcTemplate.update(sql.toString());
//		return insert;
//	}
	
	public  List<Products> DeleteProduct(String id) {
		String sql = "delete from PRODUCTS where ID = '" + id + "'";
		int insert = _jdbcTemplate.update(sql.toString());
		List<Products> list = new ArrayList<Products>();
		list = GetAllProducts();
		return list;
	}
	
	public int UpdateProduct(Products product) {
//		StringBuffer  sql = new StringBuffer();
//		sql.append("UPDATE ");
//		sql.append("PRODUCTS ");
//		sql.append("SET ");
//		sql.append("NAME = '" + product.getName() + "', ");
//		sql.append("IMAGE_LINK = '" + product.getImageLink() + "' , ");
//		sql.append("PRICE = " + product.getPrice() + ", ");
//		sql.append("DESCRIPTION = '" + product.getDescription() + "', ");
//		sql.append("AMOUNT = " + product.getAmount() + " ");
//		sql.append("WHERE ");
//		sql.append("ID = '" + product.getId() + "' ");
		
		StringBuffer  sql = new StringBuffer();
		sql.append("UPDATE ");
		sql.append("PRODUCTS ");
		sql.append("SET ");
		sql.append("NAME ");
		sql.append("= ");
		sql.append("'" + product.getName() + "', ");
		sql.append("IMAGE_LINK ");
		sql.append("= ");
		sql.append("'" + product.getImageLink() + "' , ");
		sql.append("PRICE ");
		sql.append("= ");
		sql.append("" + product.getPrice() + " , ");
		sql.append("DESCRIPTION ");
		sql.append("= ");
		sql.append("'" + product.getDescription() + "', ");
		sql.append("AMOUNT ");
		sql.append("= ");
		sql.append("" + product.getAmount() + "");
		sql.append("WHERE ");
		sql.append("ID ");
		sql.append("= ");
		sql.append("'" + product.getId() + "'");
		
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
		
	}
}
