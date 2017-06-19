package edu.bnu.projects.foody.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import edu.bnu.projects.foody.service.UserService;



@Controller
public class UserController {
	@Autowired
	private UserService userService;

//	@RequestMapping(value = "/ExpenseType", method = RequestMethod.GET)
//	public String ExpenseType(Model model,
//			@RequestParam(required = false) Long expenseTypeId, Long d) {
//		List<Expense_type> expensetypeList = new ArrayList<>();
//		Expense_type expense_type = new Expense_type();
//		try {
//			expensetypeList = userService.getAllexpenseType();
//
//			if (expenseTypeId != null) {
//				if (d == 0) {
//					expense_type = userService.findExpenseById(expenseTypeId);
//				} else if (d == 1) {
//					userService.deleteExpenseById(expenseTypeId);
//				}
//
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//
//		/* set data in model to make it available on page */
//		model.addAttribute("expensetypeList", expensetypeList);
//		model.addAttribute("expenseType", expense_type);
//
//		return "ExpenseType";
//	}
//
//	@RequestMapping(value = "/SaveExpenseType", method = RequestMethod.POST)
//	public String savExpenseType(@ModelAttribute Expense_type expense_type) {
//		try {
//
//			if (expense_type.getExpenseTypeId() == null) {
//				expense_type.setUserId(expense_type.getUserId());
//
//				userService.addExpenseType(expense_type);
//			} else {
//				userService.updateExpenseType(expense_type);
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		return "redirect:/ExpenseType.bnu";
//	}
//
//	@RequestMapping(value = "/Profile", method = RequestMethod.GET)
//	public String userProfile(Model model,
//			@RequestParam(required = false) Long userId, Long d) {
//		User users = new User();
//
//		User user = new User();
//		try {
//			users = userService.findUserbyid(userId);
//
//			if (d == 1) {
//				user = userService.findUserbyid(userId);
//				model.addAttribute("d", 1);
//			}
//		} catch (Exception e) {
//
//		}
//
//		model.addAttribute("user", user);
//		model.addAttribute("users", users);
//		return "Profile";
//	}
//
//	@RequestMapping(value = "/SaveUserProfile", method = RequestMethod.POST)
//	public String saveProfile(Model model, @ModelAttribute User user) {
//		try {
//			userService.editUser(user);
//
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		return "redirect:/Profile.bnu?userId=" + user.getUserId();
//	}
//
//	@RequestMapping(value = "/ExpenseSubType", method = RequestMethod.GET)
//	public String ExpenseSubType(Model model,
//			@RequestParam(required = false) Long expenseSubTypeId,
//			Long expenseTypeId, Long d) {
//		System.out.println(expenseTypeId);
//		List<Expense_type> expensetypeList = new ArrayList<>();
//		Expense_subtype expense_Subtype = new Expense_subtype();
//		List<Expense_subtype> subtypeList = new ArrayList<>();
//		try {
//
//			Expense_subtypeDao dao = new Expense_subtypeDao();
//			expensetypeList = userService.getAllexpenseType();
//			if (expenseTypeId != null) {
//				subtypeList = dao.getAllSubtypes(expenseTypeId);
//				expense_Subtype.setExpenseTypeId(expenseTypeId);
//			}
//			if (expenseSubTypeId != null) {
//				
//				if (d == 0) {
//					System.out.println(expenseSubTypeId);
//					System.out.println("hello");
//					expense_Subtype = userService
//							.findExpenseSubtypeById(expenseSubTypeId);
//					System.out.println(expense_Subtype.getSubName());
//					System.out.println(expense_Subtype.getExpenseTypeId());
//				} else if (d == 1) {
//					userService.deleteExpenseSubtypeId(expenseSubTypeId);
//				}
//
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		
//		
//		/* set data in model to make it available on page */
//		model.addAttribute("expensetypeList", expensetypeList);
//		model.addAttribute("SubTypeList", subtypeList);
//		model.addAttribute("expenseSubType", expense_Subtype);
//
//		return "ExpenseSubtype";
//	}
//
//	@RequestMapping(value = "/SaveExpenseSubType", method = RequestMethod.POST)
//	public String saveExpenseSubType(Model model,
//			@ModelAttribute Expense_subtype expense_Subtype) {
//
//		try {
//
//			if (expense_Subtype.getSubName() != null) {
//				if (expense_Subtype.getSubTypeId() == null) {
//					userService.addExpenseSubtype(expense_Subtype);
//				} else {
//					userService.updateExpenseSubtype(expense_Subtype);
//				}
//			}
//
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		return "redirect:/ExpenseSubType.bnu?userId="
//				+ expense_Subtype.getUserId() + "&expenseTypeId="
//				+ expense_Subtype.getExpenseTypeId();
//	}
//
//	// ajax action call
//	@RequestMapping(value = "/SubType")
//	public String Subtypeajax(Model model, Long ExpenseId) {
//		List<Expense_subtype> expenseSubtypeList = new ArrayList<>();
//		try {
//
//			expenseSubtypeList = userService.getAllExpenseSubtype(ExpenseId);
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		for (Expense_subtype expense_subtype1 : expenseSubtypeList) {
//			System.out.println(expense_subtype1.getSubName());
//		}
//		model.addAttribute("expenseSubtypeList", expenseSubtypeList);
//
//		return "/ajax/SubType.jsp";
//	}
//
//	@RequestMapping(value = "/CropInfo", method = RequestMethod.GET)
//	public String CropInfo(Model model,
//			@RequestParam(required = false) Long cropinfoId, Long d) {
//		List<Crop_info> cropinfoList = new ArrayList<>();
//		Crop_info crop_info = new Crop_info();
//		try {
//			cropinfoList = userService.getAllCropInfo();
//
//			if (cropinfoId != null) {
//				if (d == 0) {
//					crop_info = userService.findcropInfoById(cropinfoId);
//				} else if (d == 1) {
//					userService.deleteCropinfoId(cropinfoId);
//				}
//
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//
//		/* set data in model to make it available on page */
//		model.addAttribute("cropinfoList", cropinfoList);
//		model.addAttribute("cropInfo", crop_info);
//
//		return "Crop-info";
//	}
//
//	@RequestMapping(value = "/SaveCropInfo", method = RequestMethod.POST)
//	public String saveCropinfo(@ModelAttribute Crop_info crop_info) {
//		try {
//
//			if (crop_info.getCropInfoId() == null) {
//				crop_info.setUserId(crop_info.getUserId());
//
//				userService.addCropInfo(crop_info);
//			} else {
//				userService.updateCropInfo(crop_info);
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		return "redirect:/CropInfo.bnu";
//	}
//
//	@RequestMapping(value = "/Home")
//	public String getAllPendingUsers(Model model) {
//		List<User> pendinguserList = new ArrayList<>();
//		List<User> blockuserList = new ArrayList<>();
//		try {
//			pendinguserList = userService.getAllPendingUsers();
//			blockuserList = userService.getAllBlockedUsers();
//			model.addAttribute("pendingUsers", pendinguserList);
//			model.addAttribute("blockedUsers", blockuserList);
//		} catch (Exception e) {
//
//		}
//		return "Home";
//	}
//
//	@RequestMapping(value = "/AdminHome", method = RequestMethod.GET)
//	public String upDateUserProperty(
//			@RequestParam(required = false) Long userId, int pending,
//			int block, int check) {
//		String url = "redirect:/Home.bnu";
//		User user = new User();
//		try {
//			user.setUserId(userId);
//			user.setUserBlock(block);
//			user.setUserPending(pending);
//			userService.updateUser(user);
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		if (check == 1) {
//			url = "redirect:/ManageUser.bnu";
//
//		}
//		return url;
//	}
//
//	@RequestMapping(value = "/ManageUser")
//	public String getAllUsers(Model model) {
//		List<User> userList = new ArrayList<>();
//		try {
//			userList = userService.getAllUsersbyblock();
//			model.addAttribute("Users", userList);
//		} catch (Exception e) {
//
//		}
//		return "ManageUsers";
//	}
//
//	@RequestMapping(value = "/AdminReports")
//	public String TotalUsers(Model model) {
//		List<User> userList = new ArrayList<>();
//		List<Role> roleList = new ArrayList<>();
//		try {
//			userList = userService.getAllUser();
//			int totalusers = 0;
//			int pendingusers = 0;
//			int blockedusers = 0;
//			int brokers = 0;
//			int Landlords = 0;
//			int Admins = 0;
//			for (User user : userList) {
//				totalusers++;
//				if (user.getUserPending() == 1) {
//					pendingusers++;
//				}
//				if (user.getUserBlock() == 1) {
//					blockedusers++;
//				}
//				roleList = userService.getUserRolebyid(user.getUserId());
//				for (Role role : roleList) {
//
//					if (role.getUserRole().equals("Admin")) {
//						Admins++;
//
//					}
//					if (role.getUserRole().equals("Broker")) {
//
//						brokers++;
//					}
//					if (role.getUserRole().equals("LandLord")) {
//						Landlords++;
//
//					}
//				}
//			}
//
//			model.addAttribute("Admins", Admins);
//			model.addAttribute("brokers", brokers);
//			model.addAttribute("totalusers", totalusers);
//			model.addAttribute("pendingusers", pendingusers);
//			model.addAttribute("blockedusers", blockedusers);
//			model.addAttribute("Landlords", Landlords);
//
//		} catch (Exception e) {
//
//		}
//		return "AdminReport";
//	}
}