package com.project.freefay.entity;

import java.util.Date;

public class Usersp {

	private long usersId;
	private String username;
	private Regions regions;
	private Countries countries;
	private Cities cities;
	private String password;
	private byte enabled;
	private String firstName;
	private String lastName;
	private String contactNo;
	private String emailId;
	private String gender;
	private int active;
	private int blocked;
	private int verified;
	private String dob;
	private Date date;
	private Date time;
	private String postalCode;
	private String address;

	public long getUsersId() {
		return usersId;
	}

	public void setUsersId(long usersId) {
		this.usersId = usersId;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public Regions getRegions() {
		return regions;
	}

	public void setRegions(Regions regions) {
		this.regions = regions;
	}

	public Countries getCountries() {
		return countries;
	}

	public void setCountries(Countries countries) {
		this.countries = countries;
	}

	public Cities getCities() {
		return cities;
	}

	public void setCities(Cities cities) {
		this.cities = cities;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public byte getEnabled() {
		return enabled;
	}

	public void setEnabled(byte enabled) {
		this.enabled = enabled;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getContactNo() {
		return contactNo;
	}

	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getActive() {
		return active;
	}

	public void setActive(int active) {
		this.active = active;
	}

	public int getBlocked() {
		return blocked;
	}

	public void setBlocked(int blocked) {
		this.blocked = blocked;
	}

	public int getVerified() {
		return verified;
	}

	public void setVerified(int verified) {
		this.verified = verified;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	public String getPostalCode() {
		return postalCode;
	}

	public void setPostalCode(String postalCode) {
		this.postalCode = postalCode;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

}
