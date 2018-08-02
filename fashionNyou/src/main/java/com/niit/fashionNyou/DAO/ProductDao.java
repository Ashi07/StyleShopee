package com.niit.fashionNyou.DAO;

import java.util.List;

import com.niit.fashionNyou.model.Category;
import com.niit.fashionNyou.model.Product;

public interface ProductDao
{
	public boolean addProduct(Product product);
	public boolean updateProduct(Product product);
	public boolean deleteProduct(Product product);
	public Product getProduct(int ProductId);
    List<Product> listall();

}
