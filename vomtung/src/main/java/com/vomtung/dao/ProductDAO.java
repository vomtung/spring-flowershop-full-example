package com.vomtung.dao;

import javax.persistence.*;

import java.util.*;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.*;

import com.vomtung.entities.Product;

@Repository("ProductDAO")
@Transactional(propagation = Propagation.REQUIRED)
public class ProductDAO {

	@PersistenceContext
	private EntityManager entityManager;

	public EntityManager getEntityManager() {
		return entityManager;
	}

	public void setEntityManager(EntityManager entityManager) {
		this.entityManager = entityManager;
	}

	public void create(Product product) {
		entityManager.persist(product);
	}

	public void delete(Product product) {
		entityManager.remove(entityManager.merge(product));
	}

	public void edit(Product product) {
		entityManager.merge(product);
	}

	public Product findByUsername(String username) {
		return entityManager.find(Product.class, username);
	}
	
	public Product findById(Long id) {
		return entityManager.find(Product.class, id);
	}

	@SuppressWarnings("unchecked")
	public List<Product> findAll() {
		Query query = entityManager.createQuery("select acc from Product acc");
		return (List<Product>) query.getResultList();
	}

}
