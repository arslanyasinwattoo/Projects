package edu.bnu.fyp1.entity;

public class Revenue {
private Long revenueId;
private Long userId;
	private Long transactionId;

	public Long getRevenueId() {
		return revenueId;
	}

	public void setRevenueId(Long revenueId) {
		this.revenueId = revenueId;
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
