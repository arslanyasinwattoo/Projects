package edu.bnu.fyp1.entity;

import java.sql.Date;
import java.sql.Time;

public class Transaction {
	private Long transactionId;
	private Date transactionDate;
	private Time transactionTime;
	private String transactionMode;
	private Long transactionAmount;
	private String description;
	private Long userId;
	private Account_head accountHead;
	private Long accountHeadId;
	private Long cropProfileId;
	private Long subTypeId;
	private Long ExpenseTypeId;

	public Long getExpenseTypeId() {
		return ExpenseTypeId;
	}

	public void setExpenseTypeId(Long expenseTypeId) {
		ExpenseTypeId = expenseTypeId;
	}

	public Long getCropProfileId() {
		return cropProfileId;
	}

	public void setCropProfileId(Long cropProfileId) {
		this.cropProfileId = cropProfileId;
	}

	public Long getSubTypeId() {
		return subTypeId;
	}

	public void setSubTypeId(Long subTypeId) {
		this.subTypeId = subTypeId;
	}

	public Long getAccountHeadId() {
		return accountHeadId;
	}

	public void setAccountHeadId(Long accountHeadId) {
		this.accountHeadId = accountHeadId;
	}

	public Long getTransactionId() {
		return transactionId;
	}

	public void setTransactionId(Long transactionId) {
		this.transactionId = transactionId;
	}

	public Date getTransactionDate() {
		return transactionDate;
	}

	public void setTransactionDate(Date transactionDate) {
		this.transactionDate = transactionDate;
	}

	public Time getTransactionTime() {
		return transactionTime;
	}

	public void setTransactionTime(Time transactionTime) {
		this.transactionTime = transactionTime;
	}

	public String getTransactionMode() {
		return transactionMode;
	}

	public void setTransactionMode(String transactionMode) {
		this.transactionMode = transactionMode;
	}

	public Long getTransactionAmount() {
		return transactionAmount;
	}

	public void setTransactionAmount(Long transactionAmount) {
		this.transactionAmount = transactionAmount;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public Account_head getAccountHead() {
		return accountHead;
	}

	public void setAccountHead(Account_head accountHead) {
		this.accountHead = accountHead;
	}
}
