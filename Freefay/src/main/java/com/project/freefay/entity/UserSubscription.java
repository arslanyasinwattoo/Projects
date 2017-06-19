package com.project.freefay.entity;

// Generated Dec 23, 2015 6:18:07 AM by Hibernate Tools 4.0.0

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinColumns;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * UserSubscription generated by hbm2java
 */
@Entity
@Table(name = "user_subscription", catalog = "freefay")
public class UserSubscription implements java.io.Serializable {

	private Long userSubscriptionId;
	private Users users;
	private Subscription subscription;
	private Set<UserPoints> userPointses = new HashSet<UserPoints>(0);

	public UserSubscription() {
	}

	public UserSubscription(Users users, Subscription subscription) {
		this.users = users;
		this.subscription = subscription;
	}

	public UserSubscription(Users users, Subscription subscription,
			Set<UserPoints> userPointses) {
		this.users = users;
		this.subscription = subscription;
		this.userPointses = userPointses;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "user_subscription_id", unique = true, nullable = false)
	public Long getUserSubscriptionId() {
		return this.userSubscriptionId;
	}

	public void setUserSubscriptionId(Long userSubscriptionId) {
		this.userSubscriptionId = userSubscriptionId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumns({
			@JoinColumn(name = "users_id", referencedColumnName = "users_id", nullable = false),
			@JoinColumn(name = "username", referencedColumnName = "username", nullable = false) })
	public Users getUsers() {
		return this.users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "subscription_id", nullable = false)
	public Subscription getSubscription() {
		return this.subscription;
	}

	public void setSubscription(Subscription subscription) {
		this.subscription = subscription;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "userSubscription")
	public Set<UserPoints> getUserPointses() {
		return this.userPointses;
	}

	public void setUserPointses(Set<UserPoints> userPointses) {
		this.userPointses = userPointses;
	}

}