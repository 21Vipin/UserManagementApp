package com.techolution.user.management.app.dao;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.techolution.user.management.app.entities.Role;

@Repository("roleDao")
public interface RoleDao extends JpaRepository<Role, Integer>{
	Role findByRole(String role);

}
