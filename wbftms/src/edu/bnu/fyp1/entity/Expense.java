package edu.bnu.fyp1.entity;

public class Expense {
	private Long expenseId;
	private Long userId;
	private Long transactionId;

	public Long getExpenseId() {
		return expenseId;
	}

	public void setExpenseId(Long expenseId) {
		this.expenseId = expenseId;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public Long getTransactionId() {
		return transactionId;
	}

	public void setTransactionId(Long transactionId) {
		this.transactionId = transactionId;
	}

}
