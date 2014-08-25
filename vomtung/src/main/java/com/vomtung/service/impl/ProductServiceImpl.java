package com.vomtung.service.impl;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.vomtung.dao.CategoryDAO;
import com.vomtung.dao.ProductDAO;
import com.vomtung.entities.Category;
import com.vomtung.entities.Product;
import com.vomtung.entities.User;
import com.vomtung.service.ProductService;
import com.vomtung.service.UserService;

@Component
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDAO productDAO;
	
	@Autowired
	private CategoryDAO categoryDAO;

	@Autowired
	private UserService userService;
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
	@Transactional
	public void create(Product product) {
		//Set Owner
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String username=auth.getName();
		User user=userService.findByUserName(username);
		product.setOwner(user);
		//set category
		Category category=categoryDAO.findById(product.getCategory().getId());
		category.getProducts().add(product);
		categoryDAO.edit(category);
		product.setCategory(category);
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

	public List<Product> findByCategory(long categoryId){
		return productDAO.findByCategory(categoryId);
	}
	
	public List<Product> findFeaturedProduct(){
		return this.productDAO.findByCategoryName("Featured Products");
	}
	
	public List<Product> findNewProduct(){
		return this.productDAO.findByCategoryName("New Newducts");
	}
	
	public List<Product> findPromotionProduct(){
		return this.productDAO.findByCategoryName("Promotions Products");
	}
}
