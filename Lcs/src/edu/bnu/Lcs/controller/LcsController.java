/** @ author Arslanyasinwattoo
 * 
 */
package edu.bnu.Lcs.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import edu.bnu.Lcs.entity.AccountHead;
import edu.bnu.Lcs.entity.Company;
import edu.bnu.Lcs.entity.Users;
import edu.bnu.Lcs.service.UserService;

/**
 * @author Arslanyasinwattoo
 * 
 */
@Controller
public class LcsController {
	@Autowired
	private UserService userService;

	// listofpendingusers
	// listofblockedusers
	// editusers
	// report
	// system Admin
	//

	@RequestMapping(value = "/AdminHome")
	public String getAllPendingUsers(Model model) {
		List<Users> pendinguserList = new ArrayList<>();
		List<Users> blockuserList = new ArrayList<>();
		try {
			pendinguserList = userService.getAllPendingUsers();
			blockuserList = userService.getAllBlockedUsers();
			model.addAttribute("pendingUsers", pendinguserList);
			model.addAttribute("blockedUsers", blockuserList);
		} catch (Exception e) {

		}
		return "AdminHome";
	}

	@RequestMapping(value = "/ManageCompany")
	public String ManageCompany(Model model,
			@RequestParam(required = false) Long userId) {
		List<Company> companyList = new ArrayList<>();
		try {
			companyList = userService.getAllCompanies(userId);
			model.addAttribute("Company", companyList);
			for (Company company : companyList) {
				System.out.println(company.getCompanyCity());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "company";
	}

	@RequestMapping(value = "/ManageCompanies")
	public String ManageCompanies(Model model,
			@RequestParam(required = false) Long userId) {
		List<Company> pendingList = new ArrayList<>();
		List<Company> blockList = new ArrayList<>();
		try {
			pendingList = userService.getAllPendingCompanies();
			blockList = userService.getAllBlockedCompanies();

			model.addAttribute("pendingList", pendingList);
			model.addAttribute("blockedList", blockList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "ManageCompanies";
	}

	@RequestMapping(value = "/ManageAllCompanies")
	public String ManageAllCompanies(Model model,
			@RequestParam(required = false) Long userId) {
		List<Company> companyList = new ArrayList<>();
		try {
			companyList = userService.getAllCompanies();
			model.addAttribute("companyList", companyList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "ManageAllCompanies";
	}

	@RequestMapping(value = "/saveCompany", method = RequestMethod.POST)
	public String saveCompany(Model model,
			@RequestParam("companyName") String companyName,
			@RequestParam("companyAddress") String address,
			@RequestParam("contactNumber") Long contactNumber,
			@RequestParam("Email") String email,
			@RequestParam("city") String city,
			@RequestParam("category") String catogory,
			@RequestParam("userId") Long userId) {
		Company company = new Company();
		company.setCompanyAddress(address);
		company.setCompanyName(companyName);
		company.setCompanyContactNumber(contactNumber);
		company.setCompanyEmailid(email);
		company.setCompanyCity(city);
		company.setCompanyCategory(catogory);
		company.setUserId(userId);
		company.setStatus(1l);
		company.setBlock(0l);
		System.out.println(userId);
		System.out.println(company.getCompanyCategory());
		try {
			userService.AddCompany(company);
			return "redirect:/ManageCompany.Inn";
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "company";
	}

	@RequestMapping(value = "/updatecompanystatus", method = RequestMethod.GET)
	public String upDatecompanyStatus(
			@RequestParam(required = false) Long companyId, Long pending,
			Long block, int check) {
		String url = "redirect:/ManageCompanies.Inn";
		Company company = new Company();
		try {
			company.setCompanyId(companyId);
			company.setBlock(block);
			company.setStatus(pending);
			userService.updateStatus(company);

		} catch (Exception e) {
			e.printStackTrace();
		}

		if (check == 1) {
			url = "redirect:/ManageAllCompanies.Inn";

		}
		return url;
	}

	@RequestMapping(value = "/updatestatus", method = RequestMethod.GET)
	public String upDateUserProperty(
			@RequestParam(required = false) Long userId, Long pending,
			Long block, int check) {
		String url = "redirect:/AdminHome.Inn";
		Users user = new Users();
		try {
			user.setUsersId(userId);
			user.setBlock(block);
			user.setStatus(pending);
			userService.updateStatus(user);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (check == 1) {
			url = "redirect:/ManageUsers.Inn";

		}
		return url;
	}

	@RequestMapping(value = "/ManageUsers")
	public String getAllUsers(Model model) {
		List<Users> userList = new ArrayList<>();
		try {
			userList = userService.getAllUser();
			model.addAttribute("Users", userList);
		} catch (Exception e) {

		}
		return "ManageUsers";
	}

	@RequestMapping(value = "/BlockedCompany")
	public String BlockedCompany(Model model,
			@RequestParam(required = false) Long userId) {
		List<Company> companyList = new ArrayList<>();
		try {
			companyList = userService.getAllBlockedCompany(userId);

			model.addAttribute("blockedList", companyList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "BlockCompany";
	}

	// viewing list of blocked accounts
	@RequestMapping(value = "/BlockedAccounts")
	public String BlockedAccounts(Model model,
			@RequestParam(required = false) Long userId) {
		List<AccountHead> accountList = new ArrayList<>();
		try {
			accountList = userService.getAllBlockedaccounts(userId);

			model.addAttribute("blockedList", accountList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "BlockedAccounts";
	}

	// view list of all accounts +form
	@RequestMapping(value = "/ManageAccountHead")
	public String ManageAccounts(Model model,
			@RequestParam(required = false) Long userId) {
		List<AccountHead> accountList = new ArrayList<>();
		try {
			accountList = userService.getAllaccounts(userId);
			model.addAttribute("Account", accountList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "ManageAccountHead";
	}

	// viewing all accounts blocked and unblocked
	@RequestMapping(value = "/ViewAllAccountHead")
	public String ViewAllAccounts(Model model,
			@RequestParam(required = false) Long userId) {
		List<AccountHead> accountList = new ArrayList<>();
		try {
			accountList = userService.getAllaccountOfUser(userId);
			model.addAttribute("Account", accountList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "AllAccounts";
	}

	// saving accountheadinfo
	@RequestMapping(value = "/saveAccount", method = RequestMethod.POST)
	public String saveAccount(Model model,
			@RequestParam("firstName") String firstName,
			@RequestParam("lastName") String lastName,
			@RequestParam("userName") String userName,
			@RequestParam("Email") String email,
			@RequestParam("Address") String addresss,
			@RequestParam("Cnic") String cnic,
			@RequestParam("password") String password,
			@RequestParam("ContactNumber") Long contactNumber,
			@RequestParam("userId") Long userId) {
		AccountHead account = new AccountHead();
		account.setUserFirstName(firstName);
		account.setUserLastName(lastName);
		account.setUsername(userName);
		account.setUserEmailid(email);
		account.setUserAddress(addresss);
		account.setUserCnic(cnic);
		account.setUserPassword(password);
		account.setUseContactNumber(contactNumber);
		account.setUserId(userId);
		account.setBlock(0l);
		System.out.println(userId);
		try {
			userService.AddAccount(account);
			return "redirect:/ManageAccountHead.Inn?userId="
					+ account.getUserId();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "redirect:/ManageAccountHead.Inn?userId=" + account.getUserId();
	}

	// for blocking and unblocking
	@RequestMapping(value = "/updateAccountstatus", method = RequestMethod.GET)
	public String upDateAccountStatus(
			@RequestParam(required = false) Long userId, Long accountHeadId,
			Long block, int check) {
		String url = "redirect:/ManageAccountHead.Inn?userId=" + userId;
		AccountHead accountHead = new AccountHead();
		try {
			accountHead.setUserId(userId);
			accountHead.setAccountHeadId(accountHeadId);
			accountHead.setBlock(block);
			userService.updateAccountHeadStatus(accountHead);

		} catch (Exception e) {
			e.printStackTrace();
		}

		if (check == 1) {
			url = "redirect:/BlockedAccounts.Inn?userId=" + accountHeadId;

		}
		return url;
	}

	@RequestMapping(value = "/AdminReports")
	public String TotalUsers(Model model) {
		List<Users> userList = new ArrayList<>();

		try {
			userList = userService.getAllUser();
			int totalusers = 0;
			int pendingusers = 0;
			int blockedusers = 0;
			int users = 0;
			int admins = 0;
			for (Users user : userList) {
				totalusers++;
				if (user.getStatus() == 1) {
					pendingusers++;
				}
				if (user.getBlock() == 1) {
					blockedusers++;
				}
				if (user.getRole().equals("Admin")) {
					admins++;
				}
				if (user.getRole().equals("user")) {
					users++;
				}
			}

			model.addAttribute("Admins", admins);
			model.addAttribute("Users", users);
			model.addAttribute("totalusers", totalusers);
			model.addAttribute("pendingusers", pendingusers);
			model.addAttribute("blockedusers", blockedusers);

		} catch (Exception e) {

		}
		return "AdminReport";
	}
}
