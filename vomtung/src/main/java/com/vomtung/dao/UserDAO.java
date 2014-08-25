package com.vomtung.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.vomtung.entities.Product;
import com.vomtung.entities.User;

@Repository("UserDAO")
@Transactional
public class UserDAO {

	@PersistenceContext
	private EntityManager entityManager;

	public EntityManager getEntityManager() {
		return entityManager;
	}

	public void setEntityManager(EntityManager entityManager) {
		this.entityManager = entityManager;
	}
	
	public User findById(Long id) {
		return entityManager.find(User.class, id);
	}
	
	public User findByUsername(String username) {
		Query query = entityManager.createQuery("SELECT u FROM User u WHERE u.username=:owner  ",User.class);
		query.setParameter("owner", username);
		return (User)((query.getResultList().size()>2||query.getResultList().size()==0)?null:query.getResultList().get(0));
	}
	
}
