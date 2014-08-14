package com.vomtung.service;

import java.util.List;

import com.vomtung.dao.ProductDAO;
import com.vomtung.entities.Product;

public interface ProductService {

	public abstract ProductDAO getProductDAO();

	public abstract void setProductDAO(ProductDAO productDAO);

	public abstract void create(Product product);

	public abstract void delete(Product account);

	public abstract void edit(Product account);

	public abstract Product findByUsername(String username);

	public abstract Product findById(long id);

	public abstract List<Product> findAll();

}