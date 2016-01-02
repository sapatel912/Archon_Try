package com.archon.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.archon.domain.User;

public class UserRowMapper implements RowMapper<User> {
	
	private User user;
	
	@Override
	public User mapRow(ResultSet resultSet, int rowNum) throws SQLException {
		System.out.println("r_no: " + rowNum + ", user_id: " + resultSet.getInt("user_id"));
		user = new User();
		user.setUserId(resultSet.getInt("user_id"));
		user.setFullName(resultSet.getString("full_name"));
		user.setInitial(resultSet.getString("initial"));
		user.setContactNo(resultSet.getInt("contact_no"));
		user.setGender(resultSet.getString("gender"));
		user.setPhotoPath(resultSet.getString("photo_path"));
		user.setBio(resultSet.getString("bio"));
		user.setCountryId(resultSet.getInt("country_id"));
		user.setLoginId(resultSet.getInt("login_id"));		
		return user;
	}
}
