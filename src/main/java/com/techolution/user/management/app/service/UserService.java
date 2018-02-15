package com.techolution.user.management.app.service;

import com.techolution.user.management.app.entities.User;

public interface UserService {
	
	public User findUserByEmail(String email);
	public void saveUser(User user);
}
