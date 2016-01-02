package com.archon.repository;

import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;

import com.archon.domain.Country;
import com.archon.mapper.CountryMapper;

public class CountryImpRepository implements CountryRepository {
	
	private JdbcTemplate jdbctemp;
	
	@Override
	public List<Country> showCountry() throws Exception{
		final String sql = "select country_admin.country_id,country_name,state_name,state_id from country_admin left join state_admin on country_admin.country_id = state_admin.country_id";
		List<Country> countryLs = jdbctemp.query(sql,new CountryMapper());   
		return countryLs;
	}

	@Override
	public void setJdbcTemplate(JdbcTemplate jt) {
		jdbctemp = jt;
		
	}

	@Override
	public void addCountry(String cname) throws Exception {
		final String cchk = "select * from country_admin where country_name ='"+cname+"'";
		List<?> ls =jdbctemp.queryForList(cchk);
		if(ls.isEmpty()){
			final String sql = "insert into country_admin (country_name) values ('"+cname+"')";
			jdbctemp.update(sql);
		}
		
	}
	@Override
	public void addState(String sname,int cid) throws Exception {
		final String schk = "select * from state_admin where state_name ='"+sname+"'and country_id ="+cid;
		List<?> ls =jdbctemp.queryForList(schk);
		if(ls.isEmpty()){
			final String sql = "insert into state_admin (state_name,country_id) values('"+sname+"',"+cid+")";
			jdbctemp.update(sql);
		}
		
	}

	@Override
	public void delCountry(String cname) throws Exception {
		final String sql_1 = "delete from state_admin where country_id in (select country_id from country_admin where country_name = '"+cname+"')";
		jdbctemp.update(sql_1);
		final String sql_2 = "delete from country_admin where country_name = '"+cname+"'";
		jdbctemp.update(sql_2);
	}
	@Override
	public void delState(String sname, int cid) throws Exception {
		final String sql = "delete from state_admin where state_name ='"+sname+"' and country_id = "+cid;
		jdbctemp.update(sql);
		
	}

}
