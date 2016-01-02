package com.archon.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.archon.domain.User;
import com.archon.repository.UserRepository;

@Controller
public class UserController {

	private UserRepository userRepository;
	List<User> listUser;
	User user;
	
	public void setUserRepository(UserRepository userRepository) {
		this.userRepository = userRepository;
	}
	
	@RequestMapping(value = "/listUsers", method = RequestMethod.GET)
	public String listUser(ModelMap modelMap) {		 
		listUser = userRepository.getAllUser();
		for(int i = 0; i < listUser.size(); i ++) {
			System.out.println(listUser.get(i));
		}
		/*user = listUser.get(0);
		System.out.println(user.getGender());*/
		modelMap.addAttribute("listUser", listUser);		
		return "listUserPage";
	}
}
