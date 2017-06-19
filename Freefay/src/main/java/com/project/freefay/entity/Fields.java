package com.project.freefay.entity;

// Generated Dec 23, 2015 6:18:07 AM by Hibernate Tools 4.0.0

import java.util.Date;
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
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Fields generated by hbm2java
 */
@SuppressWarnings("serial")
@Entity
@Table(name = "fields", catalog = "freefay")
public class Fields implements java.io.Serializable {

	private Long fieldsId;
	private SubCategory subCategory;
	private Users users;
	private String fieldName;
	private Date date;
	private Date time;
	private int active;
	private Set<Search> searches = new HashSet<Search>(0);

	public Fields() {
	}

	public Fields(SubCategory subCategory, Users users, String fieldName,
			Date date, Date time, int active) {
		this.subCategory = subCategory;
		this.users = users;
		this.fieldName = fieldName;
		this.date = date;
		this.time = time;
		this.active = active;
	}

	public Fields(SubCategory subCategory, Users users, String fieldName,
			Date date, Date time, int active, Set<Search> searches) {
		this.subCategory = subCategory;
		this.users = users;
		this.fieldName = fieldName;
		this.date = date;
		this.time = time;
		this.active = active;
		this.searches = searches;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "fields_id", unique = true, nullable = false)
	public Long getFieldsId() {
		return this.fieldsId;
	}

	public void setFieldsId(Long fieldsId) {
		this.fieldsId = fieldsId;
	}

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "sub_category_id", nullable = false)
	public SubCategory getSubCategory() {
		return this.subCategory;
	}

	public void setSubCategory(SubCategory subCategory) {
		this.subCategory = subCategory;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumns({
			@JoinColumn(name = "admin_id", referencedColumnName = "users_id", nullable = false),
			@JoinColumn(name = "admin_username", referencedColumnName = "username", nullable = false) })
	public Users getUsers() {
		return this.users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

	@Column(name = "field_name", nullable = false, length = 45)
	public String getFieldName() {
		return this.fieldName;
	}

	public void setFieldName(String fieldName) {
		this.fieldName = fieldName;
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

	@Column(name = "active", nullable = false, length = 11)
	public int getActive() {
		return active;
	}

	public void setActive(int active) {
		this.active = active;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "fields")
	public Set<Search> getSearches() {
		return this.searches;
	}

	public void setSearches(Set<Search> searches) {
		this.searches = searches;
	}

}
