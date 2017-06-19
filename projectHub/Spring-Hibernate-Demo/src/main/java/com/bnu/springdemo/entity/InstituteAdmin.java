package com.bnu.springdemo.entity;

import static javax.persistence.GenerationType.IDENTITY;

import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * InstituteAdmin generated by hbm2java
 */
@Entity
@Table(name = "institute_admin", catalog = "projectinformationsharingsystem")
public class InstituteAdmin implements java.io.Serializable {

	
	private Integer instituteAdminId;
	private Users users;
	private Institute institute;

	public InstituteAdmin() {
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "institute_admin_id", unique = true, nullable = false)
	public Integer getInstituteAdminId() {
		return this.instituteAdminId;
	}

	public void setInstituteAdminId(Integer instituteAdminId) {
		this.instituteAdminId = instituteAdminId;
	}

	
	public InstituteAdmin(Users users, Institute institute) {
		this.users = users;
		this.institute = institute;
	}

	@EmbeddedId
	@AttributeOverrides({
			@AttributeOverride(name = "username", column = @Column(name = "username", nullable = false, length = 45)),
			@AttributeOverride(name = "instituteId", column = @Column(name = "institute_id", nullable = false)) })


	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "username", nullable = false, insertable = false, updatable = false)
	public Users getUsers() {
		return this.users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "institute_id", nullable = false, insertable = false, updatable = false)
	public Institute getInstitute() {
		return this.institute;
	}

	public void setInstitute(Institute institute) {
		this.institute = institute;
	}

}