package com.vomtung.service;

import com.vomtung.entities.User;

public interface UserService {

	public User findById(long id);

	public User findByUserName(String username);
	
}
