package com.archon.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.view.InternalResourceView;

import com.archon.domain.Country;
import com.archon.repository.CountryImpRepository;
@Controller
@RequestMapping("/admin")
public class CountryController {
	private CountryImpRepository ctryImpRepo ;
	private String path = "/WEB-INF/jsp/admin";
	public void setCtryImpRepo(CountryImpRepository ci){
		ctryImpRepo = ci;
	}
	@RequestMapping(value = "/showcountry",method = RequestMethod.GET)
	public View displayCountry(ModelMap model) throws Exception{
			List<Country> ctryls = ctryImpRepo.showCountry();
		model.addAttribute("ctryls",ctryls);
		return new InternalResourceView(path+"/showCountry.jsp");
		
	}
	
	@RequestMapping(value = "/editCountry", method = RequestMethod.GET)
	public View editCountry(){ 
		return new InternalResourceView(path+"/editCountry.jsp");
	}
	@RequestMapping(value = "/addCountry", method = RequestMethod.GET)
	public String addCountry(@RequestParam("cname") String cname) throws Exception{
		ctryImpRepo.addCountry(cname);
		return "redirect:showcountry";
	}
	@RequestMapping(value = "/delCountry", method = RequestMethod.GET)
	public String delCountry(@RequestParam("cname") String cname) throws Exception{
		ctryImpRepo.delCountry(cname);
		return "redirect:showcountry";
	}
	
	
	@RequestMapping(value = "/editState", method = RequestMethod.GET)
	public View editState(){
		return new InternalResourceView(path+"/editState.jsp");
	}
	@RequestMapping(value = "/addState" , method = RequestMethod.GET)
	public String addState(@RequestParam("sname") String sname , @RequestParam("cid") String cid) throws Exception{
		int c_id = Integer.parseInt(cid);
		ctryImpRepo.addState(sname,c_id);
		return "redirect:showcountry";
	}
	@RequestMapping(value = "/delState" , method = RequestMethod.GET)
	public String delState(@RequestParam("sname") String sname , @RequestParam("cid") String cid) throws Exception{
		int c_id = Integer.parseInt(cid);
		ctryImpRepo.delState(sname,c_id); 
		return "redirect:showcountry";
	}
	
	
	
	
	@ExceptionHandler(value = Exception.class)
	public View handleException(Exception e){
		System.out.println(e);
		return new InternalResourceView("/WEB-INF/jsp/error/error.jsp");
	}
}
