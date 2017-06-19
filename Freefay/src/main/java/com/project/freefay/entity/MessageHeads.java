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
 * MessageHeads generated by hbm2java
 */
@Entity
@Table(name = "message_heads", catalog = "freefay")
public class MessageHeads implements java.io.Serializable {

	private Long messageHeadsId;
	private Users usersByFkMessageHeadsUsers2;
	private Users usersByFkMessageHeadsUsers1;
	private Date date;
	private Date time;
	private int blocked;
	private int active;
	private String type;
	private long typeId;
	private String subject;
	private String status;
	private Set<Messages> messageses = new HashSet<Messages>(0);
	private Set<JobDetails> jobDetailses = new HashSet<JobDetails>(0);

	public MessageHeads() {
	}

	public MessageHeads(Users usersByFkMessageHeadsUsers2,
			Users usersByFkMessageHeadsUsers1, Date date, Date time,
			int blocked, int active, String status, String type, long typeId,
			String subject) {
		this.usersByFkMessageHeadsUsers2 = usersByFkMessageHeadsUsers2;
		this.usersByFkMessageHeadsUsers1 = usersByFkMessageHeadsUsers1;
		this.date = date;
		this.time = time;
		this.blocked = blocked;
		this.active = active;
		this.type = type;
		this.status = status;
		this.typeId = typeId;
		this.subject = subject;
	}

	public MessageHeads(Users usersByFkMessageHeadsUsers2,
			Users usersByFkMessageHeadsUsers1, Date date, Date time,
			int blocked, String status, int active, String type, long typeId,
			String subject, Set<Messages> messageses,
			Set<JobDetails> jobDetailses) {
		this.usersByFkMessageHeadsUsers2 = usersByFkMessageHeadsUsers2;
		this.usersByFkMessageHeadsUsers1 = usersByFkMessageHeadsUsers1;
		this.date = date;
		this.time = time;
		this.status = status;
		this.blocked = blocked;
		this.active = active;
		this.type = type;
		this.typeId = typeId;
		this.subject = subject;
		this.messageses = messageses;
		this.jobDetailses = jobDetailses;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "message_heads_id", unique = true, nullable = false)
	public Long getMessageHeadsId() {
		return this.messageHeadsId;
	}

	public void setMessageHeadsId(Long messageHeadsId) {
		this.messageHeadsId = messageHeadsId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumns({
			@JoinColumn(name = "responder_users_id", referencedColumnName = "users_id", nullable = false),
			@JoinColumn(name = "responder_username", referencedColumnName = "username", nullable = false) })
	public Users getUsersByFkMessageHeadsUsers2() {
		return this.usersByFkMessageHeadsUsers2;
	}

	public void setUsersByFkMessageHeadsUsers2(Users usersByFkMessageHeadsUsers2) {
		this.usersByFkMessageHeadsUsers2 = usersByFkMessageHeadsUsers2;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumns({
			@JoinColumn(name = "initiator_users_id", referencedColumnName = "users_id", nullable = false),
			@JoinColumn(name = "initiator_username", referencedColumnName = "username", nullable = false) })
	public Users getUsersByFkMessageHeadsUsers1() {
		return this.usersByFkMessageHeadsUsers1;
	}

	public void setUsersByFkMessageHeadsUsers1(Users usersByFkMessageHeadsUsers1) {
		this.usersByFkMessageHeadsUsers1 = usersByFkMessageHeadsUsers1;
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

	@Column(name = "blocked", nullable = false)
	public int getBlocked() {
		return this.blocked;
	}

	public void setBlocked(int blocked) {
		this.blocked = blocked;
	}

	@Column(name = "active", nullable = false)
	public int getActive() {
		return active;
	}

	public void setActive(int active) {
		this.active = active;
	}

	@Column(name = "type", nullable = false, length = 12)
	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

	@Column(name = "type_id", nullable = false)
	public long getTypeId() {
		return this.typeId;
	}

	public void setTypeId(long typeId) {
		this.typeId = typeId;
	}

	@Column(name = "status", nullable = false, length = 50)
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Column(name = "subject", nullable = false, length = 150)
	public String getSubject() {
		return this.subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "messageHeads")
	public Set<Messages> getMessageses() {
		return this.messageses;
	}

	public void setMessageses(Set<Messages> messageses) {
		this.messageses = messageses;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "messageHeads")
	public Set<JobDetails> getJobDetailses() {
		return this.jobDetailses;
	}

	public void setJobDetailses(Set<JobDetails> jobDetailses) {
		this.jobDetailses = jobDetailses;
	}

}