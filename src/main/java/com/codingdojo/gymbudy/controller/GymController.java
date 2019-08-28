package com.codingdojo.gymbudy.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.codingdojo.gymbudy.models.User;
import com.codingdojo.gymbudy.services.appService;

@Controller
public class GymController {
	@Autowired
	appService appServ;
////////////////////////////dash////////////////////////////////
	@RequestMapping("/dash")
	public String dash(HttpSession session, @ModelAttribute("userObj")User user) {
		return "gymbuddy/dash.jsp";
	
	}
	@RequestMapping("/profile")
	public String profile(Model model,HttpSession session, @ModelAttribute("user")User user) {
		User u = (User)session.getAttribute("user");
		model.addAttribute("user", u);
	return "gymbuddy/profile.jsp";
	
	}
}
