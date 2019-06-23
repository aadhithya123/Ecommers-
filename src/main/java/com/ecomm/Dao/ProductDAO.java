package com.ecomm.Dao;

import java.util.List;

import com.ecomm.modal.Product;

public interface ProductDAO {
	public boolean addProduct(Product product);
	public Product find(int id);
	public List<Product>getAllProduct();
	public boolean updateproduct(Product product);
	public boolean deleteproduct(Product product);
	
}
