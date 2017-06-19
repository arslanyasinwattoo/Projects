package edu.bnu.fyp1.entity;

import java.util.List;

public class Expense_type {
	private Long expenseTypeId;
	private String expenseName;
	private Long userId;

	private User user;
	private List<Expense_subtype> expenseSubtypelist;

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public Long getExpenseTypeId() {
		return expenseTypeId;
	}

	public void setExpenseTypeId(Long expenseTypeId) {
		this.expenseTypeId = expenseTypeId;
	}

	public String getExpenseName() {
		return expenseName;
	}

	public void setExpenseName(String expenseName) {
		this.expenseName = expenseName;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public List<Expense_subtype> getExpenseSubtypelist() {
		return expenseSubtypelist;
	}

	public void setExpenseSubtypelist(List<Expense_subtype> expenseSubtypelist) {
		this.expenseSubtypelist = expenseSubtypelist;
	}

}
