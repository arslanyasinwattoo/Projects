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
@Table(name = "static", catalog = "freefay")
public class Static implements java.io.Serializable {
	private long staticId;
	private Date date;
	private Date time;
	private int active;
	private Users users;
	private String staticName;
	private String description;

	public Static() {

	}

	public Static(Users users, Long staticId, Date date, Date time, int active,
			String staticName, String description) {
		this.users = users;
		this.staticId = staticId;
		this.date = date;
		this.time = time;
		this.active = active;
		this.staticName = staticName;
		this.description = description;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "static_id", unique = true, nullable = false)
	public long getStaticId() {
		return staticId;
	}

	public void setStaticId(long staticId) {
		this.staticId = staticId;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "date", nullable = false, length = 10)
	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	@Temporal(TemporalType.TIME)
	@Column(name = "time", nullable = false, length = 8)
	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	@Column(name = "active", nullable = false, length = 1)
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

	@Column(name = "static_name", nullable = false, length = 50)
	public String getStaticName() {
		return staticName;
	}

	public void setStaticName(String staticName) {
		this.staticName = staticName;
	}

	@Column(name = "description", nullable = false, length = 50000)
	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

}
