package com.project.freefay.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.nio.file.Files;
import java.security.MessageDigest;
import java.security.Provider.Service;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpSession;

import org.apache.velocity.runtime.directive.Foreach;
import org.hibernate.annotations.OptimisticLock;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import ch.qos.logback.core.db.dialect.DBUtil;

import com.project.freefay.entity.Attachments;
import com.project.freefay.entity.Authorities;
import com.project.freefay.entity.AuthoritiesId;
import com.project.freefay.entity.Basics;
import com.project.freefay.entity.Category;
import com.project.freefay.entity.Cities;
import com.project.freefay.entity.CompanyNotification;
import com.project.freefay.entity.Countries;
import com.project.freefay.entity.Fields;
import com.project.freefay.entity.JobDetails;
import com.project.freefay.entity.MailInfo;
import com.project.freefay.entity.MessageHeads;
import com.project.freefay.entity.Messages;
import com.project.freefay.entity.News;
import com.project.freefay.entity.Portfolio;
import com.project.freefay.entity.Regions;
import com.project.freefay.entity.Requests;
import com.project.freefay.entity.Services;
import com.project.freefay.entity.Static;
import com.project.freefay.entity.SubCategory;
import com.project.freefay.entity.Testimonials;
import com.project.freefay.entity.Token;
import com.project.freefay.entity.Users;
import com.project.freefay.entity.UsersId;
import com.project.freefay.entity.Usersp;
import com.project.freefay.mail.Mail;
import com.project.freefay.mail.Verification;
import com.project.freefay.service.UserService;
import com.project.freefay.service.UserServicep;
import com.project.freefay.util.DateTimeUtil;
import com.sun.org.apache.xml.internal.security.utils.Base64;

/**
	 *
	 */
@Controller
public class LoginController {
	@Autowired
	private UserService userService;
	@Autowired
	private UserServicep userServicep;

	// private static final Logger logger =
	// LoggerFactory.getLogger(HomePageController.class);

	@RequestMapping(value = "/login")
	public String showLoginPage() {
		// logger.info("Going to Load Login Form");

		return "Login";
	}

	@RequestMapping(value = "/public/index")
	public String index(Model model, HttpSession session) {
		// logger.info("Going to Load Login Form");

		List<Requests> requests = new ArrayList<>();
		List<Services> services = new ArrayList<>();
		String url = "";
		Basics basics = new Basics();
		List<Basics> list = new ArrayList<>();
		List<News> news = new ArrayList<>();
		List<Testimonials> testimonials = new ArrayList<>();
		try {
			List<Category> categories = new ArrayList<>();
			categories = userService.getCategoryMenu();
			model.addAttribute("menu", categories);
			list = userService.getBasics();
			news = userService.getTopActiveNews();
			testimonials = userService.getTopTestimonials();

			for (Basics basics2 : list) {
				basics = basics2;
			}

			requests = userService.getLimitedRequests();
			services = userService.getLimitedServices();
			for (Requests requests2 : requests) {
				System.out.println("1");
				System.out.println("request->" + requests2.getRequestName());

			}
			model.addAttribute("requests", requests);
			model.addAttribute("services", services);
			model.addAttribute("cms", basics);
			model.addAttribute("testimonials", testimonials);
			model.addAttribute("news", news);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return "index";
	}

	@RequestMapping(value = "/public/home")
	public String home(HttpSession session, Model model) {
		// logger.info("Going to Load Login Form");
		List<Requests> requests = new ArrayList<>();
		List<Services> services = new ArrayList<>();
		String url = "";
		Basics basics = new Basics();
		List<Basics> list = new ArrayList<>();
		List<News> news = new ArrayList<>();
		List<Testimonials> testimonials = new ArrayList<>();
		try {
			List<Category> categories = new ArrayList<>();
			categories = userService.getCategoryMenu();
			model.addAttribute("menu", categories);
			list = userService.getBasics();
			news = userService.getTopActiveNews();
			testimonials = userService.getTopTestimonials();

			for (Basics basics2 : list) {
				basics = basics2;
			}

			requests = userService.getLimitedRequests();
			services = userService.getLimitedServices();
			for (Requests requests2 : requests) {
				System.out.println("1");
				System.out.println("request->" + requests2.getRequestName());

			}
			model.addAttribute("requests", requests);
			model.addAttribute("services", services);
			model.addAttribute("cms", basics);
			model.addAttribute("testimonials", testimonials);
			model.addAttribute("news", news);
		} catch (Exception e) {
			e.printStackTrace();
		}
		session.setAttribute("dashBoard", '1');
		return "home";
	}

	@RequestMapping(value = "/user/home")
	public String userhome(HttpSession session, Model model) {
		List<Requests> requests = new ArrayList<>();
		List<Services> services = new ArrayList<>();
		String url = "";
		Basics basics = new Basics();
		List<Basics> list = new ArrayList<>();
		List<News> news = new ArrayList<>();
		List<Testimonials> testimonials = new ArrayList<>();
		try {
			List<Category> categories = new ArrayList<>();
			categories = userService.getCategoryMenu();
			model.addAttribute("menu", categories);
			list = userService.getBasics();
			news = userService.getTopActiveNews();
			testimonials = userService.getTopTestimonials();

			for (Basics basics2 : list) {
				basics = basics2;
			}

			requests = userService.getLimitedRequests();
			services = userService.getLimitedServices();
			for (Requests requests2 : requests) {
				System.out.println("1");
				System.out.println("request->" + requests2.getRequestName());

			}
			model.addAttribute("requests", requests);
			model.addAttribute("services", services);
			model.addAttribute("cms", basics);
			model.addAttribute("testimonials", testimonials);
			model.addAttribute("news", news);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		session.setAttribute("dashBoard", '0');
		return "index";
	}

	@RequestMapping(value = "/admin/home")
	public String adminhome(HttpSession session, Model model) {
		List<Requests> requests = new ArrayList<>();
		List<Services> services = new ArrayList<>();
		String url = "";
		Basics basics = new Basics();
		List<Basics> list = new ArrayList<>();
		List<News> news = new ArrayList<>();
		List<Testimonials> testimonials = new ArrayList<>();
		try {
			List<Category> categories = new ArrayList<>();
			categories = userService.getCategoryMenu();
			model.addAttribute("menu", categories);
			list = userService.getBasics();
			news = userService.getTopActiveNews();
			testimonials = userService.getTopTestimonials();

			for (Basics basics2 : list) {
				basics = basics2;
			}

			requests = userService.getLimitedRequests();
			services = userService.getLimitedServices();
			for (Requests requests2 : requests) {
				System.out.println("1");
				System.out.println("request->" + requests2.getRequestName());

			}
			model.addAttribute("requests", requests);
			model.addAttribute("services", services);
			model.addAttribute("cms", basics);
			model.addAttribute("testimonials", testimonials);
			model.addAttribute("news", news);

		} catch (Exception e) {
			e.printStackTrace();
		}
		// logger.info("Going to Load Login Form");
		// logger.info("Going to Load Login Form");
		session.setAttribute("dashBoard", '0');
		return "index";
	}

	@RequestMapping(value = "/admin/dashboard")
	public String admindashboard(HttpSession session, Model model) {
		// logger.info("Going to Load Login Form");
		session.setAttribute("dashBoard", '1');
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String role = auth.getAuthorities().toString();
		System.out.println("role" + role);
		// pendingusers
		// activeusers
		// blockedusers
		List<Users> pending = new ArrayList<>();
		List<Users> active = new ArrayList<>();
		List<Users> unactive = new ArrayList<>();
		List<Users> blocked = new ArrayList<>();
		List<Users> total = new ArrayList<>();
		int totalno = 0;
		int activeno = 0;
		int unactiveno = 0;
		int pendingno = 0;
		int blockedno = 0;
		// Users users = new Users();
		try {
			total = userService.getAllUsers();
			// users.setActive(1);
			active = userService.getAllactiveUsers();
			// users = new Users();
			// users.setBlocked(1);
			blocked = userService.getAllblockedUsers();
			// users = new Users();
			// users.setVerified(0);
			pending = userService.getAllpendingUsers();
			// users = new Users();
			// users.setActive(0);
			unactive = userService.getAllunactiveUsers();
			for (Users users1 : active) {
				activeno++;
				System.out.println(users1.getId().getUsername());
			}
			for (Users users1 : unactive) {
				unactiveno++;
				System.out.println(users1.getId().getUsername());
			}
			for (Users users1 : pending) {
				pendingno++;
				System.out.println(users1.getId().getUsername());
			}
			for (Users users1 : blocked) {
				blockedno++;
				System.out.println(users1.getId().getUsername());
			}
			for (Users users1 : total) {
				totalno++;
				System.out.println(users1.getId().getUsername());
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		model.addAttribute("active", activeno);
		model.addAttribute("unactive", unactiveno - 1);
		model.addAttribute("pending", pendingno);
		model.addAttribute("blocked", blockedno);
		model.addAttribute("total", totalno - 1);
		String url = "";
		if (role.equalsIgnoreCase("[Role_Admin]")) {
			url = "admin-dashBoard";
		}
		return url;
	}

	@RequestMapping(value = "/user/dashboard")
	public String userdashboard(HttpSession session, Model model) {
		// logger.info("Going to Load Login Form");
		session.setAttribute("dashBoard", '1');
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String role = auth.getAuthorities().toString();
		System.out.println("role" + role);
		String url = "";
		Basics basics = new Basics();
		List<Basics> list = new ArrayList<>();
		List<News> news = new ArrayList<>();
		List<Testimonials> testimonials = new ArrayList<>();
		try {
			List<Category> categories = new ArrayList<>();
			categories = userService.getCategoryMenu();
			model.addAttribute("menu", categories);
			news = userService.getTopActiveNews();
			testimonials = userService.getTopTestimonials();

			list = userService.getBasics();
			for (Basics basics2 : list) {
				basics = basics2;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("cms", basics);
		model.addAttribute("testimonials", testimonials);
		model.addAttribute("news", news);
		if (role.equalsIgnoreCase("[Role_User]")) {
			url = "user-dashBoard";
		}

		return url;
	}

	// ========================UserVerification========================================
	// completing/updating users basic information
	@RequestMapping(value = "reSendToken", method = RequestMethod.GET)
	public String reSendToken(Model model, String token) {
		List<Token> tokens = new ArrayList<>();
		Token token3 = new Token();
		Users users = new Users();
		token = token.replaceAll(Pattern.quote(" "), "+");
		System.out.println("in verification----------------------------");
		List<Users> list = new ArrayList<>();
		System.out.println("token in verification---->" + token);
		if (!token.isEmpty()) {
			try {
				System.out.println("token->" + token);
				tokens = userService.getActiveTokens();
				for (Token token2 : tokens) {
					System.out.println("token name->" + token2.getTokenName());
					if (token2.getTokenName().equals(token)) {
						token3 = token2;
						list = userService.getAllUsers();
						for (Users users2 : list) {
							if (users2.getId().getUsersId() == token3
									.getUsers().getId().getUsersId()) {
								users = users2;
							}
						}

					}
				}
				MailInfo info = new MailInfo();
				info.setFrom("noReply@freefrae.com");
				info.setSubject("Verification of Account");
				info.setContent(token3.getTokenName());
				System.out.println(token3.getTokenName());

				System.out.println("going to send mail");
				String[] emails = { users.getEmailId() };

				Mail mail = new Mail();
				mail.SendMail(users.getId().getUsername(), emails, info,
						"verification");
				System.out.println("sent i guess-----------------------------");

				model.addAttribute("token", token3.getTokenName());
				model.addAttribute("email", users.getEmailId());
				model.addAttribute("username", users.getId().getUsername());
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return "token";
	}

	@RequestMapping(value = "/public/changeEmailId", method = RequestMethod.POST)
	public String changeEmailId(Model model,
			@RequestParam("username") String username,
			@RequestParam("emailId") String emailId,
			@RequestParam("oldemailId") String oldemailId,
			@RequestParam("token") String token) {
		Users users = new Users();
		List<Users> list = new ArrayList<>();
		try {
			list = userService.getAllUsers();
			System.out.println(username);
			System.out.println(emailId);
			for (Users users2 : list) {
				System.out.println("user names->"
						+ users2.getId().getUsername());
				if (users2.getId().getUsername().equalsIgnoreCase(username)) {
					users = users2;
					users.setEmailId(emailId);
					userService.addUsers(users);
					System.out.println("success-------------------------");
				}
			}
			MailInfo info = new MailInfo();
			info.setFrom("noReply@freefrae.com");
			info.setSubject("Verification of Account");
			info.setContent(token);
			System.out.println(token);

			System.out.println("going to send mail");
			String[] emails = { users.getEmailId() };

			Mail mail = new Mail();
			mail.SendMail(users.getId().getUsername(), emails, info,
					"verification");
			System.out.println("sent i guess-----------------------------");
			model.addAttribute("token", token);
			model.addAttribute("status", 1);
			model.addAttribute("email", users.getEmailId());
			model.addAttribute("username", users.getId().getUsername());
		} catch (Exception e) {
			e.printStackTrace();

		}
		return "token";
	}

	@RequestMapping(value = "/verification", method = RequestMethod.GET)
	public String publicVerification(Model model, String token) {
		List<Token> tokens = new ArrayList<>();
		Token token3 = new Token();
		Users users = new Users();
		token = token.replaceAll(Pattern.quote(" "), "+");

		System.out.println("in verification----------------------------");
		List<Users> list = new ArrayList<>();
		System.out.println("token in verification---->" + token);
		if (!token.isEmpty()) {
			try {
				System.out.println("token->" + token);
				tokens = userService.getActiveTokens();
				for (Token token2 : tokens) {
					System.out.println("token name->" + token2.getTokenName());
					if (token2.getTokenName().equals(token)) {
						token3 = token2;
						token3.setActive((long) 0);
						userService.addToken(token3);
						list = userService.getAllUsers();

						for (Users users2 : list) {
							if (users2.getId().getUsersId() == token3
									.getUsers().getId().getUsersId()) {
								users = users2;
								users.setVerified(1);
								users.setEnabled((byte) 1);

								userService.addUsers(users);
								System.out
										.println("success-------------------------");
							}
						}

					}
				}
				// countries = userService.getAllCountries();
				// SimpleRegistrationService registrationService = new
			} catch (Exception e) {
				e.printStackTrace();
			}
			// model.addAttribute("countries", countries);
			// SimpleRegistrationService();
		}
		return "redirect:/login.io";
	}

	// ===============CompletingProfile===========================================
	// completing/updating users basic information
	@RequestMapping(value = "/public/completeProfile", method = RequestMethod.GET)
	public String completeProfile(Model model) {
		List<Countries> countries = new ArrayList<>();

		try {
			countries = userService.getAllCountries();
			// SimpleRegistrationService registrationService = new
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("countries", countries);
		// SimpleRegistrationService();
		return "completeProfile";
	}

	@RequestMapping(value = "/AjaxRegions", method = RequestMethod.GET)
	public String ajaxCompleteProfileRegions(Model model, String code,
			HttpSession session) {
		List<Regions> regions = new ArrayList<>();
		Regions regions2 = new Regions();
		try {
			regions2.setCountry(code);
			System.out.println("countryCode" + code);
			if (!code.equals("")) {
				regions = userService.getRegionsByCode(regions2);

				for (Regions region : regions) {
					System.out.println(region.getName());
				}// model.addAttribute("FoodTypes", new FoodType());
				model.addAttribute("regions", regions);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "ajax-jsps/regionsAjax";
	}

	@RequestMapping(value = "/AjaxCities", method = RequestMethod.GET)
	public String ajaxCompleteProfileCities(Model model, String region,
			String countryId, HttpSession session) {
		List<Cities> cities = new ArrayList<>();
		Cities cities2 = new Cities();
		try {
			System.out.println(region);
			// Pattern p = Pattern.compile("-");
			// Matcher m = p.matcher(region);
			// String id = m.replaceAll("%");
			String[] id = region.split("-");
			System.out.println("0 index" + id[0]);
			System.out.println("1- index" + id[1]);

			// System.out.println("after matcher" + id);
			cities2.setCountryCode(countryId);
			cities2.setRegion(id[0]);
			cities = userService.getAllCitiesByRegion(cities2);
			for (Cities citie3 : cities) {
				System.out.println(citie3.getName());
			}
			// System.out.println(countryId);
			// System.out.println(region);
			model.addAttribute("cities", cities);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "ajax-jsps/citiesAjax";
	}

	// ======================================================================
	@RequestMapping(value = "/public/home", method = RequestMethod.GET)
	public String showHomePage(Model model) {
		// SimpleRegistrationService registrationService = new
		// SimpleRegistrationService();
		Basics basics = new Basics();
		List<Basics> list = new ArrayList<>();
		List<News> news = new ArrayList<>();
		List<Testimonials> testimonials = new ArrayList<>();
		try {
			List<Category> categories = new ArrayList<>();
			categories = userService.getCategoryMenu();
			model.addAttribute("menu", categories);
			news = userService.getTopActiveNews();
			testimonials = userService.getTopTestimonials();

			list = userService.getBasics();
			for (Basics basics2 : list) {
				basics = basics2;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("cms", basics);
		model.addAttribute("testimonials", testimonials);
		model.addAttribute("news", news);
		return "home";
	}

	// @RequestMapping(value = "/public/sendEmail", method = RequestMethod.GET)
	// public String sendEmail() {
	// SimpleRegistrationService sendmail = new SimpleRegistrationService();
	// Users users = new Users();
	// UsersId user = new UsersId();
	// user.setUsername("Arslanyasin");
	// users.setEmailId("arslanyasinwattoo@gmail.com");
	// users.setId(user);
	// sendmail.verificationMail(users);
	//
	// return "home";
	// }

	@RequestMapping(value = "/public/RegisterUser")
	public String UserRegisterPage(Model model) {
		// logger.info("Going to Load Login Form");
		// List<Countries> countries = new ArrayList<>();
		try {
			// countries = userService.getCountries();

		} catch (Exception e) {
			e.printStackTrace();
		}
		// logger.info("Going to Load Login Form");
		// model.addAttribute("countires", countries);
		model.addAttribute("check", 1);
		return "RegisterUsers";
	}

	@RequestMapping(value = "/admin/RegisterUser")
	public String SysAdminRegisterPage(Model model) {
		model.addAttribute("check", 2);
		// logger.info("Going to Load Login Form");
		return "RegisterUser";
	}

	@RequestMapping(value = "/public/saveRUser")
	public String SaveRegister(Model model,
			@RequestParam("emailId") String emailId,
			@RequestParam("username") String username,
			@RequestParam("password") String password,
			// @RequestParam("countryId") Long countryid,
			@RequestParam("Gender") String gender,
			@RequestParam("check") int check) {
		Users users = new Users();
		UsersId id = new UsersId();
		DateTimeUtil dt = new DateTimeUtil();
		Date date = new Date();
		try {
			MessageDigest md = MessageDigest.getInstance("SHA-1");
			md.update(password.getBytes());

			byte byteData[] = md.digest();
			String ppp = Base64.encode(byteData);
			System.out.println(ppp);
			users.setPassword(ppp);
			byte a = 0;
			users.setEnabled(a);
			users.setEmailId(emailId);
			byte block = 0;
			id.setUsername(username);
			users.setId(id);
			users.setGender(gender);
			users.setVerified(0);
			users.setActive(0);
			users.setBlocked(block);
			users.setFirstName("null");
			users.setLastName("null");
			users.setContactNo("null");
			users.setDob("null");

			Countries countries = new Countries();
			countries.setCountriesId((long) 0);
			users.setCountries(countries);
			users.setDate(dt.converToSQLDate(date));
			users.setTime(dt.converToSQLTime(date));
			Regions regions = new Regions();
			Cities cities = new Cities();
			regions.setId(0);
			cities.setCitiesId(0);
			users.setRegions(regions);
			users.setCities(cities);
			users.setPostalCode("null");
			users.setAddress("null");
			userService.addUsers(users);
			List<Users> users2 = new ArrayList<>();
			System.out.println("id----");
			users2 = userService.getUserIds(users.getId().getUsername());
			for (Users users3 : users2) {
				System.out.println(users3.getId().getUsername());
				System.out.println(users3.getId().getUsersId());
				users.setId(users3.getId());
			}
			Authorities authorities = new Authorities();
			AuthoritiesId authoritiesId = new AuthoritiesId();
			authoritiesId.setUsername(users.getId().getUsername());
			authoritiesId.setUsersId(users.getId().getUsersId());
			authorities.setUsers(users);
			authorities.setId(authoritiesId);
			if (check == 1) {
				System.out.println("check==1");
				authorities.setAuthority("Role_User");
			} else if (check == 2) {
				System.out.println("check==2");
				authorities.setAuthority("Role_Admin");
			}
			System.out.println(authorities.getUsers().getId().getUsersId());
			System.out.println(authorities.getUsers().getId().getUsername());
			System.out.println(authorities.getAuthority());
			userService.addauthority(authorities);
			System.out.println(users.getEmailId());
			Portfolio portfolio = new Portfolio();
			portfolio.setDate(users.getDate());
			portfolio.setTime(users.getTime());
			portfolio.setUsers(users);
			portfolio.setActive(1);
			portfolio.setBlocked(0);
			portfolio.setPortfolioImageId(0);
			portfolio.setPortfolioName("PortfolioName");
			portfolio.setPortfolioPitch("portfolioPitch");
			portfolio.setExperienceDescription("ExperienceDescription");
			userService.addPortfolio(portfolio);
			Token token = new Token();
			token.setActive((long) 1);
			token.setDate(dt.converToSQLDate(date));
			token.setTime(dt.converToSQLTime(date));
			token.setUsers(users);
			Verification verification = new Verification();
			token.setTokenName(verification.token(users.getId().getUsername()));
			userService.addToken(token);
			MailInfo info = new MailInfo();
			info.setFrom("noReply@freefrae.com");
			info.setSubject("Verification of Account");
			info.setContent(token.getTokenName());
			System.out.println(token.getTokenName());
			// SimpleRegistrationService sendmail = new
			// SimpleRegistrationService();
			// sendmail.verificationMail(users);
			System.out.println("going to send mail");
			String[] emails = { users.getEmailId() };

			Mail mail = new Mail();
			// mail.SendMail(users.getId().getUsername(), emails, info);
			System.out.println("sent i guess-----------------------------");
			model.addAttribute("token", token.getTokenName());
			model.addAttribute("email", users.getEmailId());
			model.addAttribute("username", users.getId().getUsername());

		} catch (Exception e) {
			e.printStackTrace();
		}
		return "token";
	}

	@RequestMapping(value = "/public/updateUser", method = RequestMethod.POST)
	public String UpdateUserProfile(Model model,
			@RequestParam("name-v") String firstName,
			@RequestParam("surname-v") String lastName,
			@RequestParam("tel-v") String contactNo,
			@RequestParam("dob") String dob,
			@RequestParam("countryId") String countryId,
			@RequestParam("regionsId") String region,
			@RequestParam("citiesId") long citiesId,
			@RequestParam("address-v") String address,
			@RequestParam("postal-v") String postalCode,
			@RequestParam("acceptTerms-v") String accept) {
		Users users = new Users();
		UsersId id = new UsersId();
		List<Users> users2 = new ArrayList<>();
		// DateTimeUtil dt = new DateTimeUtil();
		try {
			Authentication auth = SecurityContextHolder.getContext()
					.getAuthentication();
			String username = auth.getName();
			System.out.println(username);
			// Users user = new Users();
			String[] regionsId = region.split("-");
			users2 = userService.getUserIds(username);
			for (Users users3 : users2) {
				id.setUsersId(users3.getId().getUsersId());
				users.setGender(users3.getGender());
				users.setEnabled(users3.getEnabled());
				users.setVerified(users3.getVerified());
				users.setBlocked(users3.getBlocked());
				users.setDate(users3.getDate());
				users.setTime(users3.getTime());
				users.setEmailId(users3.getEmailId());
				users.setPassword(users3.getPassword());
				users.setActive(users3.getActive());

			}
			id.setUsername(username);
			users.setId(id);
			users.setFirstName(firstName);
			users.setLastName(lastName);
			users.setContactNo(contactNo);
			users.setDob(dob);
			// Date date = new Date();

			Countries country = new Countries();
			List<Countries> countries = new ArrayList<>();
			countries = userService.getCountryByCode(countryId);
			for (Countries countries2 : countries) {
				System.out.println(countries2.getName());
				country.setCountriesId(countries2.getCountriesId());
			}
			// country = userService.getCountryByCode(countryId);

			users.setCountries(country);
			// users.setDate(dt.converToSQLDate(date));
			// users.setTime(dt.converToSQLTime(date));
			Regions regions = new Regions();
			Cities cities = new Cities();
			regions.setId(Integer.parseInt(regionsId[1]));
			cities.setCitiesId(citiesId);
			users.setRegions(regions);
			users.setCities(cities);
			users.setPostalCode(postalCode);
			users.setAddress(address);
			userService.addUsers(users);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return "home";
	}

	// =============== Manage Category=================================//
	@RequestMapping(value = "/admin/ListOfCategory")
	public String AdminListOfCategory(Model model,

	@RequestParam(required = false) Long status) {
		model.addAttribute("check", 3);
		List<Category> list = new ArrayList<>();
		try {
			list = userService.getAllCategory();
			model.addAttribute("ListOfCategory", list);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// model.addAttribute("status", status);

		return "admin-ListOfCategory";
	}

	@RequestMapping(value = "/admin/AddCategory")
	public String AdminAddCategory(Model model) {
		return "admin-AddCategory";
	}

	@RequestMapping(value = "/admin/SaveCategory")
	public String AdminSaveCategory(Model model,
			final RedirectAttributes redirectAttributes,
			@RequestParam("name") String name) {
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName();
		System.out.println(username);
		Category category = new Category();
		Date date = new Date();
		DateTimeUtil dt = new DateTimeUtil();
		Users users = new Users();
		UsersId id = new UsersId();
		int status = 0;
		try {
			List<Users> users2 = new ArrayList<>();

			users2 = userService.getUserIds(username);
			Long userId = null;
			for (Users users3 : users2) {
				System.out.println(users3.getId().getUsersId());
				userId = users3.getId().getUsersId();
			}
			category.setActive(1);
			category.setCategoryName(name);
			category.setDate(dt.converToSQLDate(date));
			category.setTime(dt.converToSQLTime(date));
			id.setUsername(username);
			id.setUsersId(userId);
			users.setId(id);
			category.setUsers(users);
			userService.addCategory(category);
			status = 1;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		redirectAttributes.addFlashAttribute("status", 1);
		return "redirect:/admin/AddCategory.io";
	}

	@RequestMapping(value = "/admin/updateCategory", method = RequestMethod.GET)
	public String upDateCategory(Model model,
			final RedirectAttributes redirectAttributes,
			@RequestParam(required = true) Long categoryId, Integer active) {
		Category category = new Category();
		category.setCategoryId(categoryId);
		int status = 0;
		try {

			category = userService.getCategory(category);
			System.out.println(category.getCategoryName());
			category.setActive(active);
			userService.updateCategory(category);
			status = 1;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		redirectAttributes.addFlashAttribute("status", 1);
		return "redirect:/admin/ListOfCategory.io";
	}

	// =============== Manage SubCategory=================================//
	@RequestMapping(value = "/admin/ListOfSubCategory")
	public String AdminListOfSubCategory(Model model,

	@RequestParam(required = false) Long status) {
		model.addAttribute("check", 3);
		List<SubCategory> list = new ArrayList<>();
		try {
			list = userService.getAllSubCategory();
			model.addAttribute("ListOfSubCategory", list);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// model.addAttribute("status", status);

		return "admin-ListOfSubCategory";
	}

	@RequestMapping(value = "/admin/AddSubCategory")
	public String AdminAddSubCategory(Model model) {
		List<Category> list = new ArrayList<>();
		try {
			list = userService.getAllCategory();
			model.addAttribute("category", list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "admin-AddSubCategory";
	}

	@RequestMapping(value = "/admin/SaveSubCategory")
	public String AdminSaveSubCategory(Model model,
			final RedirectAttributes redirectAttributes,
			@RequestParam("categoryId") long categoryId,
			@RequestParam("name") String name) {
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName();
		System.out.println(username);
		Category category = new Category();
		SubCategory subCategory = new SubCategory();
		Date date = new Date();
		DateTimeUtil dt = new DateTimeUtil();
		Users users = new Users();
		UsersId id = new UsersId();
		category.setCategoryId(categoryId);
		int status = 0;
		try {
			List<Users> users2 = new ArrayList<>();

			users2 = userService.getUserIds(username);
			Long userId = null;
			for (Users users3 : users2) {
				System.out.println(users3.getId().getUsersId());
				userId = users3.getId().getUsersId();
			}
			subCategory.setActive(1);
			subCategory.setSubCategoryName(name);
			subCategory.setDate(dt.converToSQLDate(date));
			subCategory.setTime(dt.converToSQLTime(date));
			id.setUsername(username);
			id.setUsersId(userId);
			users.setId(id);
			subCategory.setUsers(users);
			subCategory.setCategory(category);
			userService.addSubCategory(subCategory);
			status = 1;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		redirectAttributes.addFlashAttribute("status", 1);
		return "redirect:/admin/AddSubCategory.io";
	}

	@RequestMapping(value = "/admin/updateSubCategory", method = RequestMethod.GET)
	public String upDateSubCategory(Model model,
			final RedirectAttributes redirectAttributes,
			@RequestParam(required = true) Long subCategoryId, Integer active) {
		SubCategory category = new SubCategory();
		category.setSubCategoryId(subCategoryId);
		int status = 0;
		try {

			category = userService.getSubCategory(category);
			System.out.println(category.getSubCategoryName());
			category.setActive(active);
			userService.updateSubCategory(category);
			status = 1;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		redirectAttributes.addFlashAttribute("status", 1);
		return "redirect:/admin/ListOfSubCategory.io";
	}

	// =============== Manage Feild=================================//
	@RequestMapping(value = "/admin/ListOfField")
	public String AdminListOfField(Model model,
			@RequestParam(required = false) Long status) {
		model.addAttribute("check", 3);
		List<Fields> list = new ArrayList<>();
		try {
			list = userService.getAllField();
			model.addAttribute("ListOfField", list);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// model.addAttribute("status", status);

		return "admin-ListOfField";
	}

	@RequestMapping(value = "/admin/AddField")
	public String AdminAddField(Model model) {
		List<Category> list = new ArrayList<>();
		try {
			list = userService.getAllCategory();
			model.addAttribute("category", list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "admin-AddField";
	}

	@RequestMapping(value = "/admin/SaveField")
	public String AdminSaveField(Model model,
			final RedirectAttributes redirectAttributes,
			@RequestParam("categoryId") long categoryId,
			@RequestParam("subCategoryId") long subCategoryId,
			@RequestParam("name") String name) {
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName();
		System.out.println(username);
		SubCategory subCategory = new SubCategory();
		Fields fields = new Fields();
		Date date = new Date();
		DateTimeUtil dt = new DateTimeUtil();
		Users users = new Users();
		UsersId id = new UsersId();
		subCategory.setSubCategoryId(subCategoryId);
		int status = 0;
		try {
			List<Users> users2 = new ArrayList<>();

			users2 = userService.getUserIds(username);
			Long userId = null;
			for (Users users3 : users2) {
				System.out.println(users3.getId().getUsersId());
				userId = users3.getId().getUsersId();
			}
			id.setUsername(username);
			id.setUsersId(userId);
			users.setId(id);
			fields.setActive(1);
			fields.setFieldName(name);
			fields.setDate(dt.converToSQLDate(date));
			fields.setTime(dt.converToSQLTime(date));
			fields.setUsers(users);
			fields.setSubCategory(subCategory);
			userService.addFeild(fields);
			status = 1;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		redirectAttributes.addFlashAttribute("status", 1);
		return "redirect:/admin/AddField.io";
	}

	@RequestMapping(value = "/admin/updateField", method = RequestMethod.GET)
	public String upDateField(Model model,
			final RedirectAttributes redirectAttributes,
			@RequestParam(required = true) Long fieldsId, Integer active) {
		// SubCategory category = new SubCategory();
		// category.setSubCategoryId(subCategoryId);
		Fields fields = new Fields();
		fields.setFieldsId(fieldsId);
		int status = 0;
		try {

			fields = userService.getField(fields);
			System.out.println(fields.getFieldName());
			fields.setActive(active);
			userService.updateFields(fields);
			status = 1;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		redirectAttributes.addFlashAttribute("status", 1);
		return "redirect:/admin/ListOfField.io";
	}

	@RequestMapping(value = "/AjaxSubCategory", method = RequestMethod.GET)
	public String ajaxSubcategory(Model model, Long categoryId, String check,
			HttpSession session) {
		List<SubCategory> subCategory = new ArrayList<>();
		String url = "";
		try {

			System.out.println("CategoryID->" + categoryId);
			if (categoryId != 0) {
				subCategory = userService.getSubCategory(categoryId);
				for (SubCategory subCategory2 : subCategory) {
					System.out.println("name->"
							+ subCategory2.getSubCategoryName());
				}
				model.addAttribute("subCategory", subCategory);
			}
			System.out.println(check);
			if (check.equals("fields")) {
				url = "ajax-jsps/subCategoryAjax";
			} else if (check.equals("postRequest")) {
				System.out.println("in post");
				url = "ajax-jsps/subCategoryAjax1";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return url;
	}

	@RequestMapping(value = "/AjaxFields", method = RequestMethod.GET)
	public String ajaxFields(Model model, Long subCategoryId,
			HttpSession session) {
		List<Fields> fields = new ArrayList<>();
		try {

			System.out.println("subCategoryID->" + subCategoryId);
			if (subCategoryId != 0) {
				fields = userService.getFields(subCategoryId);
			}
			model.addAttribute("fields", fields);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return "ajax-jsps/fieldsAjax";
	}

	@RequestMapping(value = "/AjaxRequestsIndex", method = RequestMethod.GET)
	public String AjaxRequestsIndex(Model model, HttpSession session) {
		List<Requests> requests = new ArrayList<>();
		String url = "";
		try {
			requests = userService.getLimitedRequests();
			for (Requests requests2 : requests) {
				System.out.println("1");
				System.out.println("request->" + requests2.getRequestName());

			}
			model.addAttribute("requests", requests);
			url = "";

		} catch (Exception e) {
			e.printStackTrace();
		}
		return "ajax-jsps/RequestsIndexAjax";
	}

	// =========================ManageUsers-Admin========================
	@RequestMapping(value = "admin/ListOfUsers")
	public String AdminListOfUsers(Model model,
			@RequestParam(required = false) Long status) {
		model.addAttribute("check", 3);
		List<Users> users = new ArrayList<>();
		try {
			users = userService.getAllUsers();
			model.addAttribute("ListOfUsers", users);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// model.addAttribute("status", status);

		return "admin-ListOfUsers";
	}

	@RequestMapping(value = "admin/ListOfAdmins")
	public String AdminListOfAdmins(Model model,
			@RequestParam(required = false) Long status) {
		model.addAttribute("check", 3);
		List<Users> admins = new ArrayList<>();
		List<Usersp> adminps = new ArrayList<>();
		Users userss = new Users();
		UsersId id = new UsersId();
		try {
			DateTimeUtil dt = new DateTimeUtil();
			adminps = userServicep.getAllAdminsUsers();
			for (Usersp users2 : adminps) {
				System.out.println("firstname" + users2.getFirstName());
				userss.setActive(users2.getActive());
				userss.setFirstName(users2.getFirstName());
				userss.setLastName(users2.getLastName());
				userss.setContactNo(users2.getContactNo());
				userss.setAddress(users2.getAddress());
				userss.setDate(dt.converToSQLDate(users2.getDate()));
				userss.setTime(dt.converToSQLTime(users2.getTime()));
				userss.setDob(users2.getDob());
				userss.setGender(users2.getGender());
				id.setUsername(users2.getUsername());
				id.setUsersId(users2.getUsersId());
				userss.setId(id);
				userss.setBlocked(users2.getBlocked());
				userss.setVerified(users2.getVerified());
				userss.setEnabled(users2.getEnabled());
				userss.setEmailId(users2.getEmailId());
				admins.add(userss);
			}
			model.addAttribute("ListOfAdmins", admins);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// model.addAttribute("status", status);

		return "admin-ListOfAdmins";
	}

	@RequestMapping(value = "admin/ListOfPendingUsers")
	public String AdminListOfPendingUsers(Model model,
			@RequestParam(required = false) Long status) {
		model.addAttribute("check", 3);
		List<Users> pending = new ArrayList<>();
		try {
			pending = userService.getAllpendingUsers();
			model.addAttribute("ListOfPendingUsers", pending);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// model.addAttribute("status", status);

		return "admin-ListOfPendingUsers";
	}

	@RequestMapping(value = "admin/ListOfActiveUsers")
	public String AdminListOfActiveUsers(Model model,
			@RequestParam(required = false) Long status) {
		model.addAttribute("check", 3);
		List<Users> active = new ArrayList<>();
		try {
			active = userService.getAllactiveUsers();
			model.addAttribute("ListOfActiveUsers", active);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// model.addAttribute("status", status);

		return "admin-ListOfActiveUsers";
	}

	@RequestMapping(value = "admin/ListOfInactiveUsers")
	public String AdminListOfInactiveUsers(Model model,
			@RequestParam(required = false) Long status) {
		model.addAttribute("check", 3);
		List<Users> inactive = new ArrayList<>();
		try {
			inactive = userService.getAllunactiveUsers();
			model.addAttribute("ListOfInactiveUsers", inactive);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// model.addAttribute("status", status);

		return "admin-ListOfInactiveUsers";
	}

	@RequestMapping(value = "admin/ListOfBlockedUsers")
	public String AdminListOfBlockedUsers(Model model,
			@RequestParam(required = false) Long status) {
		model.addAttribute("check", 3);
		List<Users> blocked = new ArrayList<>();
		List<Users> active = new ArrayList<>();
		List<Users> inactive = new ArrayList<>();
		try {
			active = userService.getAllactiveUsers();
			blocked = userService.getAllblockedUsers();
			inactive = userService.getAllunactiveUsers();
			model.addAttribute("ListOfBlockedUsers", blocked);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// model.addAttribute("status", status);

		return "admin-ListOfBlockedUsers";
	}

	@RequestMapping(value = "/admin/updateUsers", method = RequestMethod.GET)
	public String upDateUsers(Model model,
			final RedirectAttributes redirectAttributes,
			@RequestParam(required = true) String usersId, Integer active,
			String check) {
		List<Users> list = new ArrayList<>();
		Users users = new Users();
		int status = 0;
		String url;
		try {
			list = userService.getUserIds(usersId);
			for (Users users2 : list) {
				users = users2;
			}
			System.out.println(users.getId().getUsername());
			if (check.equals("ListOfPendingUsers")) {
				users.setEnabled(active.byteValue());
			} else {
				users.setActive(active);
			}
			userService.addUsers(users);
			status = 1;
			url = check;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		redirectAttributes.addFlashAttribute("status", 1);
		return "redirect:" + check + ".io";
	}

	// ===============ManageProfile====================================
	@RequestMapping(value = "/public/profile")
	public String publicProfile(HttpSession session, Model model) {
		List<Countries> countries = new ArrayList<>();
		List<Users> list = new ArrayList<>();
		Users users = new Users();
		UsersId id = new UsersId();
		// Countries countries2 = new Countries();
		// Regions regions = new Regions();
		// Cities cities = new Cities();
		try {
			Authentication auth = SecurityContextHolder.getContext()
					.getAuthentication();
			String username = auth.getName();
			list = userService.getUserIds(username);
			countries = userService.getAllCountries();
			for (Users users2 : list) {
				users = users2;
			}
			System.out.println("usersname->" + username);
			model.addAttribute("countries", countries);
			model.addAttribute("user", users);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "public-profile";
	}

	@RequestMapping(value = "/public/changePassword")
	public String changePassword(Model model) {

		return "public-changePassword";
	}

	@RequestMapping(value = "/public/updatePassword", method = RequestMethod.GET)
	public String upDateUsersPassword(Model model,
			final RedirectAttributes redirectAttributes,
			@RequestParam(required = true) String changePassword,
			String changePasswordRepeat) {
		List<Users> list = new ArrayList<>();
		Users users = new Users();
		int status = 0;

		try {
			Authentication auth = SecurityContextHolder.getContext()
					.getAuthentication();
			String username = auth.getName();
			list = userService.getUserIds(username);

			for (Users users2 : list) {
				users = users2;
			}
			MessageDigest md = MessageDigest.getInstance("SHA-1");
			md.update(changePassword.getBytes());
			byte byteData[] = md.digest();
			String ppp = Base64.encode(byteData);
			System.out.println(ppp);
			users.setPassword(ppp);
			userService.addUsers(users);
			status = 1;

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		redirectAttributes.addFlashAttribute("status", 1);
		return "redirect:/public/profile.io";
	}

	@RequestMapping(value = "/public/updateUserProfile", method = RequestMethod.POST)
	public String UpdateUserPro(Model model,
			final RedirectAttributes redirectAttributes,
			@RequestParam("firstname") String firstName,
			@RequestParam("lastname") String lastName,
			@RequestParam("dob") String dob,
			@RequestParam("phone") String contactNo,
			@RequestParam("countryId") String countryId,
			@RequestParam("regionsId") String region,
			@RequestParam("citiesId") long citiesId,
			@RequestParam("address") String address,
			@RequestParam("postalCode") String postalCode,
			@RequestParam("file") MultipartFile image) {
		Users users = new Users();
		UsersId id = new UsersId();
		List<Users> users2 = new ArrayList<>();
		// DateTimeUtil dt = new DateTimeUtil();
		try {
			System.out
					.println("--------------------1--------------------------------------");
			System.out
					.println("----------------------1------------------------------------");
			System.out
					.println("-----------------------1-----------------------------------");
			Authentication auth = SecurityContextHolder.getContext()
					.getAuthentication();
			String username = auth.getName();
			System.out.println(username);
			// Users user = new Users();
			String[] regionsId = region.split("-");
			users2 = userService.getUserIds(username);
			for (Users users3 : users2) {
				id.setUsersId(users3.getId().getUsersId());
				users.setGender(users3.getGender());
				users.setEnabled(users3.getEnabled());
				users.setVerified(users3.getVerified());
				users.setBlocked(users3.getBlocked());
				users.setDate(users3.getDate());
				users.setTime(users3.getTime());
				users.setEmailId(users3.getEmailId());
				users.setPassword(users3.getPassword());
				users.setActive(users3.getActive());

			}
			id.setUsername(username);
			users.setId(id);
			users.setFirstName(firstName);
			users.setLastName(lastName);
			users.setContactNo(contactNo);
			users.setDob(dob);
			// Date date = new Date();

			Countries country = new Countries();
			List<Countries> countries = new ArrayList<>();
			countries = userService.getCountryByCode(countryId);
			for (Countries countries2 : countries) {
				System.out.println(countries2.getName());
				country.setCountriesId(countries2.getCountriesId());
			}
			// country = userService.getCountryByCode(countryId);

			users.setCountries(country);
			// users.setDate(dt.converToSQLDate(date));
			// users.setTime(dt.converToSQLTime(date));
			Regions regions = new Regions();
			Cities cities = new Cities();
			if (regionsId.length > 1) {
				regions.setId(Integer.parseInt(regionsId[1]));
			} else {
				regions.setId(Integer.parseInt(regionsId[0]));
			}

			cities.setCitiesId(citiesId);
			users.setRegions(regions);
			users.setCities(cities);
			users.setPostalCode(postalCode);
			users.setAddress(address);
			userService.addUsers(users);
			String location = null;
			System.out
					.println("----------------------------------------------------------");
			System.out
					.println("----------------------------------------------------------");
			System.out
					.println("----------------------------------------------------------");
			if (!image.isEmpty()) {
				byte[] bytes = image.getBytes();

				// Creating the directory to store file
				// String rootPath = System.getProperty("catalina.home");
				// gets the eclispe file destination
				// String add = System.getProperty("user.home");
				// System.out.println(add
				// + "/WebContent/resources/resturantImages/");
				String add = LoginController.class.getProtectionDomain()
						.getCodeSource().getLocation().getPath();
				System.out.println(add);
				// adds the address of the workspace +the path to the image
				// folder
				String add2 = add.substring(0, add.indexOf(".")) + "Freefay"
						+ File.separator + "WebContent" + File.separator
						+ "resources" + File.separator + "profile-images"
						+ File.separator;
				System.out.println(add2);
				// for removing %20 from the adds
				Pattern p = Pattern.compile("%20");
				Matcher m = p.matcher(add2);
				add2 = m.replaceAll(" ");
				// System.out.println(add2);
				File dir = new File(add2);
				// + File.separator + "tmpFiles");
				if (!dir.exists())
					dir.mkdirs();// built in method for creatin folder

				// Create the file on server
				File serverFile = new File(dir.getAbsolutePath()
						+ File.separator + username + "-profile-image.jpg");
				location = dir.getAbsolutePath();
				BufferedOutputStream stream = new BufferedOutputStream(
						new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();

			}
			Date date = new Date();
			DateTimeUtil util = new DateTimeUtil();
			Attachments attachments = new Attachments();
			attachments.setAttachmentDescription("profile-image");
			attachments.setAttchmentName(username + "-profile-image");
			System.out.println("location" + location);
			attachments.setAttachmentLocation(location);
			attachments.setBlocked(0);
			attachments.setDate(util.converToSQLDate(date));
			attachments.setTime(util.converToSQLTime(date));
			attachments.setUsers(users);
			userService.addattachments(attachments);
			redirectAttributes.addFlashAttribute("status", 1);
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println("redirect:/public/profile.io");
		return "redirect:/public/profile.io";
	}

	// ===============ManagePortfolio====================================
	@RequestMapping(value = "/public/portfolio")
	public String publicPortfolio(HttpSession session, Model model) {
		// List<Countries> countries = new ArrayList<>();
		List<Portfolio> portfolioList = new ArrayList<>();
		Portfolio portfolio = new Portfolio();

		try {
			Authentication auth = SecurityContextHolder.getContext()
					.getAuthentication();
			String username = auth.getName();
			portfolioList = userService.getUserPortfolio(username);
			// countries = userService.getAllCountries();
			for (Portfolio portfolio2 : portfolioList) {
				portfolio = portfolio2;
				System.out.println("portfolio->active" + portfolio.getActive());
			}
			System.out.println("usersname->" + username);
			model.addAttribute("portfolio", portfolio);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "public-portfolio";
	}

	@RequestMapping(value = "/public/updateUserPortfolio", method = RequestMethod.POST)
	public String UpdateUserPortfolio(Model model,
			final RedirectAttributes redirectAttributes,
			@RequestParam("PortfolioName") String name,
			@RequestParam("Pitch") String pitch,
			@RequestParam("experiences") String experience) {

		List<Portfolio> list = new ArrayList<>();
		List<Users> userList = new ArrayList<>();
		Portfolio portfolio = new Portfolio();
		try {
			Authentication auth = SecurityContextHolder.getContext()
					.getAuthentication();
			String username = auth.getName();
			System.out.println(username);
			// Users user = new Users();
			list = userService.getUserPortfolio(username);
			userList = userService.getUserIds(username);
			for (Users users : userList) {
				portfolio.setUsers(users);

			}
			for (Portfolio portfolio2 : list) {
				portfolio = portfolio2;
			}
			portfolio.setPortfolioName(name);
			portfolio.setPortfolioPitch(pitch);
			portfolio.setExperienceDescription(experience);
			userService.addPortfolio(portfolio);
			redirectAttributes.addFlashAttribute("status", 1);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "redirect:/public/portfolio.io";
	}

	// ==================ManageRequests=================================

	@RequestMapping(value = "/user/ManageRequests")
	public String userManageRequests(Model model) {
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName();
		List<Requests> pendingRequests = new ArrayList<>();
		List<Requests> approvedRequests = new ArrayList<>();
		List<Requests> unApprovedRequests = new ArrayList<>();
		try {
			pendingRequests = userService.getPendingRequests(username);
			approvedRequests = userService.getapprovedRequests(username);
			unApprovedRequests = userService.getunApprovedRequests(username);

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// redirectAttributes.addFlashAttribute("status", 1);
		model.addAttribute("pendingRequests", pendingRequests);
		model.addAttribute("approvedRequests", approvedRequests);
		model.addAttribute("unApprovedRequests", unApprovedRequests);
		return "user-ManageRequests";
	}

	@RequestMapping(value = "/user/postRequest", method = RequestMethod.GET)
	public String postRequest(Model model) {
		List<Category> categories = new ArrayList<>();

		try {
			categories = userService.getAllCategory();

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		model.addAttribute("category", categories);
		// redirectAttributes.addFlashAttribute("status", 1);
		return "user-postRequest";
	}

	@RequestMapping(value = "/user/SaveRequest", method = RequestMethod.POST)
	public String UserSaveRequest(Model model,
			final RedirectAttributes redirectAttributes,
			@RequestParam("name") String name,
			@RequestParam("description") String description,
			@RequestParam("categoryId") Long categoryId,
			@RequestParam("subCategoryId") Long subCategoryId,
			@RequestParam("fieldsId") Long fieldsId,
			@RequestParam("budget") Integer budget) {
		Requests requests = new Requests();
		DateTimeUtil util = new DateTimeUtil();
		try {
			Authentication auth = SecurityContextHolder.getContext()
					.getAuthentication();
			String username = auth.getName();
			System.out.println(username);
			List<Users> users = new ArrayList<>();
			users = userService.getUserIds(username);
			Date date = new Date();
			List<Portfolio> portfolio = new ArrayList<>();
			for (Users users2 : users) {
				requests.setUsers(users2);

			}
			portfolio = userService.getUserPortfolio(username);
			for (Portfolio portfolio2 : portfolio) {
				requests.setPortfolio(portfolio2);
			}
			requests.setActive(0);
			requests.setBlocked(0);
			requests.setDate(util.converToSQLDate(date));
			requests.setTime(util.converToSQLTime(date));
			requests.setBudget(budget);
			requests.setRequestName(name);
			requests.setDescription(description);
			Category category = new Category();
			SubCategory subCategory = new SubCategory();
			Fields fields = new Fields();
			category.setCategoryId(categoryId);
			subCategory.setSubCategoryId(subCategoryId);
			fields.setFieldsId(fieldsId);
			requests.setCategory(category);
			requests.setSubCategory(subCategory);
			requests.setFields(fields);
			userService.addRequest(requests);
			redirectAttributes.addFlashAttribute("status", 1);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "redirect:/user/postRequest.io";
	}

	//

	@RequestMapping(value = "/user/deleteRequest", method = RequestMethod.GET)
	public String userdeleteRequest(Model model,
			final RedirectAttributes redirectAttributes,
			@RequestParam(required = true) Long requestId) {
		Requests requests = new Requests();
		try {
			System.out.println("------------------------------");
			System.out.println("requests id" + requestId);
			requests.setRequestsId(requestId);
			userServicep.deleteRequest(requests);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		redirectAttributes.addFlashAttribute("status", 1);
		return "redirect:/user/ManageRequests.io";
	}

	// =======Admin-ManageRequests=================
	@RequestMapping(value = "admin/ListOfApprovedRequests")
	public String AdminListOfApprovedRequests(Model model,
			@RequestParam(required = false) Long status) {
		List<Requests> requests = new ArrayList<>();

		try {
			requests = userService.getapprovedRequests();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		model.addAttribute("requests", requests);
		return "admin-ListOfApprovedRequests";
	}

	@RequestMapping(value = "admin/ListOfPendingRequests")
	public String AdminListOfPendingRequests(Model model,
			@RequestParam(required = false) Long status) {
		List<Requests> requests = new ArrayList<>();

		try {
			requests = userService.getPendingRequests();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		model.addAttribute("requests", requests);
		return "admin-ListOfPendingRequests";
	}

	@RequestMapping(value = "admin/ListOfBlockedRequests")
	public String AdminListOfBlockedRequests(Model model,
			@RequestParam(required = false) Long status) {
		List<Requests> requests = new ArrayList<>();

		try {
			requests = userService.getunApprovedRequests();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		model.addAttribute("requests", requests);
		return "admin-ListOfBlockedRequests";
	}

	@RequestMapping(value = "/admin/updateRequest", method = RequestMethod.GET)
	public String updateRequest(Model model,
			final RedirectAttributes redirectAttributes,
			@RequestParam(required = true) Long requestId, Integer status,
			String check) {
		List<Requests> list = new ArrayList<>();
		Requests requests = new Requests();
		String url = "";
		try {
			list = userService.getRequestByID(requestId);
			for (Requests requests1 : list) {
				requests = requests1;
			}

			if (check.equalsIgnoreCase("Blocked")) {
				requests.setBlocked(status);
				url = "ListOfBlockedRequests";
			} else if (check.equalsIgnoreCase("Pending")) {
				requests.setActive(status);
				url = "ListOfPendingRequests";
			} else if (check.equalsIgnoreCase("Approved")) {
				requests.setBlocked(status);
				url = "ListOfApprovedRequests";
			}
			userService.updateRequests(requests);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		redirectAttributes.addFlashAttribute("status", 1);
		return "redirect:/admin/" + url + ".io";
	}

	// =======================ManageServices===========================

	@RequestMapping(value = "/user/ManageServices")
	public String userManageServices(Model model) {
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName();
		List<Services> pendingServices = new ArrayList<>();
		List<Services> approvedServices = new ArrayList<>();
		List<Services> unApprovedServices = new ArrayList<>();
		try {
			pendingServices = userService.getPendingServices(username);
			approvedServices = userService.getapprovedServices(username);
			unApprovedServices = userService.getunApprovedServices(username);

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// redirectAttributes.addFlashAttribute("status", 1);
		model.addAttribute("pendingServices", pendingServices);
		model.addAttribute("approvedServices", approvedServices);
		model.addAttribute("unApprovedServices", unApprovedServices);
		return "user-ManageService";
	}

	@RequestMapping(value = "/user/postService", method = RequestMethod.GET)
	public String postService(Model model) {
		List<Category> categories = new ArrayList<>();

		try {
			categories = userService.getAllCategory();

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		model.addAttribute("category", categories);
		// redirectAttributes.addFlashAttribute("status", 1);
		return "user-postService";
	}

	@RequestMapping(value = "/user/SaveService", method = RequestMethod.POST)
	public String UserSaveService(Model model,
			final RedirectAttributes redirectAttributes,
			@RequestParam("name") String name,
			@RequestParam("description") String description,
			@RequestParam("categoryId") Long categoryId,
			@RequestParam("subCategoryId") Long subCategoryId,
			@RequestParam("fieldsId") Long fieldsId,
			@RequestParam("budget") Double budget,
			@RequestParam("timeLimit") String limit,
			@RequestParam("tips") String tips,
			@RequestParam("file") MultipartFile file[]) {
		Services services = new Services();
		DateTimeUtil util = new DateTimeUtil();
		try {
			Authentication auth = SecurityContextHolder.getContext()
					.getAuthentication();
			String username = auth.getName();
			System.out.println(username);
			List<Users> users = new ArrayList<>();
			users = userService.getUserIds(username);
			Date date = new Date();
			List<Portfolio> portfolio = new ArrayList<>();
			for (Users users2 : users) {
				services.setUsers(users2);

			}
			portfolio = userService.getUserPortfolio(username);
			for (Portfolio portfolio2 : portfolio) {
				services.setPortfolio(portfolio2);
			}
			services.setTimeLimit(limit);
			services.setActive(0);
			services.setBlocked(0);
			services.setDate(util.converToSQLDate(date));
			services.setTime(util.converToSQLTime(date));
			services.setBudget(budget);
			services.setServiceName(name);
			services.setDescription(description);
			if (tips.equalsIgnoreCase("true")) {
				services.setTipsEnabled(1);
			} else if (tips.equalsIgnoreCase("false")) {
				services.setTipsEnabled(0);
			}
			Category category = new Category();
			SubCategory subCategory = new SubCategory();
			Fields fields = new Fields();
			category.setCategoryId(categoryId);
			subCategory.setSubCategoryId(subCategoryId);
			fields.setFieldsId(fieldsId);
			services.setCategory(category);
			services.setSubCategory(subCategory);
			services.setFields(fields);
			userService.addService(services);
			List<Services> list = new ArrayList<>();
			list = userService.getServiceByDate(services);
			for (Services services2 : list) {
				services = services2;
			}
			int length = file.length;
			length = length - 1;
			String location = "";
			if (length >= 0) {

				while (length >= 0) {
					byte[] bytes = file[length].getBytes();

					// Creating the directory to store file
					// String rootPath = System.getProperty("catalina.home");
					// gets the eclispe file destination
					// String add = System.getProperty("user.home");
					// System.out.println(add
					// + "/WebContent/resources/resturantImages/");
					String add = LoginController.class.getProtectionDomain()
							.getCodeSource().getLocation().getPath();
					System.out.println(add);
					// adds the address of the workspace +the path to the image
					// folder
					String add2 = add.substring(0, add.indexOf("."))
							+ "Freefay" + File.separator + "WebContent"
							+ File.separator + "resources" + File.separator
							+ "services" + File.separator + "services-images"
							+ File.separator;
					System.out.println(add2);
					// for removing %20 from the adds
					Pattern p = Pattern.compile("%20");
					Matcher m = p.matcher(add2);
					add2 = m.replaceAll(" ");
					// System.out.println(add2);
					File dir = new File(add2);
					// + File.separator + "tmpFiles");
					if (!dir.exists())
						dir.mkdirs();// built in method for creatin folder

					// Create the file on server
					File serverFile = new File(dir.getAbsolutePath()
							+ File.separator + username + "-id-"
							+ services.getServicesId() + "-service-image"
							+ length + ".jpg");
					location = dir.getAbsolutePath();
					BufferedOutputStream stream = new BufferedOutputStream(
							new FileOutputStream(serverFile));
					stream.write(bytes);
					stream.close();
					length--;
				}

			}

			redirectAttributes.addFlashAttribute("status", 1);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "redirect:/user/postService.io";
	}

	//

	@RequestMapping(value = "/user/deleteService", method = RequestMethod.GET)
	public String userdeleteService(Model model,
			final RedirectAttributes redirectAttributes,
			@RequestParam(required = true) Long servicesId) {
		Services services = new Services();
		try {
			System.out.println("------------------------------");
			System.out.println("service id" + servicesId);
			services.setServicesId(servicesId);
			userServicep.deleteService(services);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		redirectAttributes.addFlashAttribute("status", 1);
		return "redirect:/user/ManageServices.io";
	}

	// =======Admin-ManageServices=================
	@RequestMapping(value = "/admin/ListOfApprovedServices")
	public String AdminListOfApprovedServices(Model model,
			@RequestParam(required = false) Long status) {
		List<Services> services = new ArrayList<>();

		try {
			services = userService.getapprovedServices();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		model.addAttribute("services", services);
		return "admin-ListOfApprovedServices";
	}

	@RequestMapping(value = "admin/ListOfPendingServices")
	public String AdminListOfPendingServices(Model model,
			@RequestParam(required = false) Long status) {
		List<Services> services = new ArrayList<>();

		try {
			services = userService.getPendingServices();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		model.addAttribute("services", services);
		return "admin-ListOfPendingServices";
	}

	@RequestMapping(value = "admin/ListOfBlockedServices")
	public String AdminListOfBlockedServices(Model model,
			@RequestParam(required = false) Long status) {
		List<Services> services = new ArrayList<>();

		try {
			services = userService.getunApprovedServices();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		model.addAttribute("services", services);
		return "admin-ListOfBlockedServices";
	}

	@RequestMapping(value = "/admin/updateService", method = RequestMethod.GET)
	public String updateServices(Model model,
			final RedirectAttributes redirectAttributes,
			@RequestParam(required = true) Long servicesId, Integer status,
			String check) {
		List<Services> list = new ArrayList<>();
		Services services = new Services();
		String url = "";
		try {
			list = userService.getServiceByID(servicesId);
			for (Services services1 : list) {
				services = services1;
			}

			if (check.equalsIgnoreCase("Blocked")) {
				services.setBlocked(status);
				url = "ListOfBlockedServices";
			} else if (check.equalsIgnoreCase("Pending")) {
				services.setActive(status);
				url = "ListOfPendingServices";
			} else if (check.equalsIgnoreCase("Approved")) {
				services.setBlocked(status);
				url = "ListOfApprovedServices";
			}
			userService.updateService(services);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		redirectAttributes.addFlashAttribute("status", 1);
		return "redirect:/admin/" + url + ".io";
	}

	// ===================companyNotification==============================

	@RequestMapping(value = "/admin/companyNotifications")
	public String AdmincompanyNotifications(Model model) {
		List<Services> services = new ArrayList<>();

		try {
			// services = userService.getapprovedServices();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		// model.addAttribute("services", services);
		return "admin-companyNotification";
	}

	// @Scheduled(fixedRate=900000)

	@RequestMapping(value = "/admin/SaveCompanyNotifications")
	public String AdminSaveCompanyNotifications(Model model,
			final RedirectAttributes redirectAttributes,
			@RequestParam("type") String type,
			@RequestParam("subject") String subject,
			@RequestParam("description") String description,
			@RequestParam("date") String date) {
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName();
		System.out.println(username);
		Category category = new Category();
		Date dat = new Date();
		DateTimeUtil dt = new DateTimeUtil();
		Users users = new Users();

		int status = 0;
		try {
			List<Users> users2 = new ArrayList<>();
			CompanyNotification companyNotification = new CompanyNotification();

			companyNotification.setNotificationType(type);
			companyNotification.setNotificationSubject(subject);
			companyNotification.setDescription(description);
			Date dc = new SimpleDateFormat("yyyy-MM-dd").parse(date);
			companyNotification.setSendingDate(dc);
			companyNotification.setDate(dt.converToSQLDate(dat));
			companyNotification.setTime(dt.converToSQLTime(dat));
			users2 = userService.getUserIds(username);
			Long userId = null;
			for (Users users3 : users2) {
				System.out.println(users3.getId().getUsersId());
				users = users3;
			}
			companyNotification.setUsers(users);
			companyNotification.setActive(1);
			companyNotification.setCancelled(0);
			companyNotification.setBlocked(0);
			userService.addCompanyNotification(companyNotification);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		redirectAttributes.addFlashAttribute("status", 1);
		return "redirect:/admin/companyNotifications.io";
	}

	@RequestMapping(value = "/admin/ListOfActiveNotification")
	public String AdminListOfActiveNotification(Model model) {
		List<CompanyNotification> list = new ArrayList<>();

		try {
			list = userService.getapprovedNotifications();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		model.addAttribute("list", list);
		return "admin-ListOfApprovedNotification";
	}

	@RequestMapping(value = "/admin/ListOfCancelledNotification")
	public String AdminListOfCancelledNotification(Model model) {
		List<CompanyNotification> list = new ArrayList<>();

		try {
			list = userService.getCanncelledNotifications();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		model.addAttribute("list", list);
		return "admin-ListOfCancelledNotification";
	}

	@RequestMapping(value = "/admin/ListOfBlockedNotification")
	public String AdminListOfBlockedNotification(Model model) {
		List<CompanyNotification> list = new ArrayList<>();

		try {
			list = userService.getBlockedNotifications();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		model.addAttribute("list", list);
		return "admin-ListOfBlockedNotification";
	}

	@RequestMapping(value = "/admin/ListOfDelieveredNotification")
	public String AdminListOfDelieveredNotification(Model model) {
		List<CompanyNotification> list = new ArrayList<>();

		try {
			list = userService.getDelieveredNotifications();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		model.addAttribute("list", list);
		return "admin-ListOfDelieveredNotification";
	}

	@RequestMapping(value = "/admin/updateNotification", method = RequestMethod.GET)
	public String updateNotification(Model model,
			final RedirectAttributes redirectAttributes,
			@RequestParam(required = true) Long companyNotificationId,
			Integer status, String check) {
		List<CompanyNotification> list = new ArrayList<>();
		// Services services = new Services();
		CompanyNotification companyNotification = new CompanyNotification();
		String url = "";
		try {
			list = userService.getNotificationByID(companyNotificationId);
			for (CompanyNotification companyNotification2 : list) {
				companyNotification = companyNotification2;
			}

			if (check.equalsIgnoreCase("Block")) {
				companyNotification.setBlocked(1);
				companyNotification.setActive(0);
				url = "ListOfActiveNotification";
			} else if (check.equalsIgnoreCase("cancel")) {
				companyNotification.setBlocked(0);
				companyNotification.setActive(0);
				companyNotification.setCancelled(1);
				url = "ListOfActiveNotification";
			} else if (check.equalsIgnoreCase("Active")) {
				companyNotification.setBlocked(0);
				companyNotification.setActive(1);

				url = "ListOfBlockedNotification";
			} else if (check.equalsIgnoreCase("Activate")) {
				companyNotification.setCancelled(0);
				companyNotification.setActive(1);

				url = "ListOfCancelledNotification";
			}

			userService.addCompanyNotification(companyNotification);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		redirectAttributes.addFlashAttribute("status", 1);
		return "redirect:/admin/" + url + ".io";
	}

	// ===========================public-Services=========================

	@RequestMapping(value = "/public/ListOfServices")
	public String publicListOfServices(Model model) {
		List<Services> list = new ArrayList<>();
		Basics basics = new Basics();
		List<Basics> list2 = new ArrayList<>();
		List<News> news = new ArrayList<>();
		List<Testimonials> testimonials = new ArrayList<>();
		try {
			List<Category> categories = new ArrayList<>();
			categories = userService.getCategoryMenu();
			model.addAttribute("menu", categories);
			news = userService.getTopActiveNews();
			testimonials = userService.getTopTestimonials();

			list2 = userService.getBasics();
			for (Basics basics2 : list2) {
				basics = basics2;
			}

			list = userService.getapprovedServices();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		model.addAttribute("cms", basics);
		model.addAttribute("testimonials", testimonials);
		model.addAttribute("news", news);

		model.addAttribute("list", list);
		return "public-ListOfServices";
	}

	// ====================public-aboutUs===================

	@RequestMapping(value = "/public/aboutUs")
	public String publiccontactUs(Model model) {
		List<Static> list = new ArrayList<>();
		Static static1 = new Static();
		Basics basics = new Basics();
		List<Basics> list2 = new ArrayList<>();
		List<News> news = new ArrayList<>();
		List<Testimonials> testimonials = new ArrayList<>();

		try {
			List<Category> categories = new ArrayList<>();
			categories = userService.getCategoryMenu();
			model.addAttribute("menu", categories);
			news = userService.getTopActiveNews();
			testimonials = userService.getTopTestimonials();

			list2 = userService.getBasics();
			for (Basics basics2 : list2) {
				basics = basics2;
			}

			list = userService.getStaticAboutUs();
			for (Static static2 : list) {
				static1 = static2;
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		model.addAttribute("cms", basics);
		model.addAttribute("list", static1);
		model.addAttribute("testimonials", testimonials);
		model.addAttribute("news", news);
		return "public-aboutUs";
	}

	@RequestMapping(value = "/public/termOfUse")
	public String publicTermOfUse(Model model) {
		List<Static> list = new ArrayList<>();
		Static static1 = new Static();
		Basics basics = new Basics();
		List<Basics> list2 = new ArrayList<>();
		List<News> news = new ArrayList<>();
		List<Testimonials> testimonials = new ArrayList<>();
		try {
			news = userService.getTopActiveNews();
			testimonials = userService.getTopTestimonials();
			List<Category> categories = new ArrayList<>();
			categories = userService.getCategoryMenu();
			model.addAttribute("menu", categories);
			list2 = userService.getBasics();
			for (Basics basics2 : list2) {
				basics = basics2;
			}

			list = userService.getStatictermOfUse();
			for (Static static2 : list) {
				static1 = static2;
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		model.addAttribute("cms", basics);
		model.addAttribute("list", static1);
		model.addAttribute("testimonials", testimonials);
		model.addAttribute("news", news);
		return "public-termOfUse";
	}

	@RequestMapping(value = "/public/privacyPolicy")
	public String publicPrivacyPolicy(Model model) {
		List<Static> list = new ArrayList<>();
		Static static1 = new Static();
		Basics basics = new Basics();
		List<Basics> list2 = new ArrayList<>();
		List<News> news = new ArrayList<>();
		List<Testimonials> testimonials = new ArrayList<>();
		try {
			List<Category> categories = new ArrayList<>();
			categories = userService.getCategoryMenu();
			model.addAttribute("menu", categories);
			news = userService.getTopActiveNews();
			testimonials = userService.getTopTestimonials();

			list2 = userService.getBasics();
			for (Basics basics2 : list2) {
				basics = basics2;
			}

			list = userService.getStaticprivacyPolicy();
			for (Static static2 : list) {
				static1 = static2;
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		model.addAttribute("cms", basics);
		model.addAttribute("list", static1);
		model.addAttribute("testimonials", testimonials);
		model.addAttribute("news", news);
		return "public-privacyPolicy";
	}

	@RequestMapping(value = "/admin/staticPage")
	public String adminstaticPages(Model model) {
		// List<Static> list = new ArrayList<>();
		// List<Static> list2 = new ArrayList<>();
		List<Static> list3 = new ArrayList<>();
		// Static static1 = new Static();
		// Static static2 = new Static();
		Static static3 = new Static();
		try {
			// list = userService.getStaticAboutUs();
			// list2 = userService.getStaticprivacyPolicy();
			list3 = userService.getStatictermOfUse();
			// for (Static static4 : list) {
			// static1 = static4;
			// }
			// for (Static static4 : list2) {
			// static2 = static4;
			// }
			for (Static static4 : list3) {
				static3 = static4;
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		// model.addAttribute("aboutus", static1);
		// model.addAttribute("privacypolicy", static2);
		model.addAttribute("list", static3);
		return "admin-staticPage";
	}

	@RequestMapping(value = "/admin/AboutUS")
	public String adminstaticAboutUs(Model model) {
		List<Static> list = new ArrayList<>();
		// List<Static> list2 = new ArrayList<>();
		// List<Static> list3 = new ArrayList<>();
		Static static1 = new Static();
		// Static static2 = new Static();
		// Static static3 = new Static();
		try {
			list = userService.getStaticAboutUs();
			// list2 = userService.getStaticprivacyPolicy();
			// list3 = userService.getStatictermOfUse();
			for (Static static4 : list) {
				static1 = static4;
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		model.addAttribute("aboutus", static1);
		return "admin-staticPageAboutUs";
	}

	@RequestMapping(value = "/admin/PrivacyPolicy")
	public String adminPrivacyPolicy(Model model) {
		List<Static> list2 = new ArrayList<>();
		Static static2 = new Static();
		try {
			list2 = userService.getStaticprivacyPolicy();
			for (Static static4 : list2) {
				static2 = static4;
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		model.addAttribute("list", static2);
		return "admin-staticPagePrivacyPolicy";
	}

	@RequestMapping(value = "/admin/updateTermOfuse", method = RequestMethod.POST)
	public String updateTermOfuse(Model model,
			final RedirectAttributes redirectAttributes,
			@RequestParam("summernote") String description) {
		Static static1 = new Static();
		List<Static> list = new ArrayList<>();
		try {
			list = userService.getStatictermOfUse();
			for (Static static2 : list) {
				static1 = static2;
			}
			static1.setDescription(description);
			userService.updateStaticPage(static1);
			redirectAttributes.addAttribute("status", "1");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/admin/staticPage.io";
	}

	@RequestMapping(value = "/admin/updateAboutUs", method = RequestMethod.POST)
	public String updateAboutUs(Model model,
			final RedirectAttributes redirectAttributes,
			@RequestParam("summernote") String description) {
		Static static1 = new Static();
		List<Static> list = new ArrayList<>();
		try {
			list = userService.getStaticAboutUs();
			for (Static static2 : list) {
				static1 = static2;
			}
			static1.setDescription(description);
			userService.updateStaticPage(static1);
			redirectAttributes.addAttribute("status", "1");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/admin/AboutUS.io";
	}

	@RequestMapping(value = "/admin/updatePrivacyPolicy", method = RequestMethod.POST)
	public String updatePrivacyPolicy(Model model,
			final RedirectAttributes redirectAttributes,
			@RequestParam("summernote") String description) {
		Static static1 = new Static();
		List<Static> list = new ArrayList<>();
		try {
			list = userService.getStaticprivacyPolicy();
			for (Static static2 : list) {
				static1 = static2;
			}
			static1.setDescription(description);
			userService.updateStaticPage(static1);
			redirectAttributes.addAttribute("status", "1");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/admin/PrivacyPolicy.io";
	}

	// ==========================FreeFraeBasics-cms========================

	@RequestMapping(value = "/admin/freefraeBasics")
	public String adminFreeFraeBasics(Model model) {
		try {
			Basics basics = new Basics();
			List<Basics> list = new ArrayList<>();
			list = userService.getBasics();
			for (Basics basics2 : list) {
				basics = basics2;
			}
			model.addAttribute("basics", basics);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "admin-freefraeBasics";
	}

	@RequestMapping(value = "/admin/updateBasicstab1", method = RequestMethod.POST)
	public String updateBasics(Model model,
			final RedirectAttributes redirectAttributes,
			@RequestParam("slogan") String slogan,
			@RequestParam("address") String address,
			@RequestParam("contactno") String contactNo,
			@RequestParam("emailId") String emailId,
			@RequestParam("fb") String fb, @RequestParam("tw") String tw,
			@RequestParam("gp") String gp, @RequestParam("pt") String pt,
			@RequestParam("vi") String vi, @RequestParam("li") String li,
			@RequestParam("brief") String brief) {
		Basics basics = new Basics();
		List<Basics> list = new ArrayList<>();

		try {
			list = userService.getBasics();
			for (Basics basics2 : list) {
				basics = basics2;
			}
			basics.setAboutfreefrae(brief);
			basics.setSocialLabel1(fb);
			basics.setSocialLabel2(tw);
			basics.setSocialLabel3(gp);
			basics.setSocialLabel4(pt);
			basics.setSocialLabel5(vi);
			basics.setSocialLabel6(li);
			basics.setEmailId(emailId);
			basics.setContactNo(contactNo);
			basics.setAddress(address);
			basics.setSlogan(slogan);
			userService.updateBasics(basics);
			redirectAttributes.addAttribute("status", "1");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/admin/freefraeBasics.io";
	}

	@RequestMapping(value = "/admin/updateBasicstab2", method = RequestMethod.POST)
	public String updateBasicsTab2(Model model,
			final RedirectAttributes redirectAttributes,
			@RequestParam("s1Img") MultipartFile s1Img,
			@RequestParam("S1Heading") String s1Header,
			@RequestParam("S1SubHeading") String s1SubHeading,
			@RequestParam("S1Description") String s1Description,
			@RequestParam("S1B1Name") String s1B1Name,
			@RequestParam("s1B1") String S1B1,
			@RequestParam("s1B2Name") String s1B2Name,
			@RequestParam("s1B2") String s1B2,
			@RequestParam("s2Img") MultipartFile s2Img,
			@RequestParam("s2Label1") String s2Label1,
			@RequestParam("s2Label2") String s2Label2,
			@RequestParam("s2Label3") String s2Label3,
			@RequestParam("s2Label4") String s2Label4,
			@RequestParam("s2Label5") String s2Label5,
			@RequestParam("s2Label6") String s2Label6,
			@RequestParam("s3Img") MultipartFile s3Img,
			@RequestParam("s3Header") String s3Header,
			@RequestParam("s3Label1") String s3Label1,
			@RequestParam("s3Label2") String s3Label2,
			@RequestParam("s3Label3") String s3Label3,
			@RequestParam("s3Label4") String s3Label4,
			@RequestParam("s3Label5") String s3Label5,
			@RequestParam("s3Label6") String s3Label6,
			@RequestParam("s4Img") MultipartFile s4Img,
			@RequestParam("s4Header") String s4Header,
			@RequestParam("s4SubHeader") String s4SubHeading,
			@RequestParam("s4Description") String s4Description,
			@RequestParam("s4B1Name") String s4B1Name,
			@RequestParam("s4B1") String S4B1) {
		Basics basics = new Basics();
		List<Basics> list = new ArrayList<>();

		try {
			list = userService.getBasics();
			for (Basics basics2 : list) {
				basics = basics2;
			}
			if (!s1Img.isEmpty()) {
				byte[] bytes = s1Img.getBytes();
				String add = LoginController.class.getProtectionDomain()
						.getCodeSource().getLocation().getPath();
				System.out.println(add);
				// adds the address of the workspace +the path to the image
				// folder
				String add2 = add.substring(0, add.indexOf(".")) + "Freefay"
						+ File.separator + "WebContent" + File.separator
						+ "resources" + File.separator + "template"
						+ File.separator + "images" + File.separator;
				System.out.println(add2);
				// for removing %20 from the adds
				Pattern p = Pattern.compile("%20");
				Matcher m = p.matcher(add2);
				add2 = m.replaceAll(" ");
				// System.out.println(add2);
				File dir = new File(add2);
				// + File.separator + "tmpFiles");
				if (!dir.exists())
					dir.mkdirs();// built in method for creatin folder

				String location = ""; // Create the file on server
				File serverFile = new File(dir.getAbsolutePath()
						+ File.separator + "slidesshow.png");
				location = dir.getAbsolutePath();
				BufferedOutputStream stream = new BufferedOutputStream(
						new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();
			}
			basics.setS1Img("slideshow.png");
			basics.setS1Label1(s1Header);
			basics.setS1Label2(s1SubHeading);
			basics.setS1Label3(s1Description);
			basics.setS1B1Name(s1B1Name);
			basics.setS1B1(S1B1);
			basics.setS1B2Name(s1B2Name);
			basics.setS1B2(s1B2);
			if (!s2Img.isEmpty()) {
				byte[] bytes = s2Img.getBytes();
				String add = LoginController.class.getProtectionDomain()
						.getCodeSource().getLocation().getPath();
				System.out.println(add);
				// adds the address of the workspace +the path to the image
				// folder
				String add2 = add.substring(0, add.indexOf(".")) + "Freefay"
						+ File.separator + "WebContent" + File.separator
						+ "resources" + File.separator + "template"
						+ File.separator + "images" + File.separator;
				System.out.println(add2);
				// for removing %20 from the adds
				Pattern p = Pattern.compile("%20");
				Matcher m = p.matcher(add2);
				add2 = m.replaceAll(" ");
				// System.out.println(add2);
				File dir = new File(add2);
				// + File.separator + "tmpFiles");
				if (!dir.exists())
					dir.mkdirs();// built in method for creatin folder

				String location = ""; // Create the file on server
				File serverFile = new File(dir.getAbsolutePath()
						+ File.separator + "slidesshow-2.png");
				location = dir.getAbsolutePath();
				BufferedOutputStream stream = new BufferedOutputStream(
						new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();
			}
			basics.setS2Img("slideshow-2.png");
			basics.setS2Label1(s2Label1);
			basics.setS2Label2(s2Label2);
			basics.setS2Label3(s2Label3);
			basics.setS2Label4(s2Label4);
			basics.setS2Label5(s2Label5);
			basics.setS2Label6(s2Label6);

			if (!s3Img.isEmpty()) {
				byte[] bytes = s3Img.getBytes();
				String add = LoginController.class.getProtectionDomain()
						.getCodeSource().getLocation().getPath();
				System.out.println(add);
				// adds the address of the workspace +the path to the image
				// folder
				String add2 = add.substring(0, add.indexOf(".")) + "Freefay"
						+ File.separator + "WebContent" + File.separator
						+ "resources" + File.separator + "template"
						+ File.separator + "images" + File.separator;
				System.out.println(add2);
				// for removing %20 from the adds
				Pattern p = Pattern.compile("%20");
				Matcher m = p.matcher(add2);
				add2 = m.replaceAll(" ");
				// System.out.println(add2);
				File dir = new File(add2);
				// + File.separator + "tmpFiles");
				if (!dir.exists())
					dir.mkdirs();// built in method for creatin folder

				String location = ""; // Create the file on server
				File serverFile = new File(dir.getAbsolutePath()
						+ File.separator + "slidesshow-3.png");
				location = dir.getAbsolutePath();
				BufferedOutputStream stream = new BufferedOutputStream(
						new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();
			}
			basics.setS3Img("slideshow-3.png");
			basics.setS3Header(s3Header);
			basics.setS3Label1(s3Label1);
			basics.setS3Label2(s3Label2);
			basics.setS3Label3(s3Label3);
			basics.setS3Label4(s3Label4);
			basics.setS3Label5(s3Label5);
			basics.setS3Label6(s3Label6);

			if (!s4Img.isEmpty()) {
				byte[] bytes = s4Img.getBytes();
				String add = LoginController.class.getProtectionDomain()
						.getCodeSource().getLocation().getPath();
				System.out.println(add);
				// adds the address of the workspace +the path to the image
				// folder
				String add2 = add.substring(0, add.indexOf(".")) + "Freefay"
						+ File.separator + "WebContent" + File.separator
						+ "resources" + File.separator + "template"
						+ File.separator + "images" + File.separator;
				System.out.println(add2);
				// for removing %20 from the adds
				Pattern p = Pattern.compile("%20");
				Matcher m = p.matcher(add2);
				add2 = m.replaceAll(" ");
				// System.out.println(add2);
				File dir = new File(add2);
				// + File.separator + "tmpFiles");
				if (!dir.exists())
					dir.mkdirs();// built in method for creatin folder

				String location = ""; // Create the file on server
				File serverFile = new File(dir.getAbsolutePath()
						+ File.separator + "slidesshow-4.png");
				location = dir.getAbsolutePath();
				BufferedOutputStream stream = new BufferedOutputStream(
						new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();
			}
			basics.setS4Img("slideshow-4.png");
			basics.setS4Header(s4Header);
			basics.setS4Label1(s4SubHeading);
			basics.setS4Label2(s4Description);
			basics.setS4B1Name(s4B1Name);
			basics.setS4B1(S4B1);
			userService.updateBasics(basics);
			redirectAttributes.addAttribute("status", "1");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/admin/freefraeBasics.io";
	}

	@RequestMapping(value = "/admin/updateBasicstab3", method = RequestMethod.POST)
	public String updateBasicsTab3(Model model,
			final RedirectAttributes redirectAttributes,
			@RequestParam("header1") String header1,
			@RequestParam("h1Description") String h1Description,
			@RequestParam("icon1") String icon1,
			@RequestParam("h1Label1") String h1Label1,
			@RequestParam("h1Description1") String h1Description1,
			@RequestParam("icon2") String icon2,
			@RequestParam("h1label2") String h1label2,
			@RequestParam("h1Description2") String h1Description2,
			@RequestParam("icon3") String icon3,
			@RequestParam("h1label3") String h1Label3,
			@RequestParam("h1Description3") String h1Description3,
			@RequestParam("icon4") String icon4,
			@RequestParam("h1Label4") String h1Label4,
			@RequestParam("h1Description4") String h1Description4,
			@RequestParam("icon5") String icon5,
			@RequestParam("h1Label5") String h1Label5,
			@RequestParam("h1Description5") String h1Description5,
			@RequestParam("icon6") String icon6,
			@RequestParam("h1Label6") String h1Label6,
			@RequestParam("h1Description6") String h1Description6,
			@RequestParam("icon7") String icon7,
			@RequestParam("h1Label7") String h1Label7,
			@RequestParam("h1Description7") String h1Description7,
			@RequestParam("icon8") String icon8,
			@RequestParam("h1Label8") String h1Label8,
			@RequestParam("h1Description8") String h1Description8,
			@RequestParam("heading2") String header2,
			@RequestParam("h2Description") String h2Description,
			@RequestParam("heading3") String header3,
			@RequestParam("h3Description") String h3Description) {
		Basics basics = new Basics();
		List<Basics> list = new ArrayList<>();

		try {
			list = userService.getBasics();
			for (Basics basics2 : list) {
				basics = basics2;
			}
			basics.setHeading1(header1);
			basics.setH1Label17(h1Description);
			basics.setH1Img1(icon1);
			basics.setH1Label1(h1Label1);
			basics.setH1Label2(h1Description1);
			basics.setH1Img2(icon2);
			basics.setH1Label3(h1label2);
			basics.setH1Label4(h1Description2);
			basics.setH1Img3(icon3);
			basics.setH1Label5(h1Label3);
			basics.setH1Label6(h1Description4);
			basics.setH1Img4(icon4);
			basics.setH1Label7(h1Label4);
			basics.setH1Label8(h1Description4);
			basics.setH1Img5(icon5);
			basics.setH1Label9(h1Label5);
			basics.setH1Label10(h1Description5);
			basics.setH1Img6(icon6);
			basics.setH1Label11(h1Label6);
			basics.setH1Label12(h1Description6);
			basics.setH1Img7(icon7);
			basics.setH1Label13(h1Label7);
			basics.setH1Label14(h1Description7);
			basics.setH1Img8(icon6);
			basics.setH1Label15(h1Label8);
			basics.setH1Label16(h1Description8);
			// heading2
			basics.setHeading2(header2);
			basics.setH2Label1(h2Description);
			basics.setHeading3(header3);
			basics.setH3Label1(h3Description);

			userService.updateBasics(basics);
			redirectAttributes.addAttribute("status", "1");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/admin/freefraeBasics.io";
	}

	@RequestMapping(value = "/admin/updateBasicstab4", method = RequestMethod.POST)
	public String updateBasicsTab4(Model model,
			final RedirectAttributes redirectAttributes,
			@RequestParam("header4") String header4,
			@RequestParam("h4Description") String h4Description,
			@RequestParam("h4label1") String h4Label1,
			@RequestParam("h4Description1") String h4Description1,
			@RequestParam("h4label2") String h4Label2,
			@RequestParam("h4Description2") String h4Description2,
			@RequestParam("h4label3") String h4Label3,
			@RequestParam("h4Description3") String h4Description3,
			@RequestParam("header5") String header5,
			@RequestParam("h5Description") String h5Description,
			@RequestParam("h5icon1") String icon1,
			@RequestParam("h5label1") String h5Label1,
			@RequestParam("h5Description1") String h5Description1,
			@RequestParam("h5icon2") String icon2,
			@RequestParam("h5label2") String h5label2,
			@RequestParam("h5Description2") String h5Description2,
			@RequestParam("h5icon3") String icon3,
			@RequestParam("h5label3") String h5Label3,
			@RequestParam("h5Description3") String h5Description3,
			@RequestParam("h5icon4") String icon4,
			@RequestParam("h5label4") String h5Label4,
			@RequestParam("h5Description4") String h5Description4) {
		Basics basics = new Basics();
		List<Basics> list = new ArrayList<>();

		try {
			list = userService.getBasics();
			for (Basics basics2 : list) {
				basics = basics2;
			}
			basics.setHeading4(header4);
			basics.setH4Label1(h4Description);
			basics.setH4Label5(h4Label1);
			basics.setH4Label2(h4Description1);
			basics.setH4Label6(h4Label2);
			basics.setH4Label3(h4Description2);
			basics.setH4Label7(h4Label3);
			basics.setH4Label4(h4Description3);

			// =============header5=====
			basics.setHeading5(header5);
			basics.setH5Label9(h5Description);
			basics.setH5Img1(icon1);
			basics.setH5Label1(h5Label1);
			basics.setH5Label5(h5Description1);
			basics.setH5Img2(icon2);
			basics.setH5Label2(h5label2);
			basics.setH5Label6(h5Description2);
			basics.setH5Img3(icon3);
			basics.setH5Label3(h5Label3);
			basics.setH5Label7(h5Description3);
			basics.setH5Img4(icon4);
			basics.setH5Label4(h5Label4);
			basics.setH5Label8(h5Description4);

			userService.updateBasics(basics);
			redirectAttributes.addAttribute("status", "1");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/admin/freefraeBasics.io";
	}

	// ====================ManageTestimonials===================
	@RequestMapping(value = "/admin/publishTestinomials")
	public String adminTestimonials(Model model) {
		List<Users> list = new ArrayList<>();

		try {
			list = userService.getAllactiveUsers();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		model.addAttribute("list", list);
		return "admin-publishTestimonials";
	}

	@RequestMapping(value = "/admin/cancelledTestimonials")
	public String adminCancelledTestimonials(Model model) {
		List<Testimonials> list = new ArrayList<>();
		try {
			list = userService.getCancelledTestimonials();
			model.addAttribute("testimonials", list);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return "admin-blockedTestimonials";
	}

	@RequestMapping(value = "/admin/ListOfTestimonials")
	public String adminListOfTestimonials(Model model) {
		List<Testimonials> list = new ArrayList<>();
		try {
			list = userService.getAllTestimonials();
			model.addAttribute("testimonials", list);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return "admin-ListOfTestimonials";
	}

	@RequestMapping(value = "/admin/activeTestimonials")
	public String adminactiveTestimonials(Model model) {
		List<Testimonials> list = new ArrayList<>();
		try {
			list = userService.getActiveTestimonials();
			model.addAttribute("testimonials", list);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return "admin-activeTestimonials";
	}

	@RequestMapping(value = "/admin/SaveTestimonials", method = RequestMethod.POST)
	public String adminTestimonials(Model model,
			final RedirectAttributes redirectAttributes,
			@RequestParam("details") String subject,
			@RequestParam("users") Long userId) {
		DateTimeUtil util = new DateTimeUtil();
		Users users = new Users();
		Testimonials testimonials = new Testimonials();
		List<Users> list = new ArrayList<>();
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName();
		System.out.println(username);

		try {
			list = userService.getUserById(userId);
			for (Users users2 : list) {
				users = users2;
			}
			Date date = new Date();
			testimonials.setTestimonialsDescription(subject);
			testimonials.setUsers(users);
			testimonials.setActive(1);
			testimonials.setDate(util.converToSQLDate(date));
			testimonials.setTime(util.converToSQLTime(date));
			userService.addTestimonials(testimonials);
			redirectAttributes.addAttribute("status", "1");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "redirect:/admin/publishTestinomials.io";
	}

	@RequestMapping(value = "/admin/updateTestimonial", method = RequestMethod.GET)
	public String updateTestimonials(Model model,
			final RedirectAttributes redirectAttributes,
			@RequestParam(required = true) Long testimonialsId, String status) {

		List<Testimonials> list = new ArrayList<>();
		Testimonials testimonials = new Testimonials();
		String url = "";
		if (testimonialsId != null) {

			try {
				list = userService.getTestimonialsById(testimonialsId);
				redirectAttributes.addAttribute("status", 1);
				for (Testimonials testimonials2 : list) {
					testimonials = testimonials2;
				}
				if (status.equals("active")) {
					testimonials.setActive(1);

					url = "admin/cancelledTestimonials.io";
				} else if (status.equals("cancel")) {
					url = "admin/activeTestimonials.io";
					testimonials.setActive(0);
				}
				userService.addTestimonials(testimonials);

			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		return "redirect:/" + url;
	}

	// ====================ManageNews===================
	@RequestMapping(value = "/admin/publishNews")
	public String adminNews(Model model) {

		return "admin-publishNews";
	}

	@RequestMapping(value = "/admin/cancelledNews")
	public String admincancelledNews(Model model) {
		List<News> news = new ArrayList<>();
		try {
			news = userService.getCancelledNews();
			model.addAttribute("news", news);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return "admin-cancelledNews";
	}

	@RequestMapping(value = "/admin/ListOfNews")
	public String adminListOfNews(Model model) {
		List<News> news = new ArrayList<>();
		try {
			news = userService.getAllNews();
			model.addAttribute("news", news);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return "admin-ListOfNews";
	}

	@RequestMapping(value = "/admin/activeNews")
	public String adminActiveNews(Model model) {
		List<News> news = new ArrayList<>();
		try {
			news = userService.getActiveNews();
			model.addAttribute("news", news);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return "admin-activeNews";
	}

	@RequestMapping(value = "/admin/SaveNews", method = RequestMethod.POST)
	public String adminPulishNews(Model model,
			final RedirectAttributes redirectAttributes,
			@RequestParam("subject") String subject,
			@RequestParam("description") String description) {
		DateTimeUtil util = new DateTimeUtil();
		Users users = new Users();
		News news = new News();
		List<Users> list = new ArrayList<>();
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName();
		System.out.println(username);

		try {
			list = userService.getUserIds(username);
			for (Users users2 : list) {
				users = users2;
			}
			Date date = new Date();
			news.setUsers(users);
			news.setActive(1);
			news.setCancelled(0);
			news.setNewsHeader(subject);
			news.setNewsDescription(description);
			news.setDate(util.converToSQLDate(date));
			news.setTime(util.converToSQLTime(date));
			userService.addNews(news);
			redirectAttributes.addAttribute("status", "1");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "redirect:/admin/publishNews.io";
	}

	@RequestMapping(value = "/admin/updateNews", method = RequestMethod.GET)
	public String updateNews(Model model,
			final RedirectAttributes redirectAttributes,
			@RequestParam(required = true) Long newsId, String status) {

		List<News> list = new ArrayList<>();
		News news = new News();
		String url = "";
		if (newsId != null) {

			try {
				list = userService.getNewsById(newsId);
				redirectAttributes.addAttribute("status", 1);
				for (News news2 : list) {
					news = news2;
				}
				if (status.equals("active")) {
					news.setActive(1);
					news.setCancelled(0);
					url = "admin/cancelledNews.io";
				} else if (status.equals("cancel")) {
					url = "admin/activeNews.io";
					news.setActive(0);
					news.setCancelled(1);
				}
				userService.addNews(news);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		return "redirect:/" + url;
	}

	// ================================public-singleportfolio=========================

	@RequestMapping(value = "/public/singlePortfolio", method = RequestMethod.GET)
	public String publicSinglePortfolio(Model model,
			final RedirectAttributes redirectAttributes,
			@RequestParam(required = true) Long id, String check) {
		List<Services> services = new ArrayList<>();
		List<Requests> requests = new ArrayList<>();
		Services services2 = new Services();
		Requests requests2 = new Requests();
		Basics basics = new Basics();
		List<Basics> list2 = new ArrayList<>();
		List<News> news = new ArrayList<>();
		List<Testimonials> testimonials = new ArrayList<>();

		try {
			List<Category> categories = new ArrayList<>();
			categories = userService.getCategoryMenu();
			model.addAttribute("menu", categories);
		
			list2 = userService.getBasics();
			for (Basics basics2 : list2) {
				basics = basics2;
			}
			news = userService.getTopActiveNews();
			testimonials = userService.getTopTestimonials();

			model.addAttribute("testimonials", testimonials);
			model.addAttribute("news", news);

			model.addAttribute("cms", basics);
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		if (check.equals("service")) {
			int count = 0;
			try {
				services = userService.getServiceByID(id);
				for (Services service3 : services) {
					services2 = service3;
				}
				services = userService.getUserServices(services2.getUsers()
						.getId().getUsersId(), services2.getServicesId());
				System.out.println("services.lenght" + services.size());

				for (Services services32 : services) {
					System.out.println("-----------------------");
					System.out.println(services32.getServiceName());
				}

				String add = LoginController.class.getProtectionDomain()
						.getCodeSource().getLocation().getPath();
				System.out.println(add);
				// adds the address of the workspace +the path to the image
				// folder
				String add2 = add.substring(0, add.indexOf(".")) + "Freefay"
						+ File.separator + "WebContent" + File.separator
						+ "resources" + File.separator + "services"
						+ File.separator + "services-images" + File.separator;
				System.out.println(add2);
				// for removing %20 from the adds
				Pattern p = Pattern.compile("%20");
				Matcher m = p.matcher(add2);
				add2 = m.replaceAll(" ");
				System.out.println(add2);

				File dir = new File(add2);
				File[] files = dir.listFiles();
				if (files.length != 0) {
					System.out.println("in if---------------");
					for (File file : files) {
						System.out.println("file name------" + file.getName());
						System.out.println(services2.getUsers().getId()
								.getUsername()
								+ "-id-"
								+ services2.getServicesId()
								+ "-service-image");
						System.out.println("true-------------"
								+ (file.getName()).matches(services2.getUsers()
										.getId().getUsername()
										+ "-id-"
										+ services2.getServicesId()
										+ "-service-image(.*).jpg"));
						if ((file.getName()).matches(services2.getUsers()
								.getId().getUsername()
								+ "-id-"
								+ services2.getServicesId()
								+ "-service-image(.*).jpg")) {
							count++;
							System.out.println("count---------------" + count);

						}
					}
				}
				// dir.equals(services2.getUsers().getId().getUsername()+"-id-"+services2.getServicesId()+"service-image");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			model.addAttribute("list", services);
			model.addAttribute("services", services2);
			model.addAttribute("check", "service");
			model.addAttribute("count", count);
		} else if (check.equals("request")) {
			System.out.println("request-------");
			try {
				requests = userService.getRequestByID(id);
				for (Requests requests3 : requests) {
					requests2 = requests3;
				}
				requests = userService.getUserRequests(requests2.getUsers()
						.getId().getUsersId(), requests2.getRequestsId());
				model.addAttribute("list", requests);
				model.addAttribute("requests", requests2);
				model.addAttribute("check", "request");
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}

		}

		return "public-singlePortfolio";
	}

	// ==================orderpage=========
	@RequestMapping(value = "/user/Orderpage", method = RequestMethod.GET)
	public String Orderpage(Model model,
			final RedirectAttributes redirectAttributes,
			@RequestParam(required = true) Long id, String check) {
		List<Services> services = new ArrayList<>();
		Services services2 = new Services();
		List<Requests> requests = new ArrayList<>();
		Requests requests2 = new Requests();
		String url = "";
		try {

			if (check.equals("service")) {
				services = userService.getServiceByID(id);
				for (Services service3 : services) {
					services2 = service3;
				}
				url = "user-Orderpage";
				model.addAttribute("service", services2);
			} else if (check.equals("bid")) {
				requests = userService.getRequestByID(id);
				for (Requests requests3 : requests) {
					requests2 = requests3;
				}
				model.addAttribute("request" + "", requests2);
				url = "user-bidPage";
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		return url;
	}

	// user/placeOrder
	@RequestMapping(value = "/user/placeOrder", method = RequestMethod.POST)
	public String userPlaceOrder(Model model,
			final RedirectAttributes redirectAttributes,
			@RequestParam("id") String serviceId,
			@RequestParam("name") String serviceName,
			@RequestParam("username") String username,
			@RequestParam("budget") String budget,
			@RequestParam("timeLimit") String timeLimit,
			@RequestParam("order") String order) {

		Date date = new Date();
		DateTimeUtil util = new DateTimeUtil();

		// Message Head
		MessageHeads heads = new MessageHeads();
		heads.setBlocked(0);
		heads.setActive(1);
		heads.setType("services_id");
		heads.setTypeId(Long.parseLong(serviceId));
		heads.setSubject("Order");
		List<Users> list = new ArrayList<>();
		Users users = new Users();

		try {
			heads.setDate(util.converToSQLDate(date));
			heads.setTime(util.converToSQLTime(date));
			list = userService.getUserIds(username);
			for (Users users2 : list) {
				users = users2;
			}
			heads.setUsersByFkMessageHeadsUsers2(users);

			Authentication auth = SecurityContextHolder.getContext()
					.getAuthentication();
			String username2 = auth.getName();
			System.out.println(username2);

			list = userService.getUserIds(username2);
			for (Users users2 : list) {
				users = users2;
			}
			heads.setStatus("in process");
			heads.setUsersByFkMessageHeadsUsers1(users);
			userService.addMessageHead(heads);

			// geting heads id
			List<MessageHeads> list2 = userService
					.getMessageHeadsIdByDate(heads);
			System.out.println("lengthof heads" + list2.size());
			for (MessageHeads messageHeads : list2) {
				heads = messageHeads;
			}

			// Message
			Messages messages = new Messages();
			messages.setUsers(users);
			messages.setBlocked(0);
			messages.setMessageRead(0);
			messages.setMessageTyping(0);
			messages.setDate(util.converToSQLDate(date));
			messages.setTime(util.converToSQLTime(date));
			messages.setMessageText("Hi i would like to hire your services of Gig ID ="
					+ serviceId
					+ ", name="
					+ serviceName
					+ " ,My order is of :"
					+ order
					+ " gigs costing ="
					+ Double.parseDouble(budget)
					* Long.parseLong(order)
					+ " excluding processing fees");
			messages.setMessageHeads(heads);
			userService.addMessage(messages);
			// adding job details

			System.out.println("before----job details");
			JobDetails details = new JobDetails();
			details.setActive(0);
			details.setBlocked(0);
			details.setCancelled(0);
			details.setIssues(0);
			details.setOrders(Integer.parseInt(order));
			details.setMessageHeads(heads);
			details.setUsersByFkJobDetailsUsers2(heads
					.getUsersByFkMessageHeadsUsers2());
			details.setUsersByFkJobDetailsUsers1(heads
					.getUsersByFkMessageHeadsUsers1());
			details.setPaymentCleared(0);
			Long a = (long) (Double.parseDouble(budget) * Long.parseLong(order));
			System.out.println("amount" + a);
			details.setTotalAmount(a);
			int r = (int) Double.parseDouble(budget);
			System.out.println("rate" + r);
			details.setRate(r);
			List<Portfolio> portfolios = new ArrayList<>();
			Portfolio portfolio = new Portfolio();
			portfolios = userService.getUserPortfolio(heads
					.getUsersByFkMessageHeadsUsers2().getId().getUsername());
			for (Portfolio portfolio2 : portfolios) {
				portfolio = portfolio2;
				System.out.println("portfolio1" + portfolio.getPortfolioId());
			}
			details.setPortfolioByProviderPortfolioId(portfolio);

			portfolios = userService.getUserPortfolio(heads
					.getUsersByFkMessageHeadsUsers1().getId().getUsername());
			for (Portfolio portfolio2 : portfolios) {
				portfolio = portfolio2;
				System.out.println("portfolio2" + portfolio.getPortfolioId());
			}
			System.out.println("after----portfolio");
			details.setPortfolioByRequesteePortfolioId(portfolio);
			details.setStartingDate(util.converToSQLDate(date));
			details.setStartingTime(util.converToSQLTime(date));
			details.setEndingDate(util.converToSQLDate(date));
			details.setEndingTime(util.converToSQLTime(date));
			userService.addJobDetails(details);
			System.out.println("saved----job details");

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "redirect:/user/inbox.io";
	}

	// ================place bid===================
	@RequestMapping(value = "/user/placeBid", method = RequestMethod.POST)
	public String userPlaceBid(Model model,
			final RedirectAttributes redirectAttributes,
			@RequestParam("id") String serviceId,
			@RequestParam("name") String serviceName,
			@RequestParam("username") String username,
			@RequestParam("budget") String budget, @RequestParam("bid") int bid) {

		Date date = new Date();
		DateTimeUtil util = new DateTimeUtil();

		// Message Head
		MessageHeads heads = new MessageHeads();
		heads.setBlocked(0);
		heads.setActive(1);
		heads.setType("requests_id");
		heads.setTypeId(Long.parseLong(serviceId));
		heads.setSubject("Bid");
		List<Users> list = new ArrayList<>();
		Users users = new Users();

		try {
			heads.setDate(util.converToSQLDate(date));
			heads.setTime(util.converToSQLTime(date));
			list = userService.getUserIds(username);
			for (Users users2 : list) {
				users = users2;
			}
			heads.setUsersByFkMessageHeadsUsers2(users);

			Authentication auth = SecurityContextHolder.getContext()
					.getAuthentication();
			String username2 = auth.getName();
			System.out.println(username2);

			list = userService.getUserIds(username2);
			for (Users users2 : list) {
				users = users2;
			}
			heads.setStatus("in process");
			heads.setUsersByFkMessageHeadsUsers1(users);
			userService.addMessageHead(heads);

			// geting heads id
			List<MessageHeads> list2 = userService
					.getMessageHeadsIdByDate(heads);
			System.out.println("lengthof heads" + list2.size());
			for (MessageHeads messageHeads : list2) {
				heads = messageHeads;
			}

			// Message
			Messages messages = new Messages();
			messages.setUsers(users);
			messages.setBlocked(0);
			messages.setMessageRead(0);
			messages.setMessageTyping(0);
			messages.setDate(util.converToSQLDate(date));
			messages.setTime(util.converToSQLTime(date));
			messages.setMessageText("Hi i would like to offer you my services for Request ID ="
					+ serviceId
					+ ", name="
					+ serviceName
					+ " ,My Bid is of :"
					+ bid + " excluding processing fees");
			messages.setMessageHeads(heads);
			userService.addMessage(messages);
			// adding job details

			System.out.println("before----job details");
			JobDetails details = new JobDetails();
			details.setActive(0);
			details.setBlocked(0);
			details.setCancelled(0);
			details.setIssues(0);
			details.setOrders(bid);
			details.setMessageHeads(heads);
			details.setUsersByFkJobDetailsUsers2(heads
					.getUsersByFkMessageHeadsUsers2());
			details.setUsersByFkJobDetailsUsers1(heads
					.getUsersByFkMessageHeadsUsers1());
			details.setPaymentCleared(0);
			Long a = (long) (bid);
			System.out.println("amount" + a);
			details.setTotalAmount(a);
			int r = (int) Double.parseDouble(budget);
			System.out.println("rate" + r);
			details.setRate(r);
			List<Portfolio> portfolios = new ArrayList<>();
			Portfolio portfolio = new Portfolio();
			portfolios = userService.getUserPortfolio(heads
					.getUsersByFkMessageHeadsUsers2().getId().getUsername());
			for (Portfolio portfolio2 : portfolios) {
				portfolio = portfolio2;
				System.out.println("portfolio1" + portfolio.getPortfolioId());
			}
			details.setPortfolioByProviderPortfolioId(portfolio);

			portfolios = userService.getUserPortfolio(heads
					.getUsersByFkMessageHeadsUsers1().getId().getUsername());
			for (Portfolio portfolio2 : portfolios) {
				portfolio = portfolio2;
				System.out.println("portfolio2" + portfolio.getPortfolioId());
			}
			System.out.println("after----portfolio");
			details.setPortfolioByRequesteePortfolioId(portfolio);
			details.setStartingDate(util.converToSQLDate(date));
			details.setStartingTime(util.converToSQLTime(date));
			details.setEndingDate(util.converToSQLDate(date));
			details.setEndingTime(util.converToSQLTime(date));
			userService.addJobDetails(details);
			System.out.println("saved----job details");

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "redirect:/user/requestMail.io";
	}

	// ================inbox=========
	@RequestMapping(value = "/user/inbox")
	public String userInbox(Model model) {

		return "user-chat";
	}

	@RequestMapping(value = "/user/requestMail")
	public String userRequestMail(Model model) {

		return "user-chatrequest";
	}

	@RequestMapping(value = "/user/allMails")
	public String userAllMails(Model model) {

		return "user-chatallMail";
	}

	@RequestMapping(value = "/user/chatBox", method = RequestMethod.GET)
	public String userChatBox(Model model) {
		List<MessageHeads> heads = new ArrayList<>();
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username2 = auth.getName();
		System.out.println(username2);
		List<Users> users = new ArrayList<>();
		Users users2 = new Users();
		try {
			users = userService.getUserIds(username2);
			for (Users users3 : users) {
				users2 = users3;
			}
			heads = userService.getMessageHeadsByservicessuser(users2.getId()
					.getUsername(), users2.getId().getUsersId());
			for (MessageHeads heads2 : heads) {
				System.out.println(heads2.getSubject() + "hello");
			}
			model.addAttribute("heads", heads);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "ajax-jsps/chatboxAjax";
	}

	@RequestMapping(value = "/user/chatBoxrequest", method = RequestMethod.GET)
	public String userChatBoxrequest(Model model) {
		List<MessageHeads> heads = new ArrayList<>();
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username2 = auth.getName();
		System.out.println(username2);
		List<Users> users = new ArrayList<>();
		Users users2 = new Users();
		try {
			users = userService.getUserIds(username2);
			for (Users users3 : users) {
				users2 = users3;
			}
			heads = userService.getMessageHeadsByrequestsuser(users2.getId()
					.getUsername(), users2.getId().getUsersId());
			for (MessageHeads heads2 : heads) {
				System.out.println(heads2.getSubject() + "hello");
			}
			model.addAttribute("heads", heads);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "ajax-jsps/chatboxAjax";
	}

	@RequestMapping(value = "/user/chatBoxallMail", method = RequestMethod.GET)
	public String userChatBoxallMail(Model model) {
		List<MessageHeads> heads = new ArrayList<>();
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username2 = auth.getName();
		System.out.println(username2);
		List<Users> users = new ArrayList<>();
		Users users2 = new Users();
		try {
			users = userService.getUserIds(username2);
			for (Users users3 : users) {
				users2 = users3;
			}
			heads = userService.getMessageHeadsByallmailuser(users2.getId()
					.getUsername(), users2.getId().getUsersId());
			for (MessageHeads heads2 : heads) {
				System.out.println(heads2.getSubject() + "hello");
			}
			model.addAttribute("heads", heads);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "ajax-jsps/chatboxAjax";
	}

	@RequestMapping(value = "/user/readMessage")
	public String userReadMessage(Model model,
			@RequestParam(required = true) Long id) {
		List<MessageHeads> heads = new ArrayList<>();
		MessageHeads heads2 = new MessageHeads();
		try {
			List<Users> users = new ArrayList<>();
			Users users2 = new Users();
			Authentication auth = SecurityContextHolder.getContext()
					.getAuthentication();
			String username2 = auth.getName();
			System.out.println(username2);

			users = userService.getUserIds(username2);
			for (Users users3 : users) {
				users2 = users3;
			}
			Messages messages = new Messages();
			heads = userService.getMessageHeadById(id);
			for (MessageHeads messageHeads : heads) {
				heads2 = messageHeads;
				if (users2.getId().getUsersId() == heads2
						.getUsersByFkMessageHeadsUsers2().getId().getUsersId()
						&& heads2.getType().equals("services_id")) {
					model.addAttribute("provider", 1);
				}
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		model.addAttribute("id", heads2);
		return "user-readMessage";
	}

	@RequestMapping(value = "/user/readMessageAjax", method = RequestMethod.GET)
	public String Orderpage(Model model, @RequestParam(required = true) Long id) {

		List<Messages> heads = new ArrayList<>();
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username2 = auth.getName();
		System.out.println(username2);
		List<Users> users = new ArrayList<>();
		Users users2 = new Users();
		try {
			users = userService.getUserIds(username2);
			for (Users users3 : users) {
				users2 = users3;
			}
			heads = userService.getMessagesByHeaderId(id);
			for (Messages messages2 : heads) {
				System.out.println(messages2.getMessageText());
			}
			model.addAttribute("users", users2);
			model.addAttribute("heads", heads);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "ajax-jsps/messagesAjax";
	}

	@RequestMapping(value = "/user/sendMessage", method = RequestMethod.POST)
	public String usersendMessage(Model model,
			final RedirectAttributes redirectAttributes,
			@RequestParam("id") Long id, @RequestParam("message") String message) {
		List<MessageHeads> heads = new ArrayList<>();
		List<Users> list = new ArrayList<>();
		Users users3 = new Users();
		Messages messages = new Messages();
		try {
			heads = userService.getMessageHeadById(id);
			for (MessageHeads messageHeads : heads) {
				messages.setMessageHeads(messageHeads);
			}
			Authentication auth = SecurityContextHolder.getContext()
					.getAuthentication();
			String username2 = auth.getName();
			System.out.println(username2);

			list = userService.getUserIds(username2);
			for (Users users2 : list) {
				users3 = users2;
			}
			Date date = new Date();
			DateTimeUtil util = new DateTimeUtil();
			messages.setUsers(users3);
			messages.setBlocked(0);
			messages.setMessageRead(0);
			messages.setMessageTyping(0);
			messages.setDate(util.converToSQLDate(date));
			messages.setTime(util.converToSQLTime(date));
			messages.setMessageText(message);
			userService.addMessage(messages);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "";
	}

	// ==============Accept Order && Recline Order========
	@RequestMapping(value = "/user/orderAccept", method = RequestMethod.GET)
	public String OrderAccept(Model model,
			@RequestParam(required = true) Long id) {
		List<JobDetails> details = new ArrayList<>();
		JobDetails jobDetails = new JobDetails();
		List<Services> list = new ArrayList<>();
		Services services = new Services();
		try {
			details = userService.getJobDetailsByMessageHeadId(id);
			for (JobDetails jobDetails1 : details) {
				jobDetails = jobDetails1;
			}
			services.setServicesId(jobDetails.getMessageHeads().getTypeId());
			list = userService.getServiceByID(services.getServicesId());
			Date date = new Date();
			DateTimeUtil util = new DateTimeUtil();
			jobDetails.setActive(1);
			jobDetails.setStartingDate(util.converToSQLDate(date));
			jobDetails.setStartingTime(util.converToSQLTime(date));
			String dt = util.converToSQLDate(date).toString(); // Start date
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Calendar c = Calendar.getInstance();
			c.setTime(sdf.parse(dt));
			for (Services services2 : list) {
				services = services2;
			}

			if (services.getTimeLimit().equals("1-3")) {
				c.add(Calendar.DATE, (3 * jobDetails.getOrders()));
			}
			if (services.getTimeLimit().equals("3-7")) {
				c.add(Calendar.DATE, (7 * jobDetails.getOrders()));
			}
			if (services.getTimeLimit().equals("7-14")) {
				c.add(Calendar.DATE, (14 * jobDetails.getOrders()));
			}
			if (services.getTimeLimit().equals("14-30")) {
				c.add(Calendar.DATE, (30 * jobDetails.getOrders()));
			}
			dt = sdf.format(c.getTime());

			jobDetails.setEndingDate(util.convertToDate(dt));
			jobDetails.setEndingTime(util.converToSQLTime(date));
			userService.addJobDetails(jobDetails);
			Messages messages = new Messages();
			messages.setUsers(jobDetails.getUsersByFkJobDetailsUsers2());
			messages.setBlocked(0);
			messages.setMessageRead(0);
			messages.setMessageTyping(0);
			messages.setDate(util.converToSQLDate(date));
			messages.setTime(util.converToSQLTime(date));
			messages.setMessageText("Job Accepted");
			messages.setMessageHeads(jobDetails.getMessageHeads());
			userService.addMessage(messages);
			MessageHeads heads = new MessageHeads();
			heads = messages.getMessageHeads();
			heads.setStatus("in progress");
			userService.addMessageHead(heads);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "redirect:/users/inbox.io";
	}

	@RequestMapping(value = "/user/orderRecline", method = RequestMethod.GET)
	public String OrderRecline(Model model,
			@RequestParam(required = true) Long id) {
		List<JobDetails> details = new ArrayList<>();
		JobDetails jobDetails = new JobDetails();

		try {
			details = userService.getJobDetailsByMessageHeadId(id);
			for (JobDetails jobDetails1 : details) {
				jobDetails = jobDetails1;
			}
			System.out.println("in recline job details");
			jobDetails.setCancelled(1);
			System.out.println("endingDate:-" + jobDetails.getEndingDate());
			userService.addJobDetails(jobDetails);
			Messages messages = new Messages();
			messages.setUsers(jobDetails.getUsersByFkJobDetailsUsers2());
			messages.setBlocked(0);
			messages.setMessageRead(0);
			messages.setMessageTyping(0);
			Date date = new Date();
			DateTimeUtil util = new DateTimeUtil();
			messages.setDate(util.converToSQLDate(date));
			messages.setTime(util.converToSQLTime(date));
			messages.setMessageText("Services Declined");
			messages.setMessageHeads(jobDetails.getMessageHeads());
			userService.addMessage(messages);
			MessageHeads heads = new MessageHeads();
			heads = messages.getMessageHeads();
			heads.setStatus("cancelled");
			userService.addMessageHead(heads);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "redirect:/user/inbox.io";
	}

	// ======================Admin================
	// ================inbox=========
	@RequestMapping(value = "/admin/inbox")
	public String adminInbox(Model model) {

		return "admin-chat";
	}

	@RequestMapping(value = "/admin/requestMail")
	public String adminRequestMail(Model model) {

		return "admin-chatrequest";
	}

	@RequestMapping(value = "/admin/allMails")
	public String adminAllMails(Model model) {

		return "admin-chatallMail";
	}

	@RequestMapping(value = "/admin/cancelledMails")
	public String adminCancelledMails(Model model) {

		return "admin-cancelledMail";
	}

	@RequestMapping(value = "/admin/blockedMails")
	public String adminBlockedMails(Model model) {

		return "admin-blockedMail";
	}

	@RequestMapping(value = "/admin/chatBox", method = RequestMethod.GET)
	public String adminChatBox(Model model) {
		List<MessageHeads> heads = new ArrayList<>();
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username2 = auth.getName();
		System.out.println(username2);
		List<Users> users = new ArrayList<>();
		Users users2 = new Users();
		try {
			users = userService.getUserIds(username2);
			for (Users users3 : users) {
				users2 = users3;
			}
			heads = userService.getMessageHeadsByservicessuseradmin();
			for (MessageHeads heads2 : heads) {
				System.out.println(heads2.getSubject() + "hello");
			}
			model.addAttribute("heads", heads);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "ajax-jsps/chatboxadminAjax";
	}

	@RequestMapping(value = "/admin/chatBoxAll", method = RequestMethod.GET)
	public String adminChatBoxAll(Model model) {
		List<MessageHeads> heads = new ArrayList<>();
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username2 = auth.getName();
		System.out.println(username2);
		List<Users> users = new ArrayList<>();
		Users users2 = new Users();
		try {
			users = userService.getUserIds(username2);
			for (Users users3 : users) {
				users2 = users3;
			}
			heads = userService.getMessageHeadsByallmailuseradmin();
			for (MessageHeads heads2 : heads) {
				System.out.println(heads2.getSubject() + "hello");
			}
			model.addAttribute("heads", heads);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "ajax-jsps/chatboxadminAjax";
	}

	@RequestMapping(value = "/admin/chatBoxRequest", method = RequestMethod.GET)
	public String adminChatBoxRequest(Model model) {
		List<MessageHeads> heads = new ArrayList<>();
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username2 = auth.getName();
		System.out.println(username2);
		List<Users> users = new ArrayList<>();
		Users users2 = new Users();
		try {
			users = userService.getUserIds(username2);
			for (Users users3 : users) {
				users2 = users3;
			}
			heads = userService.getMessageHeadsByrequestsuseradmin();
			for (MessageHeads heads2 : heads) {
				System.out.println(heads2.getSubject() + "hello");
			}
			model.addAttribute("heads", heads);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "ajax-jsps/chatboxadminAjax";
	}

	@RequestMapping(value = "/admin/readMessage")
	public String adminReadMessage(Model model,
			@RequestParam(required = true) Long id) {
		List<MessageHeads> heads = new ArrayList<>();
		MessageHeads heads2 = new MessageHeads();
		try {
			List<Users> users = new ArrayList<>();
			Users users2 = new Users();
			Authentication auth = SecurityContextHolder.getContext()
					.getAuthentication();
			String username2 = auth.getName();
			System.out.println(username2);

			users = userService.getUserIds(username2);
			for (Users users3 : users) {
				users2 = users3;
			}
			Messages messages = new Messages();
			heads = userService.getMessageHeadById(id);
			for (MessageHeads messageHeads : heads) {
				heads2 = messageHeads;
				if (users2.getId().getUsersId() == heads2
						.getUsersByFkMessageHeadsUsers2().getId().getUsersId()
						&& heads2.getType().equals("services_id")) {
					model.addAttribute("provider", 1);
				}
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		model.addAttribute("id", heads2);
		return "admin-readMessage";
	}

	@RequestMapping(value = "/admin/readMessageAjax", method = RequestMethod.GET)
	public String adminOrderpage(Model model,
			@RequestParam(required = true) Long id) {

		List<Messages> heads = new ArrayList<>();
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username2 = auth.getName();
		System.out.println(username2);
		List<Users> users = new ArrayList<>();
		Users users2 = new Users();
		try {
			users = userService.getUserIds(username2);
			for (Users users3 : users) {
				users2 = users3;
			}
			heads = userService.getMessagesByHeaderId(id);
			for (Messages messages2 : heads) {
				System.out.println(messages2.getMessageText());
			}
			model.addAttribute("users", users2);
			model.addAttribute("heads", heads);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "ajax-jsps/messagesadminAjax";
	}

	// // ==============Accept Bid && Decline Bid========
	// @RequestMapping(value = "/user/bidAccept", method = RequestMethod.GET)
	// public String bidAccept(Model model,
	// @RequestParam(required = true) Long id) {
	// List<JobDetails> details = new ArrayList<>();
	// JobDetails jobDetails = new JobDetails();
	// List<Requests> list = new ArrayList<>();
	// Requests requests= new Requests();
	// try {
	// details = userService.getJobDetailsByMessageHeadId(id);
	// for (JobDetails jobDetails1 : details) {
	// jobDetails = jobDetails1;
	// }
	// requests.setRequestsId(jobDetails.getMessageHeads().getTypeId());
	// list = userService.getRequestByID(requests.getRequestsId());
	// Date date = new Date();
	// DateTimeUtil util = new DateTimeUtil();
	// jobDetails.setActive(1);
	// jobDetails.setStartingDate(util.converToSQLDate(date));
	// jobDetails.setStartingTime(util.converToSQLTime(date));
	// String dt = util.converToSQLDate(date).toString(); // Start date
	// SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	// Calendar c = Calendar.getInstance();
	// c.setTime(sdf.parse(dt));
	// for (Services services2 : list) {
	// services = services2;
	// }
	//
	// if (services.getTimeLimit().equals("1-3")) {
	// c.add(Calendar.DATE, (3 * jobDetails.getOrders()));
	// }
	// if (services.getTimeLimit().equals("3-7")) {
	// c.add(Calendar.DATE, (7 * jobDetails.getOrders()));
	// }
	// if (services.getTimeLimit().equals("7-14")) {
	// c.add(Calendar.DATE, (14 * jobDetails.getOrders()));
	// }
	// if (services.getTimeLimit().equals("14-30")) {
	// c.add(Calendar.DATE, (30 * jobDetails.getOrders()));
	// }
	// dt = sdf.format(c.getTime());
	//
	// jobDetails.setEndingDate(util.convertToDate(dt));
	// jobDetails.setEndingTime(util.converToSQLTime(date));
	// userService.addJobDetails(jobDetails);
	// Messages messages = new Messages();
	// messages.setUsers(jobDetails.getUsersByFkJobDetailsUsers2());
	// messages.setBlocked(0);
	// messages.setMessageRead(0);
	// messages.setMessageTyping(0);
	// messages.setDate(util.converToSQLDate(date));
	// messages.setTime(util.converToSQLTime(date));
	// messages.setMessageText("Bid Accepted");
	// messages.setMessageHeads(jobDetails.getMessageHeads());
	// userService.addMessage(messages);
	// MessageHeads heads = new MessageHeads();
	// heads = messages.getMessageHeads();
	// heads.setStatus("in progress");
	// userService.addMessageHead(heads);
	// } catch (Exception e) {
	// // TODO Auto-generated catch block
	// e.printStackTrace();
	// }
	//
	// return "redirect:/users/inbox.io";
	// }
	//
	// @RequestMapping(value = "/user/bidRecline", method = RequestMethod.GET)
	// public String bidRecline(Model model,
	// @RequestParam(required = true) Long id) {
	// List<JobDetails> details = new ArrayList<>();
	// JobDetails jobDetails = new JobDetails();
	//
	// try {
	// details = userService.getJobDetailsByMessageHeadId(id);
	// for (JobDetails jobDetails1 : details) {
	// jobDetails = jobDetails1;
	// }
	// System.out.println("in decline job details");
	// jobDetails.setCancelled(1);
	// System.out.println("endingDate:-" + jobDetails.getEndingDate());
	// userService.addJobDetails(jobDetails);
	// Messages messages = new Messages();
	// messages.setUsers(jobDetails.getUsersByFkJobDetailsUsers2());
	// messages.setBlocked(0);
	// messages.setMessageRead(0);
	// messages.setMessageTyping(0);
	// Date date = new Date();
	// DateTimeUtil util = new DateTimeUtil();
	// messages.setDate(util.converToSQLDate(date));
	// messages.setTime(util.converToSQLTime(date));
	// messages.setMessageText("Services Declined");
	// messages.setMessageHeads(jobDetails.getMessageHeads());
	// userService.addMessage(messages);
	// MessageHeads heads = new MessageHeads();
	// heads = messages.getMessageHeads();
	// heads.setStatus("cancelled");
	// userService.addMessageHead(heads);
	// } catch (Exception e) {
	// e.printStackTrace();
	// }
	//
	// return "redirect:/user/inbox.io";
	// }
	// ======================Admin-menu======================

	@RequestMapping(value = "/admin/menu")
	public String adminMenu(Model model) {
		List<Category> categories = new ArrayList<>();
		try {
			categories = userService.getAllCategoryActive();
			System.out.println("Helloo=============");
			model.addAttribute("category", categories);
			categories = userService.getCategoryMenu();
			int count = 1;
			for (Category category : categories) {
				System.out.println("1----");
				System.out.println(count);
				if (count == 1) {
					model.addAttribute("c1", category);
				}
				if (count == 2) {
					model.addAttribute("c2", category);
				}
				if (count == 3) {
					model.addAttribute("c3", category);
				}
				if (count == 4) {
					model.addAttribute("c4", category);
				}
				if (count == 5) {
					model.addAttribute("c5", category);
				}
				if (count == 6) {
					model.addAttribute("c6", category);
				}
				if (count == 7) {
					model.addAttribute("c7", category);
				}
				if (count == 8) {
					model.addAttribute("c8", category);
				}

				count++;
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "admin-menu";
	}

	@RequestMapping(value = "/admin/saveMenu", method = RequestMethod.POST)
	public String saveMenu(Model model, @RequestParam("categoryId1") int c1,
			@RequestParam("categoryId2") long c2,
			@RequestParam("categoryId3") long c3,
			@RequestParam("categoryId4") long c4,
			@RequestParam("categoryId5") long c5,
			@RequestParam("categoryId6") long c6,
			@RequestParam("categoryId7") long c7,
			@RequestParam("categoryId8") long c8) {
		List<Category> categories = new ArrayList<>();

		try {

			categories = userService.getCategoryMenu();
			for (Category category : categories) {
				category.setMenu(0);
				userService.addCategory(category);
			}
			categories = userService.getCategoryById((c1));

			for (Category category : categories) {
				category.setMenu(1);
				userService.addCategory(category);
			}
			categories = userService.getCategoryById((c2));

			for (Category category : categories) {
				category.setMenu(1);
				userService.addCategory(category);
			}
			categories = userService.getCategoryById((c3));

			for (Category category : categories) {
				category.setMenu(1);
				userService.addCategory(category);
			}
			categories = userService.getCategoryById((c4));

			for (Category category : categories) {
				category.setMenu(1);
				userService.addCategory(category);
			}
			categories = userService.getCategoryById((c5));

			for (Category category : categories) {
				category.setMenu(1);
				userService.addCategory(category);
			}
			categories = userService.getCategoryById((c6));

			for (Category category : categories) {
				category.setMenu(1);
				userService.addCategory(category);
			}
			categories = userService.getCategoryById((c7));

			for (Category category : categories) {
				category.setMenu(1);
				userService.addCategory(category);
			}
			categories = userService.getCategoryById((c8));

			for (Category category : categories) {
				category.setMenu(1);
				userService.addCategory(category);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return "redirect:/admin/menu.io";
	}
}
