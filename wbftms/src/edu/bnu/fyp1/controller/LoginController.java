package edu.bnu.fyp1.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.bnu.fyp1.entity.Role;
import edu.bnu.fyp1.entity.User;
import edu.bnu.fyp1.service.UserService;

@Controller
public class LoginController {
	@Autowired
	private UserService userService;

	@RequestMapping(value = "/Login", method = RequestMethod.GET)
	public String Login(Model model, HttpSession session) {
		String url = "";
		if (session.getAttribute("Active") != null
				&& session.getAttribute("Active") == "1") {

			url = "Home";
		} else {
			model.addAttribute("user", new User());
			url = "Login";
		}
		return url;
	}

	@RequestMapping(value = "/doLogin", method = RequestMethod.POST)
	public String doLogin(Model model, @ModelAttribute User user,
			HttpSession session) {
		List<User> userList = new ArrayList<>();
		String url = "Login";
		int status=1;
		List<Role> roleList = new ArrayList<>();
		try {
			userList = userService.getAllUser();
			for (User user2 : userList) {
				if (user2.getUserName().equals(user.getUserName())
						&& user2.getUserPassword().equals(
								user.getUserPassword())
						&& user2.getUserPending() == 0 && user2.getUserBlock() == 0 ) {
					session.setAttribute("userId", user2.getUserId());
					session.setAttribute("userName", user2.getUserName());
					session.setAttribute("userFirstName",
							user2.getUserFirstname());
					session.setAttribute("userLastName",
							user2.getUserLastname());
					status=1;
					String role1 = "";
					String role2 = "";
					String role3 = "";
					int counter = 1;
					try {
						roleList = userService.getUserRolebyid(user2
								.getUserId());
						for (Role role : roleList) {
							if (counter == 1) {
								role1 = role.getUserRole();
							}
							if (counter == 2) {
								role2 = role.getUserRole();
							}
							if (counter == 3) {
								role3 = role.getUserRole();
							}

							counter++;
						}
						counter = 1;
						session.setAttribute("role1", role1);
						session.setAttribute("role2", role2);
						session.setAttribute("role3", role3);
					} catch (Exception e) {
						e.printStackTrace();
					}
					session.setAttribute("Active", "1");

					url = "redirect:/Home.bnu";
				}
				else{
					status=0;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("Status",status);
		return url;
	}

	@RequestMapping(value = "/Register", method = RequestMethod.GET)
	public String Register(Model model) {
		model.addAttribute("user", new User());
		return "Register";
	}

	@RequestMapping(value = "/Registeration", method = RequestMethod.POST)
	public String Register(Model model, User user) {
		try {
			user.setUserPending(1);
			user.setUserBlock(0);
			List<User> userList = new ArrayList<>();
			Role role = new Role();
			userService.addUser(user);
			userList=userService.getAllUser();
			for (User user2 : userList) {
				if (user2.getUserName().equals(user.getUserName())
						&& user2.getUserPassword().equals(
								user.getUserPassword())) {
					role.setUserId(user2.getUserId());
					role.setUserRole(user.getUserRole());
					userService.insertuseRole(role);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/Login.bnu";
	}

	@RequestMapping(value = "/Logout", method = RequestMethod.GET)
	public String Logout(Model model, HttpSession session) {

		session.invalidate();

		return "redirect:/Login.bnu";
	}
}
