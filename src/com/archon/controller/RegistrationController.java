package com.archon.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.view.InternalResourceView;

@Controller
public class RegistrationController {

	@RequestMapping(value = "/registration", method = RequestMethod.GET )
	public View registraion(){
		return new InternalResourceView("/WEB-INF/jsp/registraion.jsp");
	}
}
