package com.codingdojo.gymbuddy.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.codingdojo.gymbuddy.models.Message;
import com.codingdojo.gymbuddy.models.User;
import com.codingdojo.gymbuddy.services.MessageService;
import com.codingdojo.gymbuddy.services.UserService;
import com.codingdojo.gymbuddy.services.appService;

@Controller
public class GymController {
	@Autowired
	appService appServ;
	@Autowired
	MessageService messageService;
	@Autowired
	UserService userServ;
////////////////////////////dash////////////////////////////////
	@GetMapping("/dash")
	public String dash(Model model,HttpSession session, @ModelAttribute("userObj")User user) {
	    User u = (User)session.getAttribute("user");
		List<User> allusers=appServ.findAllUsers();
    	model.addAttribute("allusers", allusers);
    	model.addAttribute("user", u);
		return "gymbuddy/dash.jsp";
	
	}
/////////////////////////////my profile////////////////////////////////////
	@RequestMapping("/myprofile")
	public String myprofile(Model model,HttpSession session, @ModelAttribute("user")User user) {
		User u = (User)session.getAttribute("user");
		model.addAttribute("user", u);
	return "gymbuddy/myprofile.jsp";
	
	}
///////////////////////////////update///////////////////////////////////////
	@PostMapping("/update/{id}")
	public String update(Model model,@PathVariable("id") Long id, @Valid @ModelAttribute("user") User user, HttpSession session, BindingResult result) {
		User u = (User)session.getAttribute("user");
		model.addAttribute("user", u);
		if(result.hasErrors()) {
			return "gymbuddy/myprofile.jsp";
		}else {
			appServ.update(user);
		return "redirect:/dash";
	}
}
	
///////////////////////////////////search//////////////////////////////////
	@PostMapping("/search")
	public String searchUser(@RequestParam(value="user") String user, Model model) {
	List<User> users= appServ.searchUser(user);
	model.addAttribute("users",users);
	return "gymbuddy/results.jsp";
	}
/////////////////////////////profiles////////////////////////////////////
	@GetMapping("/profile/{id}")
	public String profiles(@PathVariable("id") Long id, Model model,HttpSession session, @ModelAttribute("user")User user) {
		User u = (User)session.getAttribute("user");
		model.addAttribute("user", u);
		User thisUser = appServ.findThisUser(id);
		model.addAttribute("thisUser", thisUser);
	return "gymbuddy/profiles.jsp";
	}
///////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////
////////////////////////////*************** (For friend page) ////////////////////////////////////////////////////////////	
	@RequestMapping("/user/{id}")
	public String show(@PathVariable("id") Long id, Model model, HttpSession session,
		@ModelAttribute("msg") Message message) {
		User u = (User)session.getAttribute("user");
		model.addAttribute("sender_id", (Long)session.getAttribute("userId"));
//		model.addAttribute("messages", users.getMessagesRec());
		return "gymbuddy/wall.jsp";
	}
	///////////////////// Send Message To Friends ////////////////////////////////////////////////
	@PostMapping("/user/{id}/addmsg")
	public String message(@PathVariable("id") Long id, @Valid @ModelAttribute("msg") Message msg, BindingResult result,
		Model model, HttpSession session) {
		User u = (User)session.getAttribute("user");
		model.addAttribute("user", u);
		List<Message> messages = u.getMessagesRec();
		model.addAttribute("messages", messages);
		if (result.hasErrors()) {
		System.out.println(result.getAllErrors());
		model.addAttribute("error", "Invalid Credentials. Please try again.");
		return "gymbuddy/wall.jsp";
		} else {
		msg.setReceiver(u);
		msg.setId(null);
		messageService.create(msg);
//	messageService.update(msg);
//	messages.add(msg);
//	u.setMessages(messages);
	return "redirect:/user/{id}";
	}
	}
	
	
}
