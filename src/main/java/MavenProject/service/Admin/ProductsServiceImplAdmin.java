package MavenProject.service.Admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import MavenProject.dao.ProductsDao;
import MavenProject.entity.Products;

@Service
public class ProductsServiceImplAdmin implements IProductsServiceAdmin {
	@Autowired
	private ProductsDao productDao;

	public List<Products> GetKeyboardProduct() {

		return productDao.GetKeyboardProduct();
	}

	public List<Products> GetMouseProduct() {

		return productDao.GetMouseProduct();
	}

	public List<Products> GetChairProduct() {

		return productDao.GetChairProduct();
	}

	public List<Products> GetMicrophoneProduct() {

		return productDao.GetMicrophoneProduct();
	}

	public List<Products> GetHPhoneProduct() {

		return productDao.GetHPhoneProduct();
	}

	public Products GetProductByID(String id) {
		List<Products> list = productDao.GetProductByID(id); 
		return list.get(0);
		
	}

	public List<Products> GetAllProducts() {
		// TODO Auto-generated method stub
		return productDao.GetAllProducts();
	}

	public List<Products> DeleteProduct(String id) {
		// TODO Auto-generated method stub
		return productDao.DeleteProduct(id);
	}

	public int UpdateProduct(Products product) {
		// TODO Auto-generated method stub
		return productDao.UpdateProduct(product);
	}



}
