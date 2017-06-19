package com.project.freefay.entity;

// Generated Dec 23, 2015 6:18:07 AM by Hibernate Tools 4.0.0

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinColumns;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Payment generated by hbm2java
 */
@Entity
@Table(name = "payment", catalog = "freefay")
public class Payment implements java.io.Serializable {

	private Long paymentId;
	private PaymentOptions paymentOptions;
	private PaymentCharges paymentCharges;
	private Users usersByFkPaymentUsers2;
	private Users usersByFkPaymentUsers1;
	private JobDetails jobDetails;
	private Date date;
	private Date time;
	private Double amount;
	private int cancelled;
	private int issues;

	public Payment() {
	}

	public Payment(PaymentOptions paymentOptions,
			PaymentCharges paymentCharges, Users usersByFkPaymentUsers2,
			Users usersByFkPaymentUsers1, JobDetails jobDetails, Date date,
			Date time, int cancelled, int issues) {
		this.paymentOptions = paymentOptions;
		this.paymentCharges = paymentCharges;
		this.usersByFkPaymentUsers2 = usersByFkPaymentUsers2;
		this.usersByFkPaymentUsers1 = usersByFkPaymentUsers1;
		this.jobDetails = jobDetails;
		this.date = date;
		this.time = time;
		this.cancelled = cancelled;
		this.issues = issues;
	}

	public Payment(PaymentOptions paymentOptions,
			PaymentCharges paymentCharges, Users usersByFkPaymentUsers2,
			Users usersByFkPaymentUsers1, JobDetails jobDetails, Date date,
			Date time, Double amount, int cancelled, int issues) {
		this.paymentOptions = paymentOptions;
		this.paymentCharges = paymentCharges;
		this.usersByFkPaymentUsers2 = usersByFkPaymentUsers2;
		this.usersByFkPaymentUsers1 = usersByFkPaymentUsers1;
		this.jobDetails = jobDetails;
		this.date = date;
		this.time = time;
		this.amount = amount;
		this.cancelled = cancelled;
		this.issues = issues;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "payment_id", unique = true, nullable = false)
	public Long getPaymentId() {
		return this.paymentId;
	}

	public void setPaymentId(Long paymentId) {
		this.paymentId = paymentId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "payment_options_id", nullable = false)
	public PaymentOptions getPaymentOptions() {
		return this.paymentOptions;
	}

	public void setPaymentOptions(PaymentOptions paymentOptions) {
		this.paymentOptions = paymentOptions;
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
			@JoinColumn(name = "reciever_id", referencedColumnName = "users_id", nullable = false),
			@JoinColumn(name = "reciever_username", referencedColumnName = "username", nullable = false) })
	public Users getUsersByFkPaymentUsers2() {
		return this.usersByFkPaymentUsers2;
	}

	public void setUsersByFkPaymentUsers2(Users usersByFkPaymentUsers2) {
		this.usersByFkPaymentUsers2 = usersByFkPaymentUsers2;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumns({
			@JoinColumn(name = "payer_id", referencedColumnName = "users_id", nullable = false),
			@JoinColumn(name = "payer_username", referencedColumnName = "username", nullable = false) })
	public Users getUsersByFkPaymentUsers1() {
		return this.usersByFkPaymentUsers1;
	}

	public void setUsersByFkPaymentUsers1(Users usersByFkPaymentUsers1) {
		this.usersByFkPaymentUsers1 = usersByFkPaymentUsers1;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "job_details_job_details_id", nullable = false)
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

	@Column(name = "amount", precision = 22, scale = 0)
	public Double getAmount() {
		return this.amount;
	}

	public void setAmount(Double amount) {
		this.amount = amount;
	}

	@Column(name = "cancelled", nullable = false)
	public int getCancelled() {
		return this.cancelled;
	}

	public void setCancelled(int cancelled) {
		this.cancelled = cancelled;
	}

	@Column(name = "issues", nullable = false)
	public int getIssues() {
		return this.issues;
	}

	public void setIssues(int issues) {
		this.issues = issues;
	}

}