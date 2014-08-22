package com.vomtung.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.vomtung.dao.CategoryDAO;
import com.vomtung.entities.Category;

public interface CategoryService {

	public abstract CategoryDAO getCategoryDAO();

	public abstract void setCategoryDAO(CategoryDAO categoryDAO);

	public abstract void create(Category category);

	public abstract void delete(Category category);

	public abstract void edit(Category category);

	public abstract Category findById(long id);

	public abstract List<Category> findAll();

}