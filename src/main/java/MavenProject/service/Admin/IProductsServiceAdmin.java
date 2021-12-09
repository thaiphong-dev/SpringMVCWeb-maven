package MavenProject.service.Admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import MavenProject.entity.Products;
@Service
public interface IProductsServiceAdmin {
	@Autowired
	public List<Products> GetKeyboardProduct();
	public List<Products> GetMouseProduct();
	public List<Products> GetChairProduct();
	public List<Products> GetMicrophoneProduct();
	public List<Products> GetHPhoneProduct();
	
	public Products GetProductByID(String id);
	public List<Products> GetAllProducts();
}
