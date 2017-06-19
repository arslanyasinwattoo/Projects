/** @ author Arslanyasinwattoo
 * 
 */
package edu.bnu.Lcs.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import edu.bnu.Lcs.entity.AccountHead;
import edu.bnu.Lcs.entity.Users;
import edu.bnu.Lcs.service.UserService;
import edu.bnu.Lcs.util.DateTimeUtil;

/**
 * @author Arslanyasinwattoo
 * 
 */
@Controller
public class LoginController {
	@Autowired
	private UserService userService;

	@RequestMapping(value = "/Login", method = RequestMethod.GET)
	public String Login(Model model, HttpSession session) {
		String url = "";
		if (session.getAttribute("Active") != null
				&& session.getAttribute("Active") == "1") {
			url = "redirect:/Home.Inn";
		} else {
			url = "Login";
		}
		return url;
	}

	@RequestMapping(value = "/Register", method = RequestMethod.GET)
	public String Register(Model model, HttpSession session) {
		String url = "Register";
		return url;
	}

	@RequestMapping(value = "/ALogin", method = RequestMethod.GET)
	public String ALogin(Model model, HttpSession session) {
		// System.out.println("Alogin");
		return "ALogin";
	}

	@RequestMapping(value = "/DoALogin")
	public String DoALogin(@RequestParam("Email") String Email,
			@RequestParam("Password") String Password, Model model,
			@ModelAttribute Users user, HttpSession session) {
		String url = "";
		if (session.getAttribute("Active") == null) {
			// Users user1 = new Users();
			AccountHead accountHead = new AccountHead();
			accountHead.setUserEmailid(Email);
			accountHead.setUserPassword(Password);
			try {
				accountHead = userService.findAUserByEmail(accountHead);
			} catch (Exception e) {
				System.out.println("error here"); // TODO: handle exception
			}
			if (accountHead.getUserId() != null) {
				session.setAttribute("userId", accountHead.getUserId());
				session.setAttribute("headId", accountHead.getAccountHeadId());
				session.setAttribute("firstName",
						accountHead.getUserFirstName());
				session.setAttribute("lastName", accountHead.getUserLastName());
				session.setAttribute("EmailId", accountHead.getUserEmailid());
				session.setAttribute("userName", accountHead.getUsername());
				session.setAttribute("Active", "1");
				session.setAttribute("Role", "accountant");

			} else {
				url = "ALogin";
				model.addAttribute("Status", "0");
			}
		} else {
			url = "redirect:/Home.Inn";
		}
		return url;
	}

	@RequestMapping(value = "/AdminRegister", method = RequestMethod.GET)
	public String DoRegister(Model model, HttpSession session) {

		return "AdminRegister";
	}

	@RequestMapping(value = "/DoAdminRegister", method = RequestMethod.POST)
	public String AdminRegister(@RequestParam("userName") String userName,
			@RequestParam("FirstName") String firstName,
			@RequestParam("LastName") String lastName,
			@RequestParam("Email") String email,
			@RequestParam("Password") String password,
			@RequestParam("Cnic") String cnicNo,
			@RequestParam("ContactNo") String contactNo, Model model, Users user) {
		String url = "AdminRegister";
		Date date = new Date();
		DateTimeUtil dtu = new DateTimeUtil();
		user.setUserName(userName);
		user.setUserEmialid(email);
		user.setUserPassword(password);
		user.setFirstName(firstName);
		user.setLastName(lastName);
		user.setUserCnic(cnicNo);
		user.setContactNumber(Long.parseLong(contactNo));
		user.setRole("Admin");

		Boolean status = null;
		if (user.getUserName() != null && user.getUserEmialid() != null
				&& user.getFirstName() != null && user.getLastName() != null
				&& user.getUserPassword() != null) {
			try {

				user.setStartDate(dtu.converToSQLDate(date));
				user.setStartTime(dtu.converToSQLTime(date));
				user.setStatus(1l);
				user.setBlock(0l);
				status = userService.addUser(user);

				url = "redirect:/Login.Inn";
			} catch (Exception e) {
				model.addAttribute("Status", status);
				e.printStackTrace();
			}
		} else {
			model.addAttribute("Status", "0");
		}
		return url;

	}

	@RequestMapping(value = "/Home", method = RequestMethod.GET)
	public String Home() {

		return "Home";
	}
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index() {

		return "Login";
	}

	@RequestMapping(value = "/DoLogin")
	public String DoLogin(@RequestParam("Email") String Email,
			@RequestParam("Password") String Password, Model model,
			@ModelAttribute Users user, HttpSession session) {
		String url = "";
		if (session.getAttribute("Active") == null) {
			Users user1 = new Users();
			user.setUserEmialid(Email);
			user.setUserPassword(Password);
			try {
				user1 = userService.findUserByEmail(user);
			} catch (Exception e) {
				System.out.println("error here"); // TODO: handle exception
			}
			if (user1.getUsersId() != null) {
				session.setAttribute("userId", user1.getUsersId());
				session.setAttribute("firstName", user1.getFirstName());
				session.setAttribute("lastName", user1.getLastName());
				session.setAttribute("EmailId", user1.getUserEmialid());
				session.setAttribute("userName", user1.getUserName());
				session.setAttribute("Active", "1");
				session.setAttribute("Role", user1.getRole());
				if (user1.getRole().equalsIgnoreCase("Admin")) {
					url = "redirect:/AdminHome.Inn";
				} else {
					url = "redirect:/Home.Inn";
				}
			} else {
				url = "Login";
				model.addAttribute("Status", "0");
			}
		} else {
			url = "redirect:/Home.Inn";
		}
		return url;
	}

	@RequestMapping(value = "/DoRegister")
	public String Register(@RequestParam("userName") String userName,
			@RequestParam("FirstName") String firstName,
			@RequestParam("LastName") String lastName,
			@RequestParam("Email") String email,
			@RequestParam("Password") String password,
			@RequestParam("Cnic") String cnicNo,
			@RequestParam("ContactNo") String contactNo, Model model, Users user) {
		String url = "Register";
		Date date = new Date();
		DateTimeUtil dtu = new DateTimeUtil();
		user.setUserName(userName);
		user.setUserEmialid(email);
		user.setUserPassword(password);
		user.setFirstName(firstName);
		user.setLastName(lastName);
		user.setUserCnic(cnicNo);
		user.setContactNumber(Long.parseLong(contactNo));
		user.setRole("user");

		Boolean status = null;
		if (user.getUserName() != null && user.getUserEmialid() != null
				&& user.getFirstName() != null && user.getLastName() != null
				&& user.getUserPassword() != null) {
			try {

				user.setStartDate(dtu.converToSQLDate(date));
				user.setStartTime(dtu.converToSQLTime(date));
				user.setStatus(1l);
				user.setBlock(0l);
				status = userService.addUser(user);

				url = "redirect:/Login.Inn";
			} catch (Exception e) {
				model.addAttribute("Status", status);
				e.printStackTrace();
			}
		} else {
			model.addAttribute("Status", "0");
		}
		return url;
	}

	@RequestMapping(value = "/Logout")
	public String Logout(HttpSession session) {
		session.invalidate();
		return "redirect:/Login.Inn";
	}
}
