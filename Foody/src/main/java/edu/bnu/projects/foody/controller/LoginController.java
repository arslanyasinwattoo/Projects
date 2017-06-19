package edu.bnu.projects.foody.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import edu.bnu.projects.foody.entity.FoodItems;
import edu.bnu.projects.foody.entity.FoodItemsReview;
import edu.bnu.projects.foody.entity.FoodType;
import edu.bnu.projects.foody.entity.Resturant;
import edu.bnu.projects.foody.entity.Users;
import edu.bnu.projects.foody.service.UserService;
import edu.bnu.projects.foody.util.DateTimeUtil;

@Controller
public class LoginController {
	@Autowired
	private UserService userService;

	@RequestMapping(value = "/Login", method = RequestMethod.GET)
	public String Login(Model model, HttpSession session) {
		String url = "";
		System.out.println(session.getAttribute("Active"));
		if (session.getAttribute("Active") != null
				&& session.getAttribute("Active").equals("1")) {

			url = "redirect:/Home.bnu";
		} else {
			model.addAttribute("user", new Users());
			url = "Login";
		}
		return url;
	}

	@RequestMapping(value = "/ManageUser", method = RequestMethod.GET)
	public String ManageUsers(Model model, HttpSession session, String check) {
		String url = "Redirect:/Home.bnu";
		List<Users> users = new ArrayList<>();
		try {
			DateTimeUtil dt = new DateTimeUtil();
			if (check.equalsIgnoreCase("Pending")) {
				users = userService.getAllPendingUsers();
				for (Users users2 : users) {
					users2.setCreatedOnTimestamp(dt.converToSQLDate(users2
							.getCreatedOnTimestamp()));
				}
				model.addAttribute("users", users);
				model.addAttribute("checking", "pending");
			}
			if (check.equalsIgnoreCase("blocked")) {
				users = userService.getAllBlockedUsers();
				for (Users users2 : users) {
					users2.setCreatedOnTimestamp(dt.converToSQLDate(users2
							.getCreatedOnTimestamp()));
				}
				model.addAttribute("users", users);
				model.addAttribute("checking", "blocked");
			}
			if (check.equalsIgnoreCase("view")) {
				users = userService.getAllUser();
				for (Users users2 : users) {
					users2.setCreatedOnTimestamp(dt.converToSQLDate(users2
							.getCreatedOnTimestamp()));
				}
				model.addAttribute("users", users);
				model.addAttribute("checking", "view");

			}
			url = "ManageUser";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return url;
	}

	@RequestMapping(value = "/ManageAdmin", method = RequestMethod.GET)
	public String ManageAdmin(Model model, HttpSession session, String check) {
		String url = "Redirect:/Home.bnu";
		List<Users> users = new ArrayList<>();
		try {
			DateTimeUtil dt = new DateTimeUtil();
			if (check.equalsIgnoreCase("Pending")) {
				users = userService.getAllPendingAdmins();
				for (Users users2 : users) {
					users2.setCreatedOnTimestamp(dt.converToSQLDate(users2
							.getCreatedOnTimestamp()));
				}
				model.addAttribute("users", users);
				model.addAttribute("checking", "pending");
			}
			if (check.equalsIgnoreCase("blocked")) {
				users = userService.getAllBlockedAdmins();
				for (Users users2 : users) {
					users2.setCreatedOnTimestamp(dt.converToSQLDate(users2
							.getCreatedOnTimestamp()));
				}
				model.addAttribute("users", users);
				model.addAttribute("checking", "blocked");
			}
			if (check.equalsIgnoreCase("view")) {
				users = userService.getAllAdmins();
				for (Users users2 : users) {
					users2.setCreatedOnTimestamp(dt.converToSQLDate(users2
							.getCreatedOnTimestamp()));
				}
				model.addAttribute("users", users);
				model.addAttribute("checking", "view");

			}
			url = "ManageAdmin";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return url;
	}

	@RequestMapping(value = "/Home", method = RequestMethod.GET)
	public String Home(Model model, HttpSession session) {
		String url = "";
		System.out.println(session.getAttribute("Active"));
		if (session.getAttribute("Active") != null
				&& session.getAttribute("Active").equals("1")) {
			List<Users> pendingUsers = new ArrayList<>();
			List<Users> blockedUsers = new ArrayList<>();
			DateTimeUtil dt = new DateTimeUtil();
			try {
				pendingUsers = userService.getAllPendingUsers();
				blockedUsers = userService.getAllBlockedUsers();
				for (Users users : pendingUsers) {
					users.setCreatedOnTimestamp(dt.converToSQLDate(users
							.getCreatedOnTimestamp()));
				}
				for (Users users : blockedUsers) {
					users.setCreatedOnTimestamp(dt.converToSQLDate(users
							.getCreatedOnTimestamp()));
				}
				model.addAttribute("pendingUsers", pendingUsers);
				model.addAttribute("blockedUsers", blockedUsers);

			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			url = "Home";
		} else {
			model.addAttribute("user", new Users());
			url = "redirect:/Login.bnu";
		}
		return url;
	}

	@RequestMapping(value = "/doLogin", method = RequestMethod.POST)
	public String doLogin(Model model, @ModelAttribute Users user,
			HttpSession session) {
		List<Users> userList = new ArrayList<>();
		String url = "redirect:/Login.bnu";
		System.out.println(user.getUserName());
		System.out.println(user.getUserPassword());
		int status = 1;
		// List<Role> roleList = new ArrayList<>();
		try {
			userList = userService.getAllUserForLogin();
			for (Users user2 : userList) {
				System.out.println(user2.getUserName());
				if (user2.getUserName().equalsIgnoreCase(user.getUserName())
						&& user2.getUserPassword().equals(
								user.getUserPassword())
						&& user2.getIsConfirmed() == 1
						&& user2.getUsersBlocked() == 0) {
					session.setAttribute("userId", user2.getUsersId());
					session.setAttribute("userName", user2.getUserName());
					if (user2.getIsAdmin() == 1) {
						session.setAttribute("role", "Admin");
					} else if (user2.getIsAdmin() == 0) {
						session.setAttribute("role", "User");
					}
					session.setAttribute("dashBoard", '0');
					session.setAttribute("Active", "1");

					url = "redirect:/Home.bnu";
					// url = "Home";
				} else {
					status = 0;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("Status", status);
		return url;
	}

	@RequestMapping(value = "/dashBoard", method = RequestMethod.GET)
	public String dashBoard(Model model, @ModelAttribute Users user,
			HttpSession session) {

		session.setAttribute("dashBoard", "1");
		return "redirect:/Home.bnu";
	}

	@RequestMapping(value = "/foody", method = RequestMethod.GET)
	public String visitor(Model model, @ModelAttribute Users user,
			HttpSession session) {

		session.setAttribute("dashBoard", "0");

		return "redirect:/Home.bnu";
	}

	@RequestMapping(value = "/Registeration", method = RequestMethod.GET)
	public String Register(Model model) {
		model.addAttribute("user", new Users());
		model.addAttribute("check", 0);
		return "Register";
	}

	@RequestMapping(value = "/AdminRegisteration", method = RequestMethod.GET)
	public String AdminRegister(Model model) {
		model.addAttribute("user", new Users());
		model.addAttribute("check", 1);
		return "Register";
	}

	@RequestMapping(value = "/doRegistration", method = RequestMethod.POST)
	public String Register(Model model, Users user) {
		try {
			Date d = new Date();
			DateTimeUtil dt = new DateTimeUtil();
			user.setCreatedOnTimestamp(dt.converToSQLDate(d));
			user.setIsConfirmed(0);
			if (user.getIsAdmin() == 0) {
				user.setIsAdmin(0);
			} else if (user.getIsAdmin() == 1) {
				user.setIsAdmin(1);
			}
			user.setUsersBlocked(0);
			// List<Users> userList = new ArrayList<>();
			userService.addUser(user);
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

	@RequestMapping(value = "/AdminHome", method = RequestMethod.GET)
	public String upDateUserProperty(
			@RequestParam(required = false) Long userId, int pending,
			int block, int check, String checking) {
		String url = "redirect:/Home.bnu";
		// System.out.println("thumsns");
		Users user = new Users();
		try {
			user.setUsersId(userId);
			user.setUsersBlocked(block);
			user.setIsConfirmed(pending);
			userService.updateUser(user);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (check == 1) {
			url = "redirect:/Home.bnu";

		}
		if (check == 2) {
			url = "redirect:/ManageUser.bnu?check=" + checking;

		}
		if (check == 3) {
			url = "redirect:/ManageAdmin.bnu?check=" + checking;

		}
		return url;
	}

	// --------------------------------------------------------------------------------
	@RequestMapping(value = "/Resturant")
	public String resturant(Model model, HttpSession session) {
		String url = "redirect:/Home.bnu";
		List<Resturant> resturant = new ArrayList<>();
		try {

			resturant = userService.getAllClearedResturant();
			for (Resturant resturant2 : resturant) {
				System.out.println("viewname" + resturant2.getResturantName());
			}

			model.addAttribute("resturant", resturant);
			url = "Resturant";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return url;
	}

	@RequestMapping(value = "/FoodType")
	public String FoodType(Model model, HttpSession session,
			@RequestParam(required = false) Long resturantId, Integer check) {
		String url = "redirect:/Home.bnu";
		List<FoodType> foodType = new ArrayList<>();
		List<Resturant> resturants = new ArrayList<>();
		try {
			resturants = userService.getAllClearedResturant();
			if (check != null) {
				if (check == 1) {
					System.out.println(resturantId);
					foodType = userService.getFoodTypeById(resturantId);
					System.out.println("in foodtype check 1");
					for (FoodType foodTypes : foodType) {
						System.out.println(foodTypes.getFoodTypeName());
					}
					url = "Search";
				}
			} else {
				foodType = userService.getAllClearedFoodType();

				url = "FoodType";
			}
			for (FoodType foodType2 : foodType) {

				for (Resturant resturant : resturants) {
					if (foodType2.getResturantId() == resturant
							.getResturantId()) {
						foodType2
								.setResturantName(resturant.getResturantName());
					}
				}
			}
			// for (Resturant resturant2 : resturant) {
			// System.out.println("viewname" + resturant2.getResturantName());
			// }
			if (check != null) {
				model.addAttribute("foodType", foodType);

			} else {
				model.addAttribute("FoodType", foodType);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return url;
	}

	@RequestMapping(value = "/FoodItem")
	public String foodItem(Model model, HttpSession session,
			@RequestParam(required = false) Long foodTypeId, Integer check) {
		String url = "redirect:/Home.bnu";
		List<FoodItems> foodItem = new ArrayList<>();
		List<Resturant> resturant = new ArrayList<>();
		List<FoodType> foodtype = new ArrayList<>();
		try {
			resturant = userService.getAllClearedResturant();
			foodtype = userService.getAllFoodType();
			if (check != null) {
				if (check == 1) {
					foodItem = userService.getFoodItemsByType(foodTypeId);
					model.addAttribute("foodItem", foodItem);
					System.out.println("in foodItems check=1");
					url = "Search";
				}
			} else {
				foodItem = userService.getAllClearedFoodItems();
				model.addAttribute("FoodItem", foodItem);
				url = "FoodItems";
			}

			for (FoodItems foodItem2 : foodItem) {
				for (Resturant resturant2 : resturant) {
					if (foodItem2.getResturantId() == resturant2
							.getResturantId()) {
						foodItem2.setResturantName(resturant2
								.getResturantName());
					}
				}
				for (FoodType foodType2 : foodtype) {
					if (foodItem2.getFoodTypeId() == foodType2.getFoodTypeId()) {
						foodItem2.setFoodTypeName(foodType2.getFoodTypeName());
					}
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return url;
	}

	@RequestMapping(value = "/FoodReview")
	public String foodReview(Model model, HttpSession session,
			@RequestParam(required = false) Long foodItemId, Integer check) {
		String url = "redirect:/Home.bnu";
		List<FoodItemsReview> foodItemsReviews = new ArrayList<>();
		List<FoodItems> foodItem = new ArrayList<>();
		List<Resturant> resturant = new ArrayList<>();
		List<FoodType> foodtype = new ArrayList<>();
		try {
			resturant = userService.getAllClearedResturant();
			foodItem = userService.getAllFoodItems();
			foodtype = userService.getAllFoodType();

			if (check != null) {
				if (check == 1) {
					foodItemsReviews = userService
							.getReviewByFoodItem(foodItemId);
					url = "Search";
				}
			} else {

				foodItemsReviews = userService.getAllClearReviews();
				url = "FoodReview";
			}
			for (FoodItemsReview review : foodItemsReviews) {
				if (review.getFoodItemsReviewRating().equals("1")) {
					review.setFoodItemsReviewRating("onestar");
				}
				if (review.getFoodItemsReviewRating().equals("2")) {
					review.setFoodItemsReviewRating("twostar");
				}
				if (review.getFoodItemsReviewRating().equals("3")) {
					review.setFoodItemsReviewRating("threestar");
				}
				if (review.getFoodItemsReviewRating().equals("4")) {
					review.setFoodItemsReviewRating("fourstar");
				}
				if (review.getFoodItemsReviewRating().equals("5")) {
					review.setFoodItemsReviewRating("fivestar");
				}
				for (FoodItems items : foodItem) {
					if (review.getFoodItemsId() == items.getFoodItemsId()) {
						review.setFoodItemName(items.getFoodItemsName());
						review.setFoodTypeId(items.getFoodTypeId());

						for (FoodType type : foodtype) {
							if (review.getFoodTypeId() == type.getFoodTypeId()) {
								review.setFoodTypeName(type.getFoodTypeName());
								review.setResturantId(type.getResturantId());

								for (Resturant resturant2 : resturant) {
									if (review.getResturantId() == resturant2
											.getResturantId()) {
										review.setResturantName(resturant2
												.getResturantName());
									}
								}
							}
						}
					}
				}
			}
			if (check != null) {
				if (check == 1) {
					model.addAttribute("foodReview", foodItemsReviews);
				}
			} else {
				model.addAttribute("FoodReview", foodItemsReviews);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return url;
	}

	// -----------------------------------------------------------------------------------------
	@RequestMapping(value = "/ManageResturant", method = RequestMethod.GET)
	public String ManageResturant(Model model, HttpSession session, String check) {
		String url = "redirect:/Home.bnu";
		List<Resturant> resturant = new ArrayList<>();
		try {

			if (check.equalsIgnoreCase("Add")) {
				// users = userService.getAllPendingUsers();
				model.addAttribute("resturant", new Resturant());
				// model.addAttribute("users", users);
				model.addAttribute("checking", "Add");
			}
			if (check.equalsIgnoreCase("Pending")) {
				System.out.println("pending");
				resturant = userService.getAllPendingResturant();
				for (Resturant resturant2 : resturant) {
					System.out.println("pendingname"
							+ resturant2.getResturantName());
				}
				model.addAttribute("resturant", resturant);
				model.addAttribute("checking", "pending");
			}
			if (check.equalsIgnoreCase("blocked")) {
				resturant = userService.getAllBlockedResturant();
				for (Resturant resturant2 : resturant) {
					System.out.println("blockname"
							+ resturant2.getResturantName());
				}
				model.addAttribute("resturant", resturant);
				model.addAttribute("checking", "blocked");
			}
			if (check.equalsIgnoreCase("view")) {
				resturant = userService.getAllResturant();
				for (Resturant resturant2 : resturant) {
					System.out.println("viewname"
							+ resturant2.getResturantName());
				}
				model.addAttribute("resturant", resturant);
				model.addAttribute("checking", "view");

			}
			url = "ManageResturant";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return url;
	}

	@RequestMapping(value = "/updateResturant", method = RequestMethod.GET)
	public String upDateResturant(
			@RequestParam(required = false) Long resturantId, int pending,
			int block, int check, String checking) {
		String url = "redirect:/Home.bnu";
		// System.out.println("thumsns");
		Resturant resturant = new Resturant();
		try {
			resturant.setResturantId(resturantId);
			resturant.setResturantBlocked(block);
			resturant.setResturantPending(pending);
			userService.updateResturant(resturant);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (check == 1) {
			// url = "redirect:/Home.bnu";
			url = "redirect:/ManageResturant.bnu?check=" + checking;
		}
		if (check == 2) {
			url = "redirect:/ManageResturant.bnu?check=" + checking;

		}
		if (check == 3) {
			url = "redirect:/ManageResturant.bnu?check=" + checking;
		}

		return url;
	}

	public String getRealFile(HttpServletRequest request, String path) {
		return request.getSession().getServletContext().getRealPath(path);
	}

	@RequestMapping(value = "/AddResturant", method = RequestMethod.POST)
	// mulitpartfile gets data in bites of a file
	public String AddResturant(Model model,
			@RequestParam(value = "name") String Name,
			@RequestParam(value = "image") MultipartFile image,
			HttpSession session) {
		try {
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
				String add2 = add.substring(0, add.indexOf("."))
						+ "Foody/WebContent/resources/resturantImages/";
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
						+ File.separator + Name + ".jpg");

				BufferedOutputStream stream = new BufferedOutputStream(
						new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();

			}
			Resturant resturant = new Resturant();
			resturant.setResturantName(Name);
			resturant.setResturantBlocked(0);
			resturant.setResturantPending(1);
			System.out.println("userID-" + session.getAttribute("userId"));
			resturant.setUsersId((Long) session.getAttribute("userId"));
			Users users = new Users();
			users.setUsersId((Long) session.getAttribute("userId"));
			userService.addResturant(resturant);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/ManageResturant.bnu?check=Add";
	}

	// ----------------------------------------------------------------

	@RequestMapping(value = "/ManageFoodType", method = RequestMethod.GET)
	public String ManageFoodType(Model model, HttpSession session, String check) {
		String url = "redirect:/Home.bnu";
		List<FoodType> foodType = new ArrayList<>();
		try {
			List<Resturant> resturant = new ArrayList<>();
			if (check.equalsIgnoreCase("Add")) {
				// users = userService.getAllPendingUsers();
				resturant = userService.getAllClearedResturant();
				model.addAttribute("FoodType", new FoodType());
				// model.addAttribute("users", users);
				model.addAttribute("resturant", resturant);
				model.addAttribute("checking", "Add");
			}
			if (check.equalsIgnoreCase("Pending")) {
				System.out.println("pending");
				foodType = userService.getAllPendingFoodType();
				resturant = userService.getAllClearedResturant();
				for (FoodType foodType2 : foodType) {
					for (Resturant resturant2 : resturant) {
						if (foodType2.getResturantId() == resturant2
								.getResturantId()) {
							foodType2.setResturantName(resturant2
									.getResturantName());
						}
					}
				}
				model.addAttribute("FoodType", foodType);
				model.addAttribute("checking", "pending");
			}
			if (check.equalsIgnoreCase("blocked")) {
				foodType = userService.getAllBlockedFoodType();
				resturant = userService.getAllClearedResturant();
				for (FoodType foodType2 : foodType) {
					for (Resturant resturant2 : resturant) {
						if (foodType2.getResturantId() == resturant2
								.getResturantId()) {
							foodType2.setResturantName(resturant2
									.getResturantName());
						}
					}
				}
				model.addAttribute("FoodType", foodType);
				model.addAttribute("checking", "blocked");
			}
			if (check.equalsIgnoreCase("view")) {
				foodType = userService.getAllFoodType();
				resturant = userService.getAllClearedResturant();
				for (FoodType foodType2 : foodType) {
					for (Resturant resturant2 : resturant) {
						if (foodType2.getResturantId() == resturant2
								.getResturantId()) {
							foodType2.setResturantName(resturant2
									.getResturantName());
						}
					}
				}
				model.addAttribute("FoodType", foodType);
				model.addAttribute("checking", "view");

			}
			url = "ManageFoodType";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return url;
	}

	@RequestMapping(value = "/updateFoodType", method = RequestMethod.GET)
	public String upDateFoodType(
			@RequestParam(required = false) Long foodTypeId, int pending,
			int block, int check, String checking) {
		String url = "redirect:/Home.bnu";
		// System.out.println("thumsns");
		FoodType foodType = new FoodType();
		try {
			foodType.setFoodTypePending(pending);
			foodType.setFoodTypeBlocked(block);
			foodType.setFoodTypeId(foodTypeId);
			userService.updateFoodType(foodType);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (check == 1) {
			// url = "redirect:/Home.bnu";
			url = "redirect:/ManageFoodType.bnu?check=" + checking;
		}
		if (check == 2) {
			url = "redirect:/ManageFoodType.bnu?check=" + checking;

		}
		if (check == 3) {
			url = "redirect:/ManageFoodType.bnu?check=" + checking;
		}

		return url;
	}

	@RequestMapping(value = "/AddFoodType", method = RequestMethod.POST)
	public String AddFoodType(Model model,
			@RequestParam(value = "resturantId") long resturantId,
			@RequestParam(value = "foodName") String Name,
			@RequestParam(value = "image") MultipartFile image,
			HttpSession session) {
		try {
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
				String add2 = add.substring(0, add.indexOf("."))
						+ "Foody/WebContent/resources/foodTypeImages/";
				Pattern p = Pattern.compile("%20");
				Matcher m = p.matcher(add2);
				add2 = m.replaceAll(" ");
				// System.out.println(add2);
				File dir = new File(add2);
				// + File.separator + "tmpFiles");
				if (!dir.exists())
					dir.mkdirs();

				// Create the file on server
				File serverFile = new File(dir.getAbsolutePath()
						+ File.separator + Name + "-RID-" + resturantId
						+ ".jpg");
				BufferedOutputStream stream = new BufferedOutputStream(
						new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();

			}

			FoodType foodType = new FoodType();
			foodType.setResturantId(resturantId);
			foodType.setFoodTypeName(Name);
			foodType.setFoodTypePending(1);
			foodType.setFoodTypeBlocked(0);
			System.out.println("userID-" + session.getAttribute("userId"));
			foodType.setUsersId((Long) session.getAttribute("userId"));
			Users users = new Users();
			users.setUsersId((Long) session.getAttribute("userId"));
			foodType.setUsers(users);
			userService.addFoodType(foodType);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/ManageFoodType.bnu?check=Add";
	}

	// --------------------------------------------------------------------------

	@RequestMapping(value = "/ManageFoodItem", method = RequestMethod.GET)
	public String ManageFoodItem(Model model, HttpSession session, String check) {
		String url = "redirect:/Home.bnu";
		List<FoodItems> foodItem = new ArrayList<>();
		List<FoodType> foodtype = new ArrayList<>();

		try {
			List<Resturant> resturant = new ArrayList<>();
			if (check.equalsIgnoreCase("Add")) {
				// users = userService.getAllPendingUsers();
				resturant = userService.getAllClearedResturant();
				model.addAttribute("FoodItem", new FoodItems());

				// model.addAttribute("users", users);
				model.addAttribute("resturant", resturant);
				model.addAttribute("checking", "Add");
			}
			if (check.equalsIgnoreCase("Pending")) {
				System.out.println("pending");

				foodItem = userService.getAllPendingFoodItems();
				resturant = userService.getAllClearedResturant();
				foodtype = userService.getAllFoodType();
				for (FoodItems foodItem2 : foodItem) {
					for (Resturant resturant2 : resturant) {
						if (foodItem2.getResturantId() == resturant2
								.getResturantId()) {
							foodItem2.setResturantName(resturant2
									.getResturantName());
						}
					}
					for (FoodType foodType2 : foodtype) {
						if (foodItem2.getFoodTypeId() == foodType2
								.getFoodTypeId()) {
							foodItem2.setFoodTypeName(foodType2
									.getFoodTypeName());
						}
					}
				}
				model.addAttribute("FoodItem", foodItem);
				model.addAttribute("checking", "pending");
			}
			if (check.equalsIgnoreCase("blocked")) {
				foodItem = userService.getAllBlockedFoodItems();
				resturant = userService.getAllClearedResturant();
				foodtype = userService.getAllFoodType();
				for (FoodItems foodItem2 : foodItem) {
					for (Resturant resturant2 : resturant) {
						if (foodItem2.getResturantId() == resturant2
								.getResturantId()) {
							foodItem2.setResturantName(resturant2
									.getResturantName());
						}
					}
					for (FoodType foodType2 : foodtype) {
						if (foodItem2.getFoodTypeId() == foodType2
								.getFoodTypeId()) {
							foodItem2.setFoodTypeName(foodType2
									.getFoodTypeName());
						}
					}
				}
				model.addAttribute("FoodItem", foodItem);
				model.addAttribute("checking", "blocked");
			}
			if (check.equalsIgnoreCase("view")) {
				foodItem = userService.getAllFoodItems();
				resturant = userService.getAllClearedResturant();
				foodtype = userService.getAllFoodType();
				for (FoodItems foodItem2 : foodItem) {
					for (Resturant resturant2 : resturant) {
						if (foodItem2.getResturantId() == resturant2
								.getResturantId()) {
							foodItem2.setResturantName(resturant2
									.getResturantName());
						}
					}
					for (FoodType foodType2 : foodtype) {
						if (foodItem2.getFoodTypeId() == foodType2
								.getFoodTypeId()) {
							foodItem2.setFoodTypeName(foodType2
									.getFoodTypeName());
						}
					}
				}
				model.addAttribute("FoodItem", foodItem);
				model.addAttribute("checking", "view");

			}
			url = "ManageFoodItem";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return url;
	}

	@RequestMapping(value = "/updateFoodItem", method = RequestMethod.GET)
	public String upDateFoodItem(
			@RequestParam(required = false) Long foodItemId, int pending,
			int block, int check, String checking) {
		String url = "redirect:/Home.bnu";
		// System.out.println("thumsns");
		FoodItems foodItem = new FoodItems();
		try {
			foodItem.setFoodItemsPending(pending);
			foodItem.setFoodItemsBlocked(block);
			foodItem.setFoodItemsId(foodItemId);
			userService.updateFoodItems(foodItem);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (check == 1) {
			// url = "redirect:/Home.bnu";
			url = "redirect:/ManageFoodItem.bnu?check=" + checking;
		}
		if (check == 2) {
			url = "redirect:/ManageFoodItem.bnu?check=" + checking;

		}
		if (check == 3) {
			url = "redirect:/ManageFoodItem.bnu?check=" + checking;
		}

		return url;
	}

	@RequestMapping(value = "/AddFoodItem", method = RequestMethod.POST)
	public String AddFoodItem(Model model,
			@RequestParam("resturantId") long resturantId,
			@RequestParam("foodTypeId") long foodTypeId,
			@RequestParam("foodName") String foodName,
			@RequestParam(value = "image") MultipartFile image,
			HttpSession session) {
		try {
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
				String add2 = add.substring(0, add.indexOf("."))
						+ "Foody/WebContent/resources/foodItemImages/";
				Pattern p = Pattern.compile("%20");
				Matcher m = p.matcher(add2);
				add2 = m.replaceAll(" ");
				// System.out.println(add2);
				File dir = new File(add2);
				// + File.separator + "tmpFiles");
				if (!dir.exists())
					dir.mkdirs();

				// Create the file on server
				File serverFile = new File(dir.getAbsolutePath()
						+ File.separator + foodName + "-RID-" + resturantId
						+ "-FID-" + foodTypeId + ".jpg");
				BufferedOutputStream stream = new BufferedOutputStream(
						new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();

			}
			System.out.println(foodTypeId);
			FoodItems foodItems = new FoodItems();
			foodItems.setResturantId(resturantId);
			foodItems.setFoodItemsName(foodName);
			foodItems.setFoodTypeId(foodTypeId);
			foodItems.setFoodItemsBlocked(0);
			foodItems.setFoodItemsPending(1);
			System.out.println("userID-" + session.getAttribute("userId"));
			foodItems.setUsersId((Long) session.getAttribute("userId"));
			// Users users = new Users();
			// users.setUsersId((Long) session.getAttribute("userId"));
			// foodType.setUsers(users);
			userService.addFoodItems(foodItems);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/ManageFoodItem.bnu?check=Add";
	}

	@RequestMapping(value = "/AjaxFoodType", method = RequestMethod.GET)
	public String ajaxFoodtypeFoodItem(Model model, long resturantId,
			HttpSession session) {
		List<FoodType> foodTypes = new ArrayList<>();
		try {
			System.out.println("foodtypeid" + resturantId);
			if (resturantId > 0) {
				foodTypes = userService.getFoodTypeById(resturantId);
				for (FoodType foodType : foodTypes) {
					System.out.println(foodType.getFoodTypeName());
				}
				// model.addAttribute("FoodTypes", new FoodType());
				model.addAttribute("FoodType", foodTypes);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "/ajax/foodTypeAjax";
	}

	@RequestMapping(value = "/AjaxData", method = RequestMethod.GET)
	public String ajaxData(Model model, String name, HttpSession session) {
		List<FoodType> foodTypes = new ArrayList<>();
		List<FoodItems> foodItems = new ArrayList<>();
		List<Resturant> resturant = new ArrayList<>();
		List<String> names = new ArrayList<>();
		List<FoodType> naming = new ArrayList<>();
		try {
			System.out.println(name);
			Pattern p = Pattern.compile("-");
			Matcher m = p.matcher(name);
			name = m.replaceAll("%");
			foodTypes = userService.searchFoodType(name);
			foodItems = userService.searchFoodItems(name);
			resturant = userService.searchResturants(name);
			for (FoodType foodType : foodTypes) {
				System.out.println("foodType:-" + foodType.getFoodTypeName());
				names.add(foodType.getFoodTypeName());
			}
			for (FoodItems foodItem : foodItems) {
				System.out.println("foodITems" + foodItem.getFoodItemsName());
				names.add(foodItem.getFoodItemsName());
			}
			for (Resturant resturants : resturant) {
				System.out.println("resturant" + resturants.getResturantName());
				names.add(resturants.getResturantName());
			}
			for (String string : names) {
				System.out.println(string);
			}
			model.addAttribute("name", names);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "/ajax/searchAjax";
	}

	// --------------------------------------------------------------------

	@RequestMapping(value = "/ManageReview", method = RequestMethod.GET)
	public String ManageFoodItemReview(Model model, HttpSession session,
			String check) {
		String url = "redirect:/Home.bnu";
		List<FoodItems> foodItem = new ArrayList<>();
		List<FoodType> foodtype = new ArrayList<>();
		// List<Resturant> resturant = new ArrayList<>();
		List<FoodItemsReview> foodItemsReviews = new ArrayList<>();

		try {
			List<Resturant> resturant = new ArrayList<>();
			if (check.equalsIgnoreCase("Add")) {
				// users = userService.getAllPendingUsers();
				resturant = userService.getAllClearedResturant();
				model.addAttribute("Review", new FoodItemsReview());

				model.addAttribute("resturant", resturant);
				model.addAttribute("checking", "Add");
			}
			if (check.equalsIgnoreCase("Pending")) {
				System.out.println("pending");
				resturant = userService.getAllClearedResturant();
				foodItem = userService.getAllFoodItems();
				foodtype = userService.getAllFoodType();
				foodItemsReviews = userService.getAllPendingReviews();

				for (FoodItemsReview review : foodItemsReviews) {
					if (review.getFoodItemsReviewRating().equals("1")) {
						review.setFoodItemsReviewRating("onestar");
					}
					if (review.getFoodItemsReviewRating().equals("2")) {
						review.setFoodItemsReviewRating("twostar");
					}
					if (review.getFoodItemsReviewRating().equals("3")) {
						review.setFoodItemsReviewRating("threestar");
					}
					if (review.getFoodItemsReviewRating().equals("4")) {
						review.setFoodItemsReviewRating("fourstar");
					}
					if (review.getFoodItemsReviewRating().equals("5")) {
						review.setFoodItemsReviewRating("fivestar");
					}
					for (FoodItems items : foodItem) {
						if (review.getFoodItemsId() == items.getFoodItemsId()) {
							review.setFoodItemName(items.getFoodItemsName());
							review.setFoodTypeId(items.getFoodTypeId());

							for (FoodType type : foodtype) {
								if (review.getFoodTypeId() == type
										.getFoodTypeId()) {
									review.setFoodTypeName(type
											.getFoodTypeName());
									review.setResturantId(type.getResturantId());

									for (Resturant resturant2 : resturant) {
										if (review.getResturantId() == resturant2
												.getResturantId()) {
											review.setResturantName(resturant2
													.getResturantName());
										}
									}
								}
							}
						}
					}
				}

				model.addAttribute("FoodItemReview", foodItemsReviews);
				model.addAttribute("checking", "pending");
			}
			if (check.equalsIgnoreCase("blocked")) {
				resturant = userService.getAllClearedResturant();
				foodItem = userService.getAllFoodItems();
				foodtype = userService.getAllFoodType();
				foodItemsReviews = userService.getAllBlockedReviews();

				for (FoodItemsReview review : foodItemsReviews) {
					if (review.getFoodItemsReviewRating().equals("1")) {
						review.setFoodItemsReviewRating("onestar");
					}
					if (review.getFoodItemsReviewRating().equals("2")) {
						review.setFoodItemsReviewRating("twostar");
					}
					if (review.getFoodItemsReviewRating().equals("3")) {
						review.setFoodItemsReviewRating("threestar");
					}
					if (review.getFoodItemsReviewRating().equals("4")) {
						review.setFoodItemsReviewRating("fourstar");
					}
					if (review.getFoodItemsReviewRating().equals("5")) {
						review.setFoodItemsReviewRating("fivestar");
					}
					for (FoodItems items : foodItem) {
						if (review.getFoodItemsId() == items.getFoodItemsId()) {
							review.setFoodItemName(items.getFoodItemsName());
							review.setFoodTypeId(items.getFoodTypeId());

							for (FoodType type : foodtype) {
								if (review.getFoodTypeId() == type
										.getFoodTypeId()) {
									review.setFoodTypeName(type
											.getFoodTypeName());
									review.setResturantId(type.getResturantId());

									for (Resturant resturant2 : resturant) {
										if (review.getResturantId() == resturant2
												.getResturantId()) {
											review.setResturantName(resturant2
													.getResturantName());
										}
									}
								}
							}
						}
					}
				}

				model.addAttribute("FoodItemReview", foodItemsReviews);
				model.addAttribute("checking", "blocked");
			}
			if (check.equalsIgnoreCase("view")) {
				resturant = userService.getAllClearedResturant();
				foodItem = userService.getAllFoodItems();
				foodtype = userService.getAllFoodType();
				foodItemsReviews = userService.getAllReviews();

				for (FoodItemsReview review : foodItemsReviews) {
					System.out.println("review--pending"
							+ review.getFoodItemsReviewPending());
					System.out.println("review--blocked"
							+ review.getFoodItemsReviewBlocked());
					if (review.getFoodItemsReviewRating().equals("1")) {
						review.setFoodItemsReviewRating("onestar");
					}
					if (review.getFoodItemsReviewRating().equals("2")) {
						review.setFoodItemsReviewRating("twostar");
					}
					if (review.getFoodItemsReviewRating().equals("3")) {
						review.setFoodItemsReviewRating("threestar");
					}
					if (review.getFoodItemsReviewRating().equals("4")) {
						review.setFoodItemsReviewRating("fourstar");
					}
					if (review.getFoodItemsReviewRating().equals("5")) {
						review.setFoodItemsReviewRating("fivestar");
					}
					for (FoodItems items : foodItem) {
						if (review.getFoodItemsId() == items.getFoodItemsId()) {
							review.setFoodItemName(items.getFoodItemsName());
							review.setFoodTypeId(items.getFoodTypeId());

							for (FoodType type : foodtype) {
								if (review.getFoodTypeId() == type
										.getFoodTypeId()) {
									review.setFoodTypeName(type
											.getFoodTypeName());
									review.setResturantId(type.getResturantId());

									for (Resturant resturant2 : resturant) {
										if (review.getResturantId() == resturant2
												.getResturantId()) {
											review.setResturantName(resturant2
													.getResturantName());
										}
									}
								}
							}
						}
					}
				}

				model.addAttribute("FoodItemReview", foodItemsReviews);
				model.addAttribute("checking", "view");

			}
			url = "ManageReview";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return url;
	}

	@RequestMapping(value = "/updateReview", method = RequestMethod.GET)
	public String upDateReview(@RequestParam(required = false) Long reviewId,
			int pending, int block, int check, String checking) {
		String url = "redirect:/Home.bnu";
		// System.out.println("thumsns");
		FoodItemsReview foodItem = new FoodItemsReview();
		try {
			foodItem.setFoodItemsReviewPending(pending);
			foodItem.setFoodItemsReviewBlocked(block);
			foodItem.setFoodItemsReviewId(reviewId);
			userService.updateReview(foodItem);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (check == 1) {
			// url = "redirect:/Home.bnu";
			url = "redirect:/ManageReview.bnu?check=" + checking;
		}
		if (check == 2) {
			url = "redirect:/ManageReview.bnu?check=" + checking;

		}
		if (check == 3) {
			url = "redirect:/ManageReview.bnu?check=" + checking;
		}

		return url;
	}

	@RequestMapping(value = "/AddReview", method = RequestMethod.POST)
	public String AddReview(Model model,
			@RequestParam("resturantId") long resturantId,
			@RequestParam("foodTypeId") long foodTypeId,
			@RequestParam("foodItemId") long foodItemId,
			@RequestParam("rating") long rating,
			@RequestParam("review") String review, HttpSession session) {
		try {
			// System.out.println("resturantid" + resturantId);
			// System.out.println("foodTypeid" + foodTypeId);
			// System.out.println("foodITemId" + foodItemId);
			// System.out.println("rating" + rating);
			// System.out.println("review" + review);
			FoodItemsReview foodItemsReview = new FoodItemsReview();
			foodItemsReview.setFoodItemsId(foodItemId);
			foodItemsReview.setFoodItemsReviewDescription(review);
			foodItemsReview.setFoodItemsReviewBlocked(0);
			foodItemsReview.setFoodItemsReviewPending(1);
			foodItemsReview.setFoodItemsReviewRating("" + rating);
			System.out.println("userID-" + session.getAttribute("userId"));
			foodItemsReview.setUsersId((Long) session.getAttribute("userId"));
			userService.addReview(foodItemsReview);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/ManageReview.bnu?check=Add";
	}

	@RequestMapping(value = "/AjaxFoodItem", method = RequestMethod.GET)
	public String ajaxFoodItem(Model model, long foodTypeId, HttpSession session) {
		List<FoodItems> foodItem = new ArrayList<>();
		try {
			System.out.println("foodtypeid" + foodTypeId);
			if (foodTypeId > 0) {
				foodItem = userService.getFoodItemsByType((foodTypeId));
				for (FoodItems foodItem2 : foodItem) {
					System.out.println(foodItem2.getFoodItemsName());
				}
				// model.addAttribute("FoodTypes", new FoodType());
				model.addAttribute("FoodItem", foodItem);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "/ajax/foodItemAjax";
	}

	// --------------------------------------------------------------------
	@RequestMapping(value = "/Search", method = RequestMethod.GET)
	public String search(Model model, String name, HttpSession session) {
		List<FoodType> foodTypes = new ArrayList<>();
		List<FoodItems> foodItems = new ArrayList<>();
		List<Resturant> resturant = new ArrayList<>();
		try {
			System.out.println(name);
			// Pattern p = Pattern.compile("[");
			// Matcher m = p.matcher(name);
			// name = m.replaceAll("");
			name = name.replaceAll("[\\[\\]]", "");
			name = name.trim();
			System.out.println("name after removing []" + name);
			foodTypes = userService.searchFoodType(name);
			foodItems = userService.searchFoodItems(name);
			resturant = userService.searchResturants(name);
			if (!foodTypes.isEmpty()) {
				System.out.println("searching in foodTypes");
				resturant = userService.getAllResturant();
				for (FoodType foodType2 : foodTypes) {

					for (Resturant resturants : resturant) {
						if (foodType2.getResturantId() == resturants
								.getResturantId()) {
							foodType2.setResturantName(resturants
									.getResturantName());
						}
					}
				}
				resturant = null;
			}
			if (!foodItems.isEmpty()) {
				System.out.println("searching in foodItems");
				foodTypes = userService.getAllFoodType();
				resturant = userService.getAllResturant();
				for (FoodItems foodItem2 : foodItems) {
					for (Resturant resturant2 : resturant) {
						if (foodItem2.getResturantId() == resturant2
								.getResturantId()) {
							foodItem2.setResturantName(resturant2
									.getResturantName());
						}
					}
					for (FoodType foodType2 : foodTypes) {
						if (foodItem2.getFoodTypeId() == foodType2
								.getFoodTypeId()) {
							foodItem2.setFoodTypeName(foodType2
									.getFoodTypeName());
						}
					}
				}
				foodTypes = null;
				resturant = null;
			}
			model.addAttribute("foodType", foodTypes);
			model.addAttribute("foodItem", foodItems);
			model.addAttribute("resturant", resturant);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return "/Search";
	}
	// --------------------------------------------------------------------

}
