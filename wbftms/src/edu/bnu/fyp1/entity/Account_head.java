package edu.bnu.fyp1.entity;

import java.sql.Date;
import java.sql.Time;
import java.util.List;

public class Account_head {
	private Long accountHeadId;
	private String accountFirstname;
	private String accountLastname;
	private String accountDescription;
	private Date accountDate;
	private Time accountTime;
	private String accountName;
	private List<Transaction> transactionList;
	private User user;
	private Crop_Expense cropSales;
	private Long userId;
	private Long accountBlock;
	private String accountContactNo;
	private Long amount;
	private String accountPassword;

	public String getAccountPassword() {
		return accountPassword;
	}

	public void setAccountPassword(String accountPassword) {
		this.accountPassword = accountPassword;
	}

	public Long getAmount() {
		return amount;
	}

	public void setAmount(Long amount) {
		this.amount = amount;
	}

	public String getAccountContactNo() {
		return accountContactNo;
	}

	public void setAccountContactNo(String accountContactNo) {
		this.accountContactNo = accountContactNo;
	}

	public Long getAccountBlock() {
		return accountBlock;
	}

	public void setAccountBlock(Long d) {
		this.accountBlock = d;
	}

	public Long getAccountHeadId() {
		return accountHeadId;
	}

	public void setAccountHeadId(Long accountHeadId) {
		this.accountHeadId = accountHeadId;
	}

	public String getAccountFirstname() {
		return accountFirstname;
	}

	public void setAccountFirstname(String accountFirstname) {
		this.accountFirstname = accountFirstname;
	}

	public String getAccountLastname() {
		return accountLastname;
	}

	public void setAccountLastname(String accountLastname) {
		this.accountLastname = accountLastname;
	}

	public String getAccountDescription() {
		return accountDescription;
	}

	public void setAccountDescription(String accountDescription) {
		this.accountDescription = accountDescription;
	}

	public Date getAccountDate() {
		return accountDate;
	}

	public void setAccountDate(Date accountDate) {
		this.accountDate = accountDate;
	}

	public Time getAccountTime() {
		return accountTime;
	}

	public void setAccountTime(Time accountTime) {
		this.accountTime = accountTime;
	}

	public String getAccountName() {
		return accountName;
	}

	public void setAccountName(String accountName) {
		this.accountName = accountName;
	}

	public List<Transaction> getTransactionList() {
		return transactionList;
	}

	public void setTransactionList(List<Transaction> transactionList) {
		this.transactionList = transactionList;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Crop_Expense getCropSales() {
		return cropSales;
	}

	public void setCropSales(Crop_Expense cropSales) {
		this.cropSales = cropSales;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

}
