package Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import MavenProject.dao.ProductDao;
import MavenProject.entity.Product;

@Service
public class ProductServiceImpl implements IProductService {
	@Autowired
	ProductDao productDao = new ProductDao();
	
	public int AddProduct(Product product) {
		return productDao.AddProduct(product);
	}
}
