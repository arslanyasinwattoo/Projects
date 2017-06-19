package com.project.freefay.entity;

import static javax.persistence.GenerationType.IDENTITY;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinColumns;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "category", catalog = "freefay")
public class Ads implements java.io.Serializable {
	private Long adsId;
	private String adName;
	private String contactNo;
	private String emailId;
	private Users users;
	private int active;
	private String description;
	private Long adDuration;
	private String adLink;

	public Ads(Long adsId, String adName, String contactNo, String emailId,
			Users users, int active, String description, Long adDuration,
			String adLink) {
		super();
		this.adsId = adsId;
		this.adName = adName;
		this.contactNo = contactNo;
		this.emailId = emailId;
		this.users = users;
		this.active = active;
		this.description = description;
		this.adDuration = adDuration;
		this.adLink = adLink;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "ads_id", unique = true, nullable = false)
	public Long getAdsId() {
		return adsId;
	}

	public void setAdsId(Long adsId) {
		this.adsId = adsId;
	}

	@Column(name = "ad_name", nullable = false, length = 200)
	public String getAdName() {
		return adName;
	}

	public void setAdName(String adName) {
		this.adName = adName;
	}

	@Column(name = "contact_no", nullable = false, length = 200)
	public String getContactNo() {
		return contactNo;
	}

	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}

	@Column(name = "email_id", nullable = false, length = 100)
	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumns({
			@JoinColumn(name = "users_id", referencedColumnName = "users_id", nullable = false),
			@JoinColumn(name = "username", referencedColumnName = "username", nullable = false) })
	public Users getUsers() {
		return users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

	@Column(name = "active", nullable = false)
	public int getActive() {
		return active;
	}

	public void setActive(int active) {
		this.active = active;
	}

	@Column(name = "description", nullable = false, length = 500)
	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Column(name = "ad_duration", nullable = false)
	public Long getAdDuration() {
		return adDuration;
	}

	public void setAdDuration(Long adDuration) {
		this.adDuration = adDuration;
	}

	@Column(name = "ad_link", nullable = false, length = 250)
	public String getAdLink() {
		return adLink;
	}

	public void setAdLink(String adLink) {
		this.adLink = adLink;
	}

}
