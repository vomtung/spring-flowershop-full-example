package com.vomtung.service.impl;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.vomtung.dao.ProductDAO;
import com.vomtung.entities.Product;
import com.vomtung.service.ProductService;

@Component
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDAO productDAO;

	/* (non-Javadoc)
	 * @see com.vomtung.service.ProductServicei#getProductDAO()
	 */
	public ProductDAO getProductDAO() {
		return productDAO;
	}

	/* (non-Javadoc)
	 * @see com.vomtung.service.ProductServicei#setProductDAO(com.vomtung.dao.ProductDAO)
	 */
	public void setProductDAO(ProductDAO productDAO) {
		this.productDAO = productDAO;
	}

	/* (non-Javadoc)
	 * @see com.vomtung.service.ProductServicei#create(com.vomtung.entities.Product)
	 */
	public void create(Product product) {
		this.productDAO.create(product);
	}

	/* (non-Javadoc)
	 * @see com.vomtung.service.ProductServicei#delete(com.vomtung.entities.Product)
	 */
	public void delete(Product account) {
		this.productDAO.delete(account);
	}

	/* (non-Javadoc)
	 * @see com.vomtung.service.ProductServicei#edit(com.vomtung.entities.Product)
	 */
	public void edit(Product account) {
		this.productDAO.edit(account);
	}

	/* (non-Javadoc)
	 * @see com.vomtung.service.ProductServicei#findByUsername(java.lang.String)
	 */
	public Product findByUsername(String username) {
		return this.productDAO.findByUsername(username);
	}
	
	/* (non-Javadoc)
	 * @see com.vomtung.service.ProductServicei#findById(long)
	 */
	public Product findById(long id) {
		return this.productDAO.findById(id);
	}

	/* (non-Javadoc)
	 * @see com.vomtung.service.ProductServicei#findAll()
	 */
	public List<Product> findAll() {
		return this.productDAO.findAll();
	}

}
