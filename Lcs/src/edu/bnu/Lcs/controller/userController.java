/** @ author Arslanyasinwattoo
 * 
 */
package edu.bnu.Lcs.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import edu.bnu.Lcs.entity.Company;
import edu.bnu.Lcs.entity.CompanyHead;
import edu.bnu.Lcs.entity.DriverInfo;
import edu.bnu.Lcs.entity.Transactions;
import edu.bnu.Lcs.entity.TransportInfo;
import edu.bnu.Lcs.service.UserService;
import edu.bnu.Lcs.util.DateTimeUtil;

/**
 * @author Arslanyasinwattoo
 * 
 */
@Controller
public class userController {
	@Autowired
	private UserService userService;

	@RequestMapping(value = "/BlockedCompanyHead")
	public String BlockedAccounts(Model model,
			@RequestParam(required = false) Long userId) {
		List<CompanyHead> companyList = new ArrayList<>();
		List<Company> companies = new ArrayList<>();
		try {
			companyList = userService.getAllBlockedCompanyHead(userId);
			companies = userService.getAllCompanies();
			for (Company company : companies) {
				for (CompanyHead company1 : companyList) {
					if (company.getCompanyId() == company1.getCompanyId()) {
						company1.setCompanyName(company.getCompanyName());
					}
				}
			}

			model.addAttribute("blockedList", companyList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "BlockedCompanyHeads";
	}

	// view list of all accounts +form
	@RequestMapping(value = "/ManageCompanyHead")
	public String ManageAccounts(Model model,
			@RequestParam(required = false) Long userId) {
		List<CompanyHead> companyList = new ArrayList<>();
		List<Company> companyaList = new ArrayList<>();
		List<Company> companies = new ArrayList<>();
		try {
			companyaList = userService.getAllCompaniesExceptUser(userId);
			companyList = userService.getAllCompanyHead(userId);
			companies = userService.getAllCompanies();
			for (Company company : companies) {
				for (CompanyHead company1 : companyList) {
					if (company.getCompanyId() == company1.getCompanyId()) {
						company1.setCompanyName(company.getCompanyName());
					}
				}
			}

			model.addAttribute("CompanyHead", companyList);
			model.addAttribute("Company", companyaList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "ManageCompanyHead";
	}

	// viewing all accounts blocked and unblocked
	@RequestMapping(value = "/ViewAllCompanyHead")
	public String ViewAllAccounts(Model model,
			@RequestParam(required = false) Long userId) {
		List<CompanyHead> companyList = new ArrayList<>();
		List<Company> companies = new ArrayList<>();
		try {
			companyList = userService.getAllCompanyHeadOfUser(userId);
			companies = userService.getAllCompanies();
			for (Company company : companies) {
				for (CompanyHead company1 : companyList) {
					if (company.getCompanyId() == company1.getCompanyId()) {
						company1.setCompanyName(company.getCompanyName());
					}
				}
			}

			model.addAttribute("Company", companyList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "AllCompanyHeads";
	}

	// saving accountheadinfo
	@RequestMapping(value = "/saveCompanyHead", method = RequestMethod.POST)
	public String saveAccount(Model model,
			@RequestParam("companyId") Long companyId,
			@RequestParam("userId") Long userId) {
		CompanyHead company = new CompanyHead();
		Date date = new Date();
		DateTimeUtil dtu = new DateTimeUtil();
		company.setCompanyId(companyId);
		company.setUserId(userId);
		Long b = (long) 0;
		company.setBlock(b);
		// System.out.println(userId);
		try {

			company.setUserStarDate(dtu.converToSQLDate(date));
			company.setUserStartTime(dtu.converToSQLTime(date));

			userService.AddCompanyHead(company);
			return "redirect:/ManageCompanyHead.Inn?userId="
					+ company.getUserId();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "redirect:/ManageCompanyHead.Inn?userId=" + company.getUserId();
	}

	// for blocking and unblocking
	@RequestMapping(value = "/updateCompanyHeadstatus", method = RequestMethod.GET)
	public String upDateAccountStatus(
			@RequestParam(required = false) Long userId, Long companyHeadId,
			Long block, int check) {
		String url = "redirect:/ManageAccountHead.Inn?userId=" + userId;
		CompanyHead companyHead = new CompanyHead();
		try {
			companyHead.setBlock(block);
			companyHead.setUserId(userId);
			companyHead.setCompanyHeadId(companyHeadId);
			userService.updateCompanyHeadStatus(companyHead);

		} catch (Exception e) {
			e.printStackTrace();
		}

		if (check == 1) {
			url = "redirect:/ManageCompanyHead.Inn?userId=" + userId;

		}
		if (check == 2) {
			url = "redirect:/BlockedCompanyHead.Inn?userId=" + userId;

		}
		return url;
	}

	// --------------------------------------------------------
	@RequestMapping(value = "/BlockedDriver")
	public String BlockedDriver(Model model,
			@RequestParam(required = false) Long userId) {
		List<DriverInfo> driverList = new ArrayList<>();
		try {
			driverList = userService.getAllBlockedDriver(userId);

			model.addAttribute("blockedList", driverList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "BlockedDriver";
	}

	// view list of all accounts +form
	@RequestMapping(value = "/ManageDriver")
	public String ManageDriver(Model model,
			@RequestParam(required = false) Long userId) {
		List<DriverInfo> driverList = new ArrayList<>();
		try {
			driverList = userService.getAllDriversOfUser(userId);
			model.addAttribute("Driver", driverList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "ManageDriver";
	}

	// viewing all accounts blocked and unblocked
	@RequestMapping(value = "/ViewAllDriver")
	public String ViewAllDriver(Model model,
			@RequestParam(required = false) Long userId) {
		List<DriverInfo> driverList = new ArrayList<>();
		try {
			driverList = userService.getAllDriversOfUsers(userId);
			model.addAttribute("Driver", driverList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "AllDriver";
	}

	// saving accountheadinfo
	@RequestMapping(value = "/saveDriver", method = RequestMethod.POST)
	public String saveDriver(Model model,
			@RequestParam("firstName") String firstName,
			@RequestParam("lastName") String lastName,
			@RequestParam("contactNo") Long contactNo,
			@RequestParam("cnic") Long cnic,
			@RequestParam("address") String address,
			@RequestParam("userId") Long userId) {
		DriverInfo driver = new DriverInfo();
		driver.setDriverFirstName(firstName);
		driver.setDriverLastName(lastName);
		driver.setDriverContactNumber(contactNo);
		driver.setDriverCnic(cnic);
		driver.setDriverAddress(address);
		driver.setUsersId(userId);
		driver.setBlock(0l);
		// System.out.println(userId);
		try {

			userService.AddDriver(driver);
			return "redirect:/ManageDriver.Inn?userId=" + driver.getUsersId();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "redirect:/ManageDriver.Inn?userId=" + driver.getUsersId();
	}

	// for blocking and unblocking
	@RequestMapping(value = "/updateDriverstatus", method = RequestMethod.GET)
	public String upDateDriverStatus(
			@RequestParam(required = false) Long userId, Long diverId,
			Long block, int check) {
		String url = "";
		DriverInfo driver = new DriverInfo();
		try {

			driver.setUsersId(userId);
			driver.setBlock(block);
			driver.setDriverInfoId(diverId);
			userService.updateDriverStatus(driver);

		} catch (Exception e) {
			e.printStackTrace();
		}

		if (check == 1) {
			url = "redirect:/ManageDriver.Inn?userId=" + userId;

		}
		if (check == 2) {
			url = "redirect:/BlockedDriver.Inn?userId=" + userId;

		}
		if (check == 3) {
			url = "redirect:/ViewAllDriver.Inn?userId=" + userId;

		}
		return url;
	}

	// --------------------------------------------------------
	@RequestMapping(value = "/BlockedTransport")
	public String BlockedTransport(Model model,
			@RequestParam(required = false) Long userId) {
		List<TransportInfo> transportList = new ArrayList<>();
		try {
			transportList = userService.getAllBlockedTransport(userId);

			model.addAttribute("blockedList", transportList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "BlockedTransport";
	}

	// view list of all accounts +form
	@RequestMapping(value = "/ManageTransport")
	public String ManageTransport(Model model,
			@RequestParam(required = false) Long userId) {
		List<TransportInfo> transportList = new ArrayList<>();
		try {
			transportList = userService.getAllTransportOfUser(userId);
			model.addAttribute("Driver", transportList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "ManageTransport";
	}

	// viewing all accounts blocked and unblocked
	@RequestMapping(value = "/ViewAllTransport")
	public String ViewAllTransport(Model model,
			@RequestParam(required = false) Long userId) {
		List<TransportInfo> transportList = new ArrayList<>();
		try {
			transportList = userService.getAllTransportOfUsers(userId);
			model.addAttribute("Driver", transportList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "AllTransport";
	}

	// saving accountheadinfo
	@RequestMapping(value = "/saveTransport", method = RequestMethod.POST)
	public String saveTransport(Model model,
			@RequestParam("truckSize") String truckSize,
			@RequestParam("truckNo") String truckNo,
			@RequestParam("userId") Long userId) {

		TransportInfo transportInfo = new TransportInfo();
		transportInfo.setActive(0);
		transportInfo.setTruckSize(truckSize);
		transportInfo.setTruckNumber(truckNo);
		transportInfo.setUsersId(userId);

		try {

			userService.AddTransport(transportInfo);
			return "redirect:/ManageTransport.Inn?userId="
					+ transportInfo.getUsersId();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "redirect:/ManageTransport.Inn?userId="
				+ transportInfo.getUsersId();
	}

	// for blocking and unblocking
	@RequestMapping(value = "/updateTransportstatus", method = RequestMethod.GET)
	public String upDateTransportStatus(
			@RequestParam(required = false) Long userId, Long transportId,
			Integer active, int check) {
		String url = "";
		// DriverInfo driver = new DriverInfo();
		TransportInfo transportInfo = new TransportInfo();
		try {

			transportInfo.setUsersId(userId);
			transportInfo.setActive(active);
			transportInfo.setTransportInfoId(transportId);
			userService.updateTransportStatus(transportInfo);

		} catch (Exception e) {
			e.printStackTrace();
		}

		if (check == 1) {
			url = "redirect:/ManageTransport.Inn?userId=" + userId;

		}
		if (check == 2) {
			url = "redirect:/BlockedTransport.Inn?userId=" + userId;

		}
		if (check == 3) {
			url = "redirect:/ViewAllTransport.Inn?userId=" + userId;

		}
		return url;
	}

	// -------------------------------------------------------------------------------------
	// ManageTransaction

	// view list of all accounts +form
	@RequestMapping(value = "/ManageTransaction")
	public String ManageTransactions(Model model,
			@RequestParam(required = false) Long userId) {
		List<TransportInfo> transportList = new ArrayList<>();
		List<CompanyHead> companyHeads = new ArrayList<>();
		List<Company> companies = new ArrayList<>();
		List<Company> companies2 = new ArrayList<>();
		List<DriverInfo> driverInfos = new ArrayList<>();
		// List<TransportInfo> transportInfos = new ArrayList<>();
		List<Transactions> paidTransactions = new ArrayList<>();
		List<Transactions> recivedTransactions = new ArrayList<>();
		try {
			Date date = new Date();
			DateTimeUtil util = new DateTimeUtil();
			// System.out.println(userId);
			transportList = userService.getAllTransportOfUser(userId);
			driverInfos = userService.getAllDriversOfUser(userId);
			companyHeads = userService.getAllCompanyHeadOfUser(userId);
			companies = userService.getAllCompanies();
			Transactions transactions = new Transactions();
			transactions.setTransactionDate(util.converToSQLDate(date));
			transactions.setUsersId(userId);
			paidTransactions = userService
					.getTodaysPaidTransactions(transactions);
			recivedTransactions = userService
					.getTodaysRecievedTransaction(transactions);
			for (Company company : companies) {
				for (CompanyHead company2 : companyHeads) {
					if (company.getCompanyId() == company2.getCompanyId()) {
						if (company.getBlock() == 0) {

							System.out.println("block");
							Company company3 = new Company();
							company3.setCompanyId(company.getCompanyId());
							company3.setBlock(company.getBlock());
							company3.setCompanyAddress(company
									.getCompanyAddress());
							company3.setCompanyCategory(company
									.getCompanyCategory());
							company3.setCompanyCity(company.getCompanyCity());
							company3.setCompanyContactNumber(company
									.getCompanyContactNumber());
							company3.setCompanyEmailid(company
									.getCompanyEmailid());
							company3.setCompanyName(company.getCompanyName());
							company3.setStatus(company.getStatus());
							company3.setUserId(company.getUserId());
							companies2.add(company3);

						}
					}
				}
			}
			companyHeads = userService.getAllCompanyHeadOfUser(userId);
			companies = userService.getAllCompanies();

			for (Transactions transation : paidTransactions) {
				for (CompanyHead coHead : companyHeads) {
					if (transation.getCompanyHeadId() == coHead
							.getCompanyHeadId()) {
						for (Company compTransactions : companies) {
							if (coHead.getCompanyId() == compTransactions
									.getCompanyId()) {
								transation.setCompanyName(compTransactions
										.getCompanyName());
								System.out.println(transation.getCompanyName());

							}
						}
					}
				}
			}
			for (Transactions transation : recivedTransactions) {
				for (CompanyHead coHead : companyHeads) {
					if (transation.getCompanyHeadId() == coHead
							.getCompanyHeadId()) {
						for (Company compTransactions : companies) {
							if (coHead.getCompanyId() == compTransactions
									.getCompanyId()) {
								transation.setCompanyName(compTransactions
										.getCompanyName());
								System.out.println(transation.getCompanyName());

							}
						}
					}
				}
			}

			model.addAttribute("transportList", transportList);
			model.addAttribute("driverList", driverInfos);
			model.addAttribute("companyList", companies2);
			model.addAttribute("paidList", paidTransactions);
			model.addAttribute("recievedList", recivedTransactions);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "ManageTransaction";
	}

	@RequestMapping(value = "/BlockedTransaction")
	public String BlockedTransaction(Model model,
			@RequestParam(required = false) Long userId) {
		List<TransportInfo> transportList = new ArrayList<>();
		try {
			transportList = userService.getAllBlockedTransport(userId);

			model.addAttribute("blockedList", transportList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "BlockedTransport";
	}

	// viewing all accounts blocked and unblocked
	@RequestMapping(value = "AllTransaction")
	public String ViewAllTransaction(Model model,
			@RequestParam(required = false) Long userId) {
		List<Company> companies = new ArrayList<>();
		List<CompanyHead> companyHeads = new ArrayList<>();
		List<Transactions> transactionList = new ArrayList<>();
		try {
			transactionList = userService.getAllTransactionsOfUsers(userId);

			companyHeads = userService.getAllCompanyHeadOfUser(userId);
			companies = userService.getAllCompanies();

			for (Transactions transation : transactionList) {
				for (CompanyHead company2 : companyHeads) {
					if (transation.getCompanyHeadId() == company2
							.getCompanyHeadId()) {
						for (Company compTransactions : companies) {
							if (company2.getCompanyId() == compTransactions
									.getCompanyId()) {
								transation.setCompanyName(compTransactions
										.getCompanyName());
								System.out.println(transation.getCompanyName());

							}
						}
					}
				}

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("transactionList", transactionList);
		return "AllTransaction";
	}

	// saving accountheadinfo
	@RequestMapping(value = "/saveTransaction", method = RequestMethod.POST)
	public String saveTransaction(Model model,
			@RequestParam("transactionAmount") Long amount,
			@RequestParam("transactionMode") String mode,
			@RequestParam("transactionDescription") String description,
			@RequestParam("companyId") Long companyId,
			@RequestParam("driverId") Long driverId,
			@RequestParam("transportId") Long transportId,
			@RequestParam("headId") Long headId,
			@RequestParam("userId") Long userId) {
		// System.out.println(mode);
		// System.out.println(userId);
		Transactions transactions = new Transactions();
		transactions.setTransactionsAmount(amount);
		transactions.setTransactionsMode(mode);
		transactions.setTransactionsRemaks(description);
		transactions.setCompanyHeadId(companyId);
		transactions.setDriverInfoId(driverId);
		transactions.setTransportInfoId(transportId);
		transactions.setAccountHeadId(headId);
		transactions.setUsersId(userId);
		Date date = new Date();
		DateTimeUtil util = new DateTimeUtil();

		try {
			transactions.setTransactionTime(util.converToSQLTime(date));
			transactions.setTransactionDate(util.converToSQLDate(date));
			userService.AddTransaction(transactions);
			return "redirect:/ManageTransaction.Inn?userId="
					+ transactions.getUsersId();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "redirect:/ManageTransaction.Inn?userId="
				+ transactions.getUsersId();
	}

	// for blocking and unblocking
	@RequestMapping(value = "/updateTransactionstatus", method = RequestMethod.GET)
	public String upDateTransactionStatus(
			@RequestParam(required = false) Long userId, Long transportId,
			Integer active, int check) {
		String url = "";
		// DriverInfo driver = new DriverInfo();
		TransportInfo transportInfo = new TransportInfo();
		try {

			transportInfo.setUsersId(userId);
			transportInfo.setActive(active);
			transportInfo.setTransportInfoId(transportId);
			userService.updateTransportStatus(transportInfo);

		} catch (Exception e) {
			e.printStackTrace();
		}

		if (check == 1) {
			url = "redirect:/ManageTransport.Inn?userId=" + userId;

		}
		if (check == 2) {
			url = "redirect:/BlockedTransport.Inn?userId=" + userId;

		}
		if (check == 3) {
			url = "redirect:/ViewAllTransport.Inn?userId=" + userId;

		}
		return url;
	}

	// ------------------------------------------------------------------------------------

	@RequestMapping(value = "AccountLedger")
	public String AccountLedger(Model model,
			@RequestParam(required = false) Long userId) {
		List<Company> companyList = new ArrayList<>();
		List<Company> List = new ArrayList<>();
		List<CompanyHead> companyheadList = new ArrayList<>();
		try {
			companyList = userService.getAllCompanies();
			companyheadList = userService.getAllCompanyHead(userId);
			for (Company company : companyList) {
				// System.out.println("compnayList" + company.getCompanyName());
				for (CompanyHead companyhead : companyheadList) {
					// System.out.println("compnayhead"
					// + companyhead.getCompanyId());
					if (company.getCompanyId() == companyhead.getCompanyId()) {

						Company company3 = new Company();
						company3.setCompanyId(company.getCompanyId());
						company3.setBlock(company.getBlock());
						company3.setCompanyAddress(company.getCompanyAddress());
						company3.setCompanyCategory(company
								.getCompanyCategory());
						company3.setCompanyCity(company.getCompanyCity());
						company3.setCompanyContactNumber(company
								.getCompanyContactNumber());
						company3.setCompanyEmailid(company.getCompanyEmailid());
						company3.setCompanyName(company.getCompanyName());
						// System.out.println(company3.getCompanyName());
						company3.setStatus(company.getStatus());
						company3.setUserId(company.getUserId());
						List.add(company3);
					}

				}

			}
			// System.out.println("Hello");
			// for (Company company : List) {
			// System.out.println(company.getCompanyName());
			// // System.out.println("Hello");
			// }
			// System.out.println("Hello");
			// transactionList = userService.getAllTransactionsOfUsers(userId);
			model.addAttribute("companyList", List);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "AccountLedger";
	}

	// @RequestMapping(value = "/ViewAccountLedger", method = RequestMethod.GET)
	// public String ViewLedger(Model model,
	// @RequestParam(required = false) Long userId, Long CompanyId) {
	//
	// List<CompanyHead> accountList = new ArrayList<>();
	// List<Transactions> transactionList = new ArrayList<>();
	// String url = "ViewAccountLedger";
	// long currentAmount = 0;
	// try {
	//
	// transactionList = userService.getAllTransactionsOfCompany(userId,
	// CompanyId);
	// // accountList = brokerService.getAllAccountheads(userId);
	//
	// for (Transactions transaction2 : transactionList) {
	// System.out.println(transaction2.getTransactionsMode());
	// if (transaction2.getTransactionsMode().equals("paid")) {
	// currentAmount = currentAmount
	// - transaction2.getTransactionsAmount();
	// System.out.println("paid" + currentAmount);
	//
	// } else if (transaction2.getTransactionsMode()
	// .equals("received")) {
	// currentAmount = currentAmount
	// + transaction2.getTransactionsAmount();
	// System.out.println("recived" + currentAmount);
	// }
	// }
	// } catch (Exception e) {
	// e.printStackTrace();
	// }
	//
	// model.addAttribute("TransactionList", transactionList);
	// // model.addAttribute("AccountList", accountList);
	// model.addAttribute("currentAmount", currentAmount);
	// // model.addAttribute("accountHead", new Account_head());
	//
	// return url;
	// }

	@RequestMapping(value = "/ToViewLedger", method = RequestMethod.POST)
	public String ViewAccountLedger(Model model,
			@RequestParam("companyId") Long companyId,
			@RequestParam("userId") Long userId) {
		// System.out.println(userId);
		// System.out.println(companyId);

		CompanyHead companyHead = new CompanyHead();
		try {
			companyHead = userService.findCompanyHeadId(companyId, userId);
			// System.out.println(companyHead.getCompanyHeadId());
		} catch (Exception e) {
			e.printStackTrace();
		}

		List<CompanyHead> accountList = new ArrayList<>();
		List<Transactions> transactionList = new ArrayList<>();
		String url = "ViewAccountLedger";
		long currentAmount = 0;
		List<Company> companies = new ArrayList<>();
		List<CompanyHead> companyHeads = new ArrayList<>();
		try {

			transactionList = userService.getAllTransactionsOfCompany(userId,
					companyHead.getCompanyHeadId());
			// accountList = brokerService.getAllAccountheads(userId);
			companyHeads = userService.getAllCompanyHeadOfUser(userId);
			companies = userService.getAllCompanies();

			for (Transactions transation : transactionList) {
				for (CompanyHead coHead : companyHeads) {
					if (transation.getCompanyHeadId() == coHead
							.getCompanyHeadId()) {
						for (Company compTransactions : companies) {
							if (coHead.getCompanyId() == compTransactions
									.getCompanyId()) {
								transation.setCompanyName(compTransactions
										.getCompanyName());
								System.out.println(transation.getCompanyName());

							}
						}
					}
				}
			}
			for (Transactions transaction2 : transactionList) {
				// System.out.println(transaction2.getTransactionsMode());
				if (transaction2.getTransactionsMode().equals("paid")) {
					currentAmount = currentAmount
							- transaction2.getTransactionsAmount();
					// System.out.println("paid" + currentAmount);

				} else if (transaction2.getTransactionsMode()
						.equals("received")) {
					currentAmount = currentAmount
							+ transaction2.getTransactionsAmount();
					// System.out.println("recived" + currentAmount);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		model.addAttribute("TransactionList", transactionList);
		// model.addAttribute("AccountList", accountList);
		model.addAttribute("currentAmount", currentAmount);
		// model.addAttribute("accountHead", new Account_head());

		return url;

		// return "redirect:/ViewAccountLedger.Inn?userId=" + userId + "&"
		// + "accountHeadId=" + companyHead.getCompanyHeadId();
	}

	@RequestMapping(value = "/ViewARAndAP", method = RequestMethod.GET)
	public String ViewARAndAP(Model model,
			@RequestParam(required = false) Long accountHeadId, Long d,
			Long userId) {
		List<Company> companyList = new ArrayList<>();
		List<Company> List = new ArrayList<>();
		List<CompanyHead> accountList = new ArrayList<>();
		List<Transactions> transactionList = new ArrayList<>();
		String url = "ARANDAP";
		long payable = 0;
		long recievable = 0;
		long currentAmount = 0;
		try {

			transactionList = userService.getAllTransactionsOfUsers(userId);
			accountList = userService.getAllCompanyHead(userId);
			// gett compnay names
			companyList = userService.getAllCompanies();
			for (Company company : companyList) {
				for (CompanyHead companyhead : accountList) {
					if (company.getCompanyId() == companyhead.getCompanyId()) {

						Company company3 = new Company();
						company3.setCompanyId(company.getCompanyId());
						company3.setBlock(company.getBlock());
						company3.setCompanyAddress(company.getCompanyAddress());
						company3.setCompanyCategory(company
								.getCompanyCategory());
						company3.setCompanyCity(company.getCompanyCity());
						company3.setCompanyContactNumber(company
								.getCompanyContactNumber());
						company3.setCompanyEmailid(company.getCompanyEmailid());
						company3.setCompanyName(company.getCompanyName());
						company3.setStatus(company.getStatus());
						company3.setUserId(company.getUserId());
						List.add(company3);
					}

				}

			}
			// companyHeads = userService.getAllCompanyHeadOfUser(userId);
			// companies = userService.getAllCompanies();

			for (Transactions transation : transactionList) {
				for (CompanyHead coHead : accountList) {
					if (transation.getCompanyHeadId() == coHead
							.getCompanyHeadId()) {
						for (Company compTransactions : companyList) {
							if (coHead.getCompanyId() == compTransactions
									.getCompanyId()) {
								transation.setCompanyName(compTransactions
										.getCompanyName());
								System.out.println(transation.getCompanyName());

							}
						}
					}
				}
			}
			for (Company account : List) {

				for (Transactions transaction2 : transactionList) {
					if (transaction2.getCompanyHeadId() == account
							.getCompanyId()) {
						if (transaction2.getTransactionsMode().equals("paid")) {
							currentAmount = currentAmount
									- transaction2.getTransactionsAmount();

						} else if (transaction2.getTransactionsMode().equals(
								"received")) {
							currentAmount = currentAmount
									+ transaction2.getTransactionsAmount();

						}
					}
				}

				account.setAmount(currentAmount);
				// System.out.println(currentAmount);
				if (currentAmount > 0) {
					payable = payable + currentAmount;
				} else if (currentAmount < 0) {
					recievable = recievable - currentAmount;
				}
				currentAmount = 0;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		// System.out.println("payable" + payable + "--Recieved" + recievable);
		model.addAttribute("AccountList", List);
		model.addAttribute("payableAmount", payable);
		model.addAttribute("recievableAmount", recievable);
		return url;
	}
}
