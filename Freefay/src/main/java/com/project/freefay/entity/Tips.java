package com.project.freefay.entity;

// Generated Dec 23, 2015 6:18:07 AM by Hibernate Tools 4.0.0

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinColumns;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Tips generated by hbm2java
 */
@Entity
@Table(name = "tips", catalog = "freefay")
public class Tips implements java.io.Serializable {

	private long tipsId;
	private PaymentCharges paymentCharges;
	private Users usersByFkTipsUsers1;
	private Users usersByFkTipsUsers2;
	private JobDetails jobDetails;
	private Date date;
	private Date time;
	private double amount;

	public Tips() {
	}

	public Tips(long tipsId, PaymentCharges paymentCharges,
			Users usersByFkTipsUsers1, Users usersByFkTipsUsers2,
			JobDetails jobDetails, Date date, Date time, double amount) {
		this.tipsId = tipsId;
		this.paymentCharges = paymentCharges;
		this.usersByFkTipsUsers1 = usersByFkTipsUsers1;
		this.usersByFkTipsUsers2 = usersByFkTipsUsers2;
		this.jobDetails = jobDetails;
		this.date = date;
		this.time = time;
		this.amount = amount;
	}

	@Id
	@Column(name = "tips_id", unique = true, nullable = false)
	public long getTipsId() {
		return this.tipsId;
	}

	public void setTipsId(long tipsId) {
		this.tipsId = tipsId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "payment_charges_id", nullable = false)
	public PaymentCharges getPaymentCharges() {
		return this.paymentCharges;
	}

	public void setPaymentCharges(PaymentCharges paymentCharges) {
		this.paymentCharges = paymentCharges;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumns({
			@JoinColumn(name = "tipper_id", referencedColumnName = "users_id", nullable = false),
			@JoinColumn(name = "tipper_username", referencedColumnName = "username", nullable = false) })
	public Users getUsersByFkTipsUsers1() {
		return this.usersByFkTipsUsers1;
	}

	public void setUsersByFkTipsUsers1(Users usersByFkTipsUsers1) {
		this.usersByFkTipsUsers1 = usersByFkTipsUsers1;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumns({
			@JoinColumn(name = "receiver_id", referencedColumnName = "users_id", nullable = false),
			@JoinColumn(name = "receiver_username", referencedColumnName = "username", nullable = false) })
	public Users getUsersByFkTipsUsers2() {
		return this.usersByFkTipsUsers2;
	}

	public void setUsersByFkTipsUsers2(Users usersByFkTipsUsers2) {
		this.usersByFkTipsUsers2 = usersByFkTipsUsers2;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "job_details_id", nullable = false)
	public JobDetails getJobDetails() {
		return this.jobDetails;
	}

	public void setJobDetails(JobDetails jobDetails) {
		this.jobDetails = jobDetails;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "date", nullable = false, length = 10)
	public Date getDate() {
		return this.date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	@Temporal(TemporalType.TIME)
	@Column(name = "time", nullable = false, length = 8)
	public Date getTime() {
		return this.time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	@Column(name = "amount", nullable = false, precision = 22, scale = 0)
	public double getAmount() {
		return this.amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}

}
