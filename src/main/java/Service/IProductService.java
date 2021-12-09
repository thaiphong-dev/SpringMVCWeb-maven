package Service;

import org.springframework.stereotype.Service;

import MavenProject.entity.Product;

@Service
public interface IProductService {
	public int AddProduct(Product product);
}
