package com.codingdojo.gymbudy.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.codingdojo.gymbudy.models.User;
import com.codingdojo.gymbudy.services.appService;

@Controller
public class GymController {
	@Autowired
	appService appServ;
////////////////////////////dash////////////////////////////////
	@RequestMapping("/home")
	public String dash(HttpSession session, @ModelAttribute("userObj")User user) {
	return "gymbuddy/dash.jsp";
	
	}
	
}
