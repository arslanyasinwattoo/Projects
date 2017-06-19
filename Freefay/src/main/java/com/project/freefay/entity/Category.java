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
 * Category generated by hbm2java
 */
@Entity
@Table(name = "category", catalog = "freefay")
public class Category implements java.io.Serializable {

	private Long categoryId;
	private Users users;
	private String categoryName;
	private Date date;
	private Date time;
	private int active;
	private int menu;
	private Set<Search> searches = new HashSet<Search>(0);
	private Set<SubCategory> subCategories = new HashSet<SubCategory>(0);

	public Category() {
	}

	public Category(Users users, String categoryName, Date date, Date time,
			int active) {
		this.users = users;
		this.categoryName = categoryName;
		this.date = date;
		this.time = time;
		this.active = active;
	}

	public Category(Users users, String categoryName, Date date, Date time,
			int active, Set<Search> searches, Set<SubCategory> subCategories) {
		this.users = users;
		this.categoryName = categoryName;
		this.date = date;
		this.time = time;
		this.active = active;
		this.searches = searches;
		this.subCategories = subCategories;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "category_id", unique = true, nullable = false)
	public Long getCategoryId() {
		return this.categoryId;
	}

	public void setCategoryId(Long categoryId) {
		this.categoryId = categoryId;
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

	@Column(name = "category_name", nullable = false, length = 45)
	public String getCategoryName() {
		return this.categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
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

	@Column(name = "active", nullable = false)
	public int getActive() {
		return this.active;
	}

	public void setActive(int active) {
		this.active = active;
	}

	@Column(name = "menu", nullable = true)
	public int getMenu() {
		return menu;
	}

	public void setMenu(int menu) {
		this.menu = menu;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "category")
	public Set<Search> getSearches() {
		return this.searches;
	}

	public void setSearches(Set<Search> searches) {
		this.searches = searches;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "category")
	public Set<SubCategory> getSubCategories() {
		return this.subCategories;
	}

	public void setSubCategories(Set<SubCategory> subCategories) {
		this.subCategories = subCategories;
	}

}
