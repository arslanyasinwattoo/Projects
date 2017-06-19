package com.project.freefay.entity;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinColumns;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "token", catalog = "freefay")
public class Token implements java.io.Serializable {
	private Long tokenId;
	private String tokenName;
	private Date date;
	private Date time;
	private Long active;
	private Users users;

	public Token() {

	}

	public Token(Users users, Long tokenId, String tokenName, Date date,
			Date time, Long active) {
		this.users = users;
		this.tokenId = tokenId;
		this.tokenName = tokenName;
		this.date = date;
		this.time = time;
		this.active = active;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "token_id", unique = true, nullable = false)
	public Long getTokenId() {
		return tokenId;
	}

	public void setTokenId(Long tokenId) {
		this.tokenId = tokenId;
	}

	@Column(name = "token_name", nullable = false, length = 50)
	public String getTokenName() {
		return tokenName;
	}

	public void setTokenName(String tokenName) {
		this.tokenName = tokenName;
	}

	@Column(name = "active", nullable = false, length = 1)
	public Long getActive() {
		return active;
	}

	public void setActive(Long active) {
		this.active = active;
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

}
