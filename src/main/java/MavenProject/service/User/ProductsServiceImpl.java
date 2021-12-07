package MavenProject.service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import MavenProject.dao.ProductsDao;
import MavenProject.entity.Products;

@Service
public class ProductsServiceImpl implements IProductsService {
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

}
