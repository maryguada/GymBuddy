package com.codingdojo.gymbuddy.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import com.codingdojo.gymbuddy.models.Message;
import com.codingdojo.gymbuddy.models.User;
import com.codingdojo.gymbuddy.services.MessageService;
import com.codingdojo.gymbuddy.services.UserService;
import com.codingdojo.gymbuddy.validator.UserValidator;

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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class UserController {
	@Autowired
	UserService userService;
	@Autowired
	UserValidator userValidator;
	@Autowired
	MessageService messageService;

//___________________ HOME ____________________//

	@GetMapping("/home")
	public String home() {
		return "user/index.jsp";
	}
//________________ REGISTRATION ____________________//
	@RequestMapping("/registration")
	public String registerForm(@ModelAttribute("user") User user) {
		return "user/registrationPage.jsp";
	}

//__________________ LOGGING IN  _________________//
	@GetMapping("/login")
	public String login(@ModelAttribute("user") User user) {
		return "user/loginPage.jsp";
	}

//______________ REGISTRATION PROCESS  _______________//
	@PostMapping("/registration")
	public String registerUser(@Valid @ModelAttribute("user") User user, BindingResult result, HttpSession session,
			RedirectAttributes errors) {
		userValidator.validate(user, result);
		if (result.hasErrors()) {
			errors.addFlashAttribute("errors", "Invalid Credentials. Please try again.");
			return "redirect:/registration";
		} else {
			User u = userService.registerUser(user);
			session.setAttribute("user", u);
			return "redirect:/dash";
		}
		// if result has errors, return the registration page (don't worry about
		// validations just now)
		// else, save the user in the database, save the user id in session, and
		// redirect them to the /home route
	}

//______________ LOGGING IN PROCESS _________________//
	@PostMapping("/login")
	public String loginUser(@RequestParam("email") String email, @RequestParam("password") String password, Model model,
			HttpSession session, RedirectAttributes errors) {
		boolean isAuthenticated = userService.authenticateUser(email, password);
		if (isAuthenticated) {
			User u = userService.findByEmail(email);
			session.setAttribute("user", u);
			return "redirect:/dash";
		} else {
//    		model.addAttribute("user",new User());
			errors.addFlashAttribute("errors", "Invalid Credentials. Please try again.");
			return "redirect:/login";
		}

		// if the user is authenticated, save their user id in session
		// else, add error messages and return the login page
	}

//______________ LOGGING OUT  _________________//
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/login";

		// invalidate session
		// redirect to login page
	}


//_____________ FOR FRIEND PAGE  _________________//	
	@RequestMapping("/user/{id}")
	public String show(@PathVariable("id") Long id, Model model, HttpSession session,
			@ModelAttribute("msg") Message messages, @ModelAttribute("user") User user) {
		User sender = (User) session.getAttribute("user");
		
		model.addAttribute("sender", sender);
//		model.addAttribute("sender_id", (Long) session.getAttribute("userId"));
//		model.addAttribute("messages", sender.getMessagesRec());
		return "gymbuddy/wall.jsp";
	}

//____________ SENDING MESSAGES TO FRIENDS  _________________//
	@PostMapping("/user/{id}/addmsg")
	public String message(@PathVariable("id") Long id, @Valid @ModelAttribute("msg") Message msg, @ModelAttribute("sender") User sender,BindingResult result,
			Model model, HttpSession session) {
		User receiver= userService.findUserById(id);
		User theSender = (User) session.getAttribute("sender");
		
		model.addAttribute("sender", theSender);
		List<Message> messages = theSender.getMessagesRec();
		model.addAttribute("messages", messages);
		if (result.hasErrors()) {
			System.out.println(result.getAllErrors());
			model.addAttribute("error", "Invalid Credentials. Please try again.");
			return "gymbuddy/wall.jsp";
		} else {
			msg.setReceiver(receiver);
			msg.setId(null);
			messageService.create(msg);
//messageService.update(msg);
//messages.add(msg);
//users.setMessages(messages);
			return "redirect:/user/{id}";
		}
	}
}