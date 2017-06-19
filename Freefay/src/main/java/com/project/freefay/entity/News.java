package com.project.freefay.entity;

import static javax.persistence.GenerationType.IDENTITY;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinColumns;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "news", catalog = "freefay")
public class News implements java.io.Serializable {
	private Long newsId;
	private String newsHeader;
	private String newsDescription;
	private Date time;
	private Date date;
	private int active;
	private Users users;
	private int cancelled;

	public News() {
		super();
		// TODO Auto-generated constructor stub
	}

	public News(Long newsId, String newsHeader, String newsDescription,
			Date time, Date date, int active, Users users, int cancelled) {
		super();
		this.newsId = newsId;
		this.newsHeader = newsHeader;
		this.newsDescription = newsDescription;
		this.time = time;
		this.date = date;
		this.active = active;
		this.users = users;
		this.cancelled = cancelled;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "news_id", unique = true, nullable = false)
	public Long getNewsId() {
		return newsId;
	}

	public void setNewsId(Long newsId) {
		this.newsId = newsId;
	}

	@Column(name = "news_header", nullable = false, length = 250)
	public String getNewsHeader() {
		return newsHeader;
	}

	public void setNewsHeader(String newsHeader) {
		this.newsHeader = newsHeader;
	}

	@Column(name = "news_description", nullable = false, length = 500)
	public String getNewsDescription() {
		return newsDescription;
	}

	public void setNewsDescription(String newsDescription) {
		this.newsDescription = newsDescription;
	}

	@Temporal(TemporalType.TIME)
	@Column(name = "time", nullable = false, length = 8)
	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "date", nullable = false, length = 10)
	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	@Column(name = "active", nullable = false)
	public int getActive() {
		return active;
	}

	public void setActive(int active) {
		this.active = active;
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

	@Column(name = "cancelled", nullable = false)
	public int getCancelled() {
		return cancelled;
	}

	public void setCancelled(int cancelled) {
		this.cancelled = cancelled;
	}

}
