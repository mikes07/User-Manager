package com.mikael.usermanager.web;

import java.util.Map;

import com.mikael.usermanager.domain.User;
import com.mikael.usermanager.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UserController {

	@Autowired
	private UserService userService;

	@RequestMapping("/login")
	public String login() {
		return "login";
	}

	@RequestMapping("/index")
	public String listUsers(Map<String, Object> map) {

		map.put("users", userService.listUser());

		return "index";
	}
	
	@RequestMapping("/")
	public String home() {
		return "redirect:/index";
	}

	@RequestMapping(value="/new", method = RequestMethod.GET)
	public String newUser(@ModelAttribute("user") User user) {
		return "newuser";
	}

	@RequestMapping(value = "/new", method = RequestMethod.POST)
	public String addUser(User user, BindingResult result) {

		userService.addUser(user);

		return "redirect:/index";
	}

	@RequestMapping(value = "/update/{userId}", method = RequestMethod.GET)
	public String updateUser(@PathVariable("userId") Integer userId, @ModelAttribute("user") User user, Map<String, Object> map) {

		map.put("users", userService.getUserById(userId));

		return "updateuser";
	}

	@RequestMapping(value = "/update/{userId}", method = RequestMethod.POST)
	public String update(User user, BindingResult result) {

		userService.update(user);

		return "redirect:/index";
	}

	@RequestMapping("/delete/{userId}")
	public String deleteUser(@PathVariable("userId") Integer userId) {

		userService.removeUser(userId);

		return "redirect:/index";
	}

	@RequestMapping("/user/{userId}")
	public String userInfo(@PathVariable("userId") Integer id, Map<String, Object> map) {

		map.put("users", userService.getUserById(id));

		return "userinfo";
	}

}
