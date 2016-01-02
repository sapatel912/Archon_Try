package com.archon.repository;

import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;

import com.archon.domain.Country;

public interface CountryRepository {
	void setJdbcTemplate(JdbcTemplate jt);
	List<Country> showCountry() throws Exception;
	void addCountry(String cname) throws Exception;
	void addState(String sname,int cid) throws Exception;
	void delCountry(String cname) throws Exception;
	void delState(String sname,int cid) throws Exception;
}
