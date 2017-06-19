package edu.bnu.fyp1.entity;

public class Crop_Expense {
	private Long cropSalesId;
	private Expense_subtype expenseSubtype;
	private Crop_profile cropProfile;
	private Transaction transaction;
	private Long transactionId;
	private Long cropProfileId;
	private Long subtypeId;

	public Long getCropSalesId() {
		return cropSalesId;
	}

	public void setCropSalesId(Long cropSalesId) {
		this.cropSalesId = cropSalesId;
	}

	public Expense_subtype getExpenseSubtype() {
		return expenseSubtype;
	}

	public void setExpenseSubtype(Expense_subtype expenseSubtype) {
		this.expenseSubtype = expenseSubtype;
	}

	public Crop_profile getCropProfile() {
		return cropProfile;
	}

	public void setCropProfile(Crop_profile cropProfile) {
		this.cropProfile = cropProfile;
	}

	public Transaction getTransaction() {
		return transaction;
	}

	public void setTransaction(Transaction transaction) {
		this.transaction = transaction;
	}

	public Long getTransactionId() {
		return transactionId;
	}

	public void setTransactionId(Long transactionId) {
		this.transactionId = transactionId;
	}

	public Long getCropProfileId() {
		return cropProfileId;
	}

	public void setCropProfileId(Long cropProfileId) {
		this.cropProfileId = cropProfileId;
	}

	public Long getSubtypeId() {
		return subtypeId;
	}

	public void setSubtypeId(Long subtypeId) {
		this.subtypeId = subtypeId;
	}
}
