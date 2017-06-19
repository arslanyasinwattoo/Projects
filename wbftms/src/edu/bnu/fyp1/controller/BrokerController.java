package edu.bnu.fyp1.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import edu.bnu.fyp1.entity.Account_head;
import edu.bnu.fyp1.entity.Crop_info;
import edu.bnu.fyp1.entity.Manage_sale_record;
import edu.bnu.fyp1.entity.Transaction;
import edu.bnu.fyp1.service.BrokerService;
import edu.bnu.fyp1.util.DateTimeUtil;

@Controller
public class BrokerController {
	@Autowired
	private BrokerService brokerService;

	DateTimeUtil dateTimeUtil = new DateTimeUtil();

	@RequestMapping(value = "/CropSales", method = RequestMethod.GET)
	public String CropSales(Model model,
			@RequestParam(required = false) Long ManageCropSaleId, Long d,
			Long userId) {

		List<Manage_sale_record> saleList = new ArrayList<>();
		List<Crop_info> cropList = new ArrayList<>();
		List<Account_head> accountList = new ArrayList<>();
		Manage_sale_record sale_record = new Manage_sale_record();
		String url = "ManageCropSale";
		try {
			Date date1 = new Date();
			saleList = brokerService.getTodaysSalesRecord(userId,
					dateTimeUtil.converToSQLDate(date1));
			accountList = brokerService.getAllAccountheads(userId);
			cropList = brokerService.getAllCropInfo();

			if (ManageCropSaleId != null) {
				if (d == 0) {
					sale_record = brokerService
							.findSaleRecordById(ManageCropSaleId);
				} else if (d == 1) {
					// head.setAccountBlock(d);
					// head.setAccountHeadId(AccountId);
					// commonService.blockAccount(head);
				}

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("CropList", cropList);
		model.addAttribute("AccountList", accountList);
		model.addAttribute("SaleList", saleList);
		model.addAttribute("SaleRecord", sale_record);
		return url;
	}

	@RequestMapping(value = "/SaveCropSales", method = RequestMethod.POST)
	public String saveCropSales(@ModelAttribute Manage_sale_record sale_record) {
		try {

			if (sale_record.getManageSaleRecordId() == null) {
				Date date = new Date();
				sale_record.setSaleDate(dateTimeUtil.converToSQLDate(date));
				brokerService.addCropSale(sale_record);
				System.out.println("asd");
			} else {
				brokerService.updateCropSale(sale_record);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/CropSales.bnu?userId=" + sale_record.getUserId();
	}

	@RequestMapping(value = "/ManageTransaction", method = RequestMethod.GET)
	public String Transaction(Model model,
			@RequestParam(required = false) Long transactionId, Long d,
			Long userId) {

		List<Account_head> accountList = new ArrayList<>();
		List<Transaction> transactionpList = new ArrayList<>();
		List<Transaction> transactionrList = new ArrayList<>();
		Transaction transaction = new Transaction();
		String url = "Transaction";
		try {
			Date date = new Date();
			transactionpList = brokerService.getTodayspayedTransaction(userId,
					dateTimeUtil.converToSQLDate(date));
			transactionrList = brokerService.getTodaysrecievedTransaction(
					userId, dateTimeUtil.converToSQLDate(date));

			accountList = brokerService.getAllAccountheads(userId);
			if (transactionId != null) {
				if (d == 1) {
					transaction = brokerService
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

	@RequestMapping(value = "/SaveTransaction", method = RequestMethod.POST)
	public String saveCropSales(@ModelAttribute Transaction transaction) {

		try {

			if (transaction.getTransactionId() == null) {
				Date date = new Date();
				transaction.setTransactionDate(dateTimeUtil
						.converToSQLDate(date));
				transaction.setTransactionTime(dateTimeUtil
						.converToSQLTime(date));
				brokerService.addTransaction(transaction);

			} else {

				brokerService.updateTransaction(transaction);

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/ManageTransaction.bnu?userId="
				+ transaction.getUserId();
	}

	@RequestMapping(value = "/ViewTransaction", method = RequestMethod.GET)
	public String ViewTransaction(Model model,
			@RequestParam(required = false) Long transactionId, Long d,
			Long userId) {

		List<Account_head> accountList = new ArrayList<>();
		List<Transaction> transactionpList = new ArrayList<>();
		List<Transaction> transactionrList = new ArrayList<>();
		Transaction transaction = new Transaction();
		String url = "ViewTransaction";
		try {

			transactionpList = brokerService.getAllpayedTransaction(userId);
			transactionrList = brokerService.getAllrecievedTransaction(userId);

			accountList = brokerService.getAllAccountheads(userId);
			if (transactionId != null) {
				if (d == 1) {
					transaction = brokerService
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

	@RequestMapping(value = "/SaveViewTransaction", method = RequestMethod.POST)
	public String saveTransaction(@ModelAttribute Transaction transaction) {
		try {

			if (transaction.getTransactionId() == null) {
				Date date = new Date();
				transaction.setTransactionDate(dateTimeUtil
						.converToSQLDate(date));
				transaction.setTransactionTime(dateTimeUtil
						.converToSQLTime(date));
				brokerService.addTransaction(transaction);

			} else {

				brokerService.updateTransaction(transaction);

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/ViewTransaction.bnu?userId="
				+ transaction.getUserId();
	}

	@RequestMapping(value = "/ViewAccountLedger", method = RequestMethod.GET)
	public String ViewLedger(Model model,
			@RequestParam(required = false) Long accountHeadId, Long d,
			Long userId) {

		List<Account_head> accountList = new ArrayList<>();
		List<Transaction> transactionList = new ArrayList<>();
		String url = "AccountLedger";
		long currentAmount = 0;
		try {

			transactionList = brokerService.getAllTransactionofaAccount(userId,
					accountHeadId);
			accountList = brokerService.getAllAccountheads(userId);

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

		model.addAttribute("TransactionList", transactionList);
		model.addAttribute("AccountList", accountList);
		model.addAttribute("currentAmount", currentAmount);
		model.addAttribute("accountHead", new Account_head());

		return url;
	}

	@RequestMapping(value = "/ToViewLedger", method = RequestMethod.POST)
	public String ViewAccountLedger(@ModelAttribute Account_head account_head) {
		return "redirect:/ViewAccountLedger.bnu?userId="
				+ account_head.getUserId() + "&" + "accountHeadId="
				+ account_head.getAccountHeadId();
	}

	@RequestMapping(value = "/ViewARAndAP", method = RequestMethod.GET)
	public String ViewARAndAP(Model model,
			@RequestParam(required = false) Long accountHeadId, Long d,
			Long userId) {

		List<Account_head> accountList = new ArrayList<>();
		List<Transaction> transactionList = new ArrayList<>();
		String url = "ARANDAP";
		long payable = 0;
		long recievable = 0;
		long currentAmount = 0;
		try {

			transactionList = brokerService.getAllTransaction(userId);
			accountList = brokerService.getAllAccountheads(userId);
			for (Account_head account : accountList) {

				for (Transaction transaction2 : transactionList) {
					if (transaction2.getAccountHeadId() == account
							.getAccountHeadId()) {
						if (transaction2.getTransactionMode().equals("payed")) {
							currentAmount = currentAmount
									- transaction2.getTransactionAmount();

						} else if (transaction2.getTransactionMode().equals(
								"recieved")) {
							currentAmount = currentAmount
									+ transaction2.getTransactionAmount();

						}
					}
				}
				
				account.setAmount(currentAmount);
				if(currentAmount >0){
					payable=payable+currentAmount;
				}
				else if(currentAmount < 0){
					recievable=recievable-currentAmount;
				}
				currentAmount = 0;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("AccountList", accountList);
		model.addAttribute("payableAmount", payable);
		model.addAttribute("recievableAmount", recievable);
		return url;
	}
}
