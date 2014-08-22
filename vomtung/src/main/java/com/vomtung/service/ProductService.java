package com.vomtung.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.vomtung.dao.ProductDAO;
import com.vomtung.entities.Product;

public interface ProductService {

	public ProductDAO getProductDAO();

	public void setProductDAO(ProductDAO productDAO);

	@Transactional
	public void create(Product product);

	public void delete(Product account);

	public void edit(Product account);

	public Product findByUsername(String username);
	
	public abstract Product findById(long id);

	public abstract List<Product> findAll();
	
	public List<Product> findByCategory(long categoryId);
	
	public List<Product> findFeaturedProduct();
	
	public List<Product> findNewProduct();
	
	public List<Product> findPromotionProduct();

}