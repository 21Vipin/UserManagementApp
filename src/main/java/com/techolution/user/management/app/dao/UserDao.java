package com.techolution.user.management.app.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.techolution.user.management.app.entities.User;

@Repository("userDao")
public interface UserDao extends JpaRepository<User, Integer> {
	User findByEmail(String email);

}
