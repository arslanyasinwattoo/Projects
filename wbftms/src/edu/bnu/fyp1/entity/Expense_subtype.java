package edu.bnu.fyp1.entity;

public class Expense_subtype {
	private Long subTypeId;
	private String subName;
	private User user;
	private Long userId;
	private Expense_type expenseType;
	private Long expenseTypeId;

	public User getUser() {
		return user;
	}

	public Long getSubTypeId() {
		return subTypeId;
	}

	public void setSubTypeId(Long subTypeId) {
		this.subTypeId = subTypeId;
	}

	public String getSubName() {
		return subName;
	}

	public void setSubName(String subName) {
		this.subName = subName;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public Expense_type getExpenseType() {
		return expenseType;
	}

	public void setExpenseType(Expense_type expenseType) {
		this.expenseType = expenseType;
	}

	public Long getExpenseTypeId() {
		return expenseTypeId;
	}

	public void setExpenseTypeId(Long expenseTypeId) {
		this.expenseTypeId = expenseTypeId;
	}
}
