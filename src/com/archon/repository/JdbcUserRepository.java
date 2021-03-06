package com.archon.repository;

import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;

import com.archon.domain.User;
import com.archon.mapper.UserRowMapper;

public class JdbcUserRepository implements UserRepository {

	private JdbcTemplate jdbcTemplate;
	
	List<User> listUser;
	List<User> listUser1;
	
	User user;
	
	private static final String sqlGetAllUser = "select * from user_table;";
	
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	
	public List<User> getAllUser() {
		listUser = jdbcTemplate.query(sqlGetAllUser,new UserRowMapper());		
		
		return listUser;
	}
}
