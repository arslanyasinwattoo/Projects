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
@Table(name = "testimonials", catalog = "freefay")
public class Testimonials implements java.io.Serializable {

	private Long testimonialsId;
	private String testimonialsDescription;
	private Users users;
	private Date time;
	private Date date;
	private int active;

	public Testimonials() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Testimonials(Long testimonialsId, String testimonialsDescription,
			Users users, Date time, Date date, int active) {
		super();
		this.testimonialsId = testimonialsId;
		this.testimonialsDescription = testimonialsDescription;
		this.users = users;
		this.time = time;
		this.date = date;
		this.active = active;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "testimonials_id", unique = true, nullable = false)
	public Long getTestimonialsId() {
		return testimonialsId;
	}

	public void setTestimonialsId(Long testimonialsId) {
		this.testimonialsId = testimonialsId;
	}

	@Column(name = "testimonials_description", nullable = false, length = 500)
	public String getTestimonialsDescription() {
		return testimonialsDescription;
	}

	public void setTestimonialsDescription(String testimonialsDescription) {
		this.testimonialsDescription = testimonialsDescription;
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

}
