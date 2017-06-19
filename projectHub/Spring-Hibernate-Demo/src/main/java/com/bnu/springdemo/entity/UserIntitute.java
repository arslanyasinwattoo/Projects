package com.bnu.springdemo.entity;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * UserIntitute generated by hbm2java
 */
@Entity
@Table(name = "user_intitute", catalog = "projectinformationsharingsystem")
public class UserIntitute implements java.io.Serializable {

	private Long userIntituteId;
	private Users users;
	private Institute institute;

	public UserIntitute() {
	}

	public UserIntitute(Users users, Institute institute) {
		this.users = users;
		this.institute = institute;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "user_intitute_id", unique = true, nullable = false)
	public Long getUserIntituteId() {
		return this.userIntituteId;
	}

	public void setUserIntituteId(Long userIntituteId) {
		this.userIntituteId = userIntituteId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "username", nullable = false)
	public Users getUsers() {
		return this.users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "institute_id", nullable = false)
	public Institute getInstitute() {
		return this.institute;
	}

	public void setInstitute(Institute institute) {
		this.institute = institute;
	}

}