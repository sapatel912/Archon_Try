package com.archon.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.archon.domain.Country;

public class CountryMapper implements RowMapper<Country> {
    Country cs;
	@Override
	public Country mapRow(ResultSet rs, int rowNo) throws SQLException {
		cs  = new Country();
		cs.setCountryID(rs.getInt("country_id"));
		cs.setCountryName(rs.getString("country_name"));
		cs.setStateName(rs.getString("state_name"));
		cs.setStateID(rs.getInt("state_id"));
		return cs;
	}

}
