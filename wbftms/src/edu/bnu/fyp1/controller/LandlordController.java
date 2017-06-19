package edu.bnu.fyp1.controller;

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

import edu.bnu.fyp1.dao.Expense_subtypeDao;
import edu.bnu.fyp1.entity.Account_head;
import edu.bnu.fyp1.entity.Asset_inventory;
import edu.bnu.fyp1.entity.Crop_Expense;
import edu.bnu.fyp1.entity.Crop_profile;
import edu.bnu.fyp1.entity.Expense_subtype;
import edu.bnu.fyp1.entity.Expense_type;
import edu.bnu.fyp1.entity.Role;
import edu.bnu.fyp1.entity.Transaction;
import edu.bnu.fyp1.entity.User;
import edu.bnu.fyp1.service.CommonService;
import edu.bnu.fyp1.util.DateTimeUtil;

@Controller
public class LandlordController {
	@Autowired
	private CommonService commonService;
	DateTimeUtil dateTimeUtil = new DateTimeUtil();

	@RequestMapping(value = "/ManageAccounts", method = RequestMethod.GET)
	public String ManageAccounts(Model model,
			@RequestParam(required = false) Long AccountId, Long d, Long userId) {
		List<Account_head> AccountsList = new ArrayList<>();
		Account_head head = new Account_head();
		String url = "ManageAccounts";
		try {

			if (AccountId != null) {
				if (d == 0) {
					head = commonService.findAccountById(AccountId);
				} else if (d == 1) {
					head.setAccountBlock(d);
					head.setAccountHeadId(AccountId);
					commonService.blockAccount(head);
				}

			}

			AccountsList = commonService.getAllAccountheads(userId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("AccountsList", AccountsList);
		model.addAttribute("head", head);
		return url;
	}

	@RequestMapping(value = "/BlockedAccounts", method = RequestMethod.GET)
	public String BlockedAccounts(Model model,
			@RequestParam(required = false) Long AccountId, Long d, Long userId) {
		List<Account_head> AccountsList = new ArrayList<>();
		Account_head head = new Account_head();
		String url = "BlockedAccounts";
		try {
			AccountsList = commonService.getAllBlockedAccountheads(userId);
			if (AccountId != null) {
				if (d == 0) {
					head.setAccountBlock(d);
					head.setAccountHeadId(AccountId);
					commonService.blockAccount(head);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("AccountsList", AccountsList);
		return url;
	}

	@RequestMapping(value = "/SaveAccount", method = RequestMethod.POST)
	public String savExpenseType(@ModelAttribute Account_head head) {
		try {

			if (head.getAccountHeadId() == null) {
				Date date = new Date();
				head.setAccountDate(dateTimeUtil.converToSQLDate(date));
				head.setAccountTime(dateTimeUtil.converToSQLTime(date));
				head.setAccountBlock(0l);
				commonService.addAccount(head);
			} else {
				commonService.updateAccount(head);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/ManageAccounts.bnu?userId=" + head.getUserId();
	}

	@RequestMapping(value = "/ManageInventory", method = RequestMethod.GET)
	public String ManageItems(Model model,
			@RequestParam(required = false) Long assetInventoryId, Long d,
			Long userId) {
		List<Asset_inventory> InventoryList = new ArrayList<>();
		Asset_inventory asset = new Asset_inventory();
		String url = "ManageInventory";
		try {
			InventoryList = commonService.getAllItems(userId);
			if (assetInventoryId != null) {
				if (d == 0) {
					asset = commonService.findItemById(assetInventoryId);
				} else if (d == 1) {
					asset.setItemBlock(d);
					asset.setAssetInventoryId(assetInventoryId);
					commonService.DeleteItem(asset);
				}

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("InventoryList", InventoryList);
		model.addAttribute("asset", asset);
		return url;
	}

	@RequestMapping(value = "/SaveInventory", method = RequestMethod.POST)
	public String saveItem(@ModelAttribute Asset_inventory asset) {
		try {

			if (asset.getAssetInventoryId() == null) {
				asset.setItemBlock(0l);
				commonService.addItem(asset);
			} else {
				commonService.updateItem(asset);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/ManageInventory.bnu?userId=" + asset.getUserId();
	}

	@RequestMapping(value = "/BlockedInventory", method = RequestMethod.GET)
	public String BlockedItems(Model model,
			@RequestParam(required = false) Long assetInventoryId, Long d,
			Long userId) {
		List<Asset_inventory> InventoryList = new ArrayList<>();
		Asset_inventory asset = new Asset_inventory();
		String url = "BlockedInventory";
		try {
			InventoryList = commonService.getAllBlockedItems(userId);
			if (assetInventoryId != null) {
				if (d == 0) {
					asset.setItemBlock(d);
					asset.setAssetInventoryId(assetInventoryId);
					commonService.DeleteItem(asset);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("InventoryList", InventoryList);
		return url;
	}

	@RequestMapping(value = "/CropProfile", method = RequestMethod.GET)
	public String CropProfile(Model model,
			@RequestParam(required = false) Long cropProfileId, Long d,
			Long userId) {
		List<Crop_profile> profileList = new ArrayList<>();
		Crop_profile profile = new Crop_profile();
		String url = "CropProfile";
		try {
			profileList = commonService.getAllProfile(userId);

			if (cropProfileId != null) {
				if (d == 0) {

					profile = commonService.findProfileById(cropProfileId);
				} else if (d == 1) {

					profile.setCropBlock(1l);
					profile.setCropProfileId(cropProfileId);
					commonService.DeleteCropProfile(profile);
				} else if (d == 3) {

					profile = commonService.findProfileById(cropProfileId);
					model.addAttribute("cropfinish", "1");
				}

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("profileList", profileList);
		model.addAttribute("profile", profile);
		return url;
	}

	@RequestMapping(value = "/SaveProfile", method = RequestMethod.POST)
	public String saveCropprofile(@ModelAttribute Crop_profile profile) {
		try {
			Crop_profile profile2 = new Crop_profile();
			profile2 = commonService
					.findProfileById(profile.getCropProfileId());
			if (profile.getCropProfileId() == null) {
				profile.setCropFinish(0l);
				profile.setCropBlock(0l);

				Date date = new Date();

				profile.setStartDate(dateTimeUtil.converToSQLDate(date));
				commonService.addCropProfile(profile);
			} else {

				if (profile.getCropFinish() == 1) {

					Date date = new Date();

					profile.setStartDate(profile2.getStartDate());
					profile.setEndDate(dateTimeUtil.converToSQLDate(date));
				}
				commonService.updateCropProfile(profile);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/CropProfile.bnu?userId=" + profile.getUserId();
	}

	@RequestMapping(value = "/DeletedCropProfiles", method = RequestMethod.GET)
	public String DeletedCropProfiles(Model model,
			@RequestParam(required = false) Long cropProfileId, Long d,
			Long userId) {
		List<Crop_profile> profileList = new ArrayList<>();
		Crop_profile profile = new Crop_profile();
		String url = "DeletedProfiles";
		try {
			profileList = commonService.getAllDeletedPtrofiles(userId);
			if (cropProfileId != null) {
				if (d == 0) {
					profile.setCropBlock(d);
					profile.setCropProfileId(cropProfileId);
					commonService.DeleteCropProfile(profile);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("profileList", profileList);
		return url;
	}

	@RequestMapping(value = "/PreviousCropProfiles", method = RequestMethod.GET)
	public String PreviousCropProfiles(Model model,
			@RequestParam(required = false) Long cropProfileId, Long d,
			Long userId) {
		List<Crop_profile> profileList = new ArrayList<>();
		Crop_profile profile = new Crop_profile();
		String url = "PreviousProfiles";
		try {
			profileList = commonService.getAllPreviousPtrofiles(userId);
			if (cropProfileId != null) {
				if (d == 0) {
					profile.setCropFinish(d);
					profile.setCropProfileId(cropProfileId);
					commonService.ActivateCropProfile(profile);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("profileList", profileList);
		return url;
	}

	@RequestMapping(value = "/ManageLTransaction", method = RequestMethod.GET)
	public String Transaction(Model model,
			@RequestParam(required = false) Long transactionId, Long d,
			Long userId, Long expenseTypeId) {

		List<Account_head> accountList = new ArrayList<>();
		List<Transaction> transactionpList = new ArrayList<>();
		List<Transaction> transactionrList = new ArrayList<>();
		List<Crop_profile> profileList = new ArrayList<>();
		List<Expense_type> expenseList = new ArrayList<>();
		List<Expense_subtype> subtypeList = new ArrayList<>();
		List<Crop_Expense> list = new ArrayList<>();
		Transaction transaction = new Transaction();
		String url = "ManageLTransaction";
		try {
			Date date = new Date();
			Expense_subtypeDao dao = new Expense_subtypeDao();
			transactionpList = commonService.getTodayspayedTransaction(userId,
					dateTimeUtil.converToSQLDate(date));
			list = commonService.getallCropExpense();
			for (Transaction transaction2 : transactionpList) {
				for (Crop_Expense expense : list) {
					if (transaction2.getTransactionId() == expense
							.getTransactionId()) {
						transaction2.setCropProfileId(expense
								.getCropProfileId());
						transaction2.setSubTypeId(expense.getSubtypeId());
					}
				}
			}
			for (Transaction transaction2 : transactionrList) {
				for (Crop_Expense expense : list) {
					if (transaction2.getTransactionId() == expense
							.getTransactionId()) {
						transaction2.setCropProfileId(expense
								.getCropProfileId());
						transaction2.setSubTypeId(expense.getSubtypeId());
					}
				}
			}
			transactionrList = commonService.getTodaysrecievedTransaction(
					userId, dateTimeUtil.converToSQLDate(date));
			accountList = commonService.getAllAccountheads(userId);
			profileList = commonService.getAllProfile(userId);
			expenseList = commonService.getAllexpenseType();
			if (expenseTypeId != null) {
				subtypeList = dao.getAllSubtypes(expenseTypeId);
			}
			if (transactionId != null) {
				if (d == 1) {
					transaction = commonService
							.findTransactionById(transactionId);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("TransactionpayedList", transactionpList);
		model.addAttribute("TransactionrecievedList", transactionrList);
		model.addAttribute("ProfileList", profileList);
		model.addAttribute("ExpenseList", expenseList);
		model.addAttribute("SubTypeList", subtypeList);
		model.addAttribute("AccountList", accountList);
		model.addAttribute("Transaction", transaction);
		return url;
	}

	@RequestMapping(value = "/SaveLTransaction", method = RequestMethod.POST)
	public String saveCropSales(@ModelAttribute Transaction transaction) {

		try {
			Crop_Expense cropexpense = new Crop_Expense();
			if (transaction.getTransactionId() == null) {
				Date date = new Date();
				transaction.setTransactionDate(dateTimeUtil
						.converToSQLDate(date));
				transaction.setTransactionTime(dateTimeUtil
						.converToSQLTime(date));
				commonService.addTransaction(transaction);
				cropexpense.setSubtypeId(transaction.getSubTypeId());
				cropexpense.setTransactionId(commonService.getTransactionId());
				cropexpense.setCropProfileId(transaction.getCropProfileId());
				commonService.addCropExpense(cropexpense);

			} else {

				commonService.updateTransaction(transaction);
				cropexpense.setCropProfileId(transaction.getCropProfileId());
				cropexpense.setSubtypeId(transaction.getSubTypeId());
				cropexpense.setTransactionId(transaction.getTransactionId());
				commonService.updateCropExpense(cropexpense);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/ManageLTransaction.bnu?userId="
				+ transaction.getUserId();
	}

	@RequestMapping(value = "/ViewLTransaction", method = RequestMethod.GET)
	public String ViewTransaction(Model model,
			@RequestParam(required = false) Long transactionId, Long d,
			Long userId) {

		List<Account_head> accountList = new ArrayList<>();
		List<Transaction> transactionpList = new ArrayList<>();
		List<Transaction> transactionrList = new ArrayList<>();
		Transaction transaction = new Transaction();
		List<Crop_Expense> list = new ArrayList<>();
		String url = "ViewLTransaction";
		try {

			transactionpList = commonService.getAllpayedTransaction(userId);
			transactionrList = commonService.getAllrecievedTransaction(userId);

			accountList = commonService.getAllAccountheads(userId);
			list = commonService.getallCropExpense();
			for (Transaction transaction2 : transactionpList) {
				for (Crop_Expense expense : list) {
					if (transaction2.getTransactionId() == expense
							.getTransactionId()) {
						transaction2.setCropProfileId(expense
								.getCropProfileId());
						transaction2.setSubTypeId(expense.getSubtypeId());
					}
				}
			}
			for (Transaction transaction2 : transactionrList) {
				for (Crop_Expense expense : list) {
					if (transaction2.getTransactionId() == expense
							.getTransactionId()) {
						transaction2.setCropProfileId(expense
								.getCropProfileId());
						transaction2.setSubTypeId(expense.getSubtypeId());
					}
				}
			}
			if (transactionId != null) {
				if (d == 1) {
					transaction = commonService
							.findTransactionById(transactionId);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("TransactionpayedList", transactionpList);
		model.addAttribute("TransactionrecievedList", transactionrList);
		model.addAttribute("AccountList", accountList);
		model.addAttribute("Transaction", transaction);
		return url;
	}

	@RequestMapping(value = "/SaveVLTransaction", method = RequestMethod.POST)
	public String saveTransaction(@ModelAttribute Transaction transaction) {
		try {
			Crop_Expense cropexpense = new Crop_Expense();
			if (transaction.getTransactionId() == null) {
				Date date = new Date();
				transaction.setTransactionDate(dateTimeUtil
						.converToSQLDate(date));
				transaction.setTransactionTime(dateTimeUtil
						.converToSQLTime(date));
				commonService.addTransaction(transaction);
				cropexpense.setSubtypeId(transaction.getSubTypeId());
				cropexpense.setTransactionId(commonService.getTransactionId());
				cropexpense.setCropProfileId(transaction.getCropProfileId());
				commonService.addCropExpense(cropexpense);

			} else {

				commonService.updateTransaction(transaction);
				cropexpense.setCropProfileId(transaction.getCropProfileId());
				cropexpense.setSubtypeId(transaction.getSubTypeId());
				cropexpense.setTransactionId(transaction.getTransactionId());
				commonService.updateCropExpense(cropexpense);

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/ViewLTransaction.bnu?userId="
				+ transaction.getUserId();
	}

	@RequestMapping(value = "/TallyLogin", method = RequestMethod.GET)
	public String Login(Model model,
			@RequestParam(required = false) Long BrokerId, Long userId) {
		List<User> userList = new ArrayList<>();
		List<Account_head> accountList = new ArrayList<>();
		List<Role> roleList = new ArrayList<>();
		User user = new User();
		String url = "TallyRecordsWithBroker";
		try {

			roleList = commonService.getAllBroker();

			for (Role role : roleList) {
				Long a = role.getUserId();
				user = commonService.findUserbyid(a);
				userList.add(user);
			}

			if (BrokerId != null) {
				accountList = commonService.getAllAccountheads(BrokerId);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		model.addAttribute("AccountList", accountList);
		model.addAttribute("BrokerList", userList);
		model.addAttribute("accountHead", new Account_head());

		return url;
	}

	@RequestMapping(value = "/BrokerLogin", method = RequestMethod.POST)
	public String doLogin(Model model, @ModelAttribute Account_head account_head) {
		Account_head account_head2 = new Account_head();
		String url = "redirect:/TallyLogin.bnu?userId="
				+ account_head.getUserId();
		try {

			if (account_head.getAccountHeadId() != null) {
				account_head2 = commonService.findAccountById(account_head
						.getAccountHeadId());

				if (account_head.getAccountPassword().equals(
						account_head2.getAccountPassword())) {

					url = "redirect:/ViewLLedger.bnu?userId="
							+ account_head.getUserId() + "&accountHeadId="
							+ account_head2.getAccountHeadId() + "&BrokerId="
							+ account_head2.getUserId();
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return url;
	}

	@RequestMapping(value = "/ViewLLedger", method = RequestMethod.GET)
	public String ViewLedger(Model model,
			@RequestParam(required = false) Long accountHeadId, Long BrokerId,
			Long userId) {

		List<Account_head> accountList = new ArrayList<>();
		List<Transaction> transactionList = new ArrayList<>();
		String url = "ViewLLedger";
		long currentAmount = 0;
		try {

			transactionList = commonService.getAllTransactionofaAccount(
					BrokerId, accountHeadId);
			accountList = commonService.getAllAccountheads(userId);
			for (Transaction transaction2 : transactionList) {
				if (transaction2.getTransactionMode().equals("payed")) {
					currentAmount = currentAmount
							- transaction2.getTransactionAmount();

				} else if (transaction2.getTransactionMode().equals("recieved")) {
					currentAmount = currentAmount
							+ transaction2.getTransactionAmount();

				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		for (Account_head head : accountList) {
			System.out.println(head.getAccountFirstname());
		}
		model.addAttribute("TransactionList", transactionList);
		model.addAttribute("AccountList", accountList);
		model.addAttribute("currentAmount", currentAmount);
		model.addAttribute("accountHead", new Account_head());

		return url;
	}

}
