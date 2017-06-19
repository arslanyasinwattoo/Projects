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
 * Attachments generated by hbm2java
 */
@Entity
@Table(name = "attachments", catalog = "freefay")
public class Attachments implements java.io.Serializable {

	private Long attachmentsId;
	private Users users;
	private String attchmentName;
	private String attachmentDescription;
	private String attachmentLocation;
	private Date date;
	private Date time;
	private Integer blocked;
	private Set<GroupAttachments> groupAttachmentses = new HashSet<GroupAttachments>(
			0);
	private Set<Messages> messageses = new HashSet<Messages>(0);

	public Attachments() {
	}

	public Attachments(Users users, String attchmentName,
			String attachmentDescription, String attachmentLocation) {
		this.users = users;
		this.attchmentName = attchmentName;
		this.attachmentDescription = attachmentDescription;
		this.attachmentLocation = attachmentLocation;
	}

	public Attachments(Users users, String attchmentName,
			String attachmentDescription, String attachmentLocation, Date date,
			Date time, Integer blocked,
			Set<GroupAttachments> groupAttachmentses, Set<Messages> messageses) {
		this.users = users;
		this.attchmentName = attchmentName;
		this.attachmentDescription = attachmentDescription;
		this.attachmentLocation = attachmentLocation;
		this.date = date;
		this.time = time;
		this.blocked = blocked;
		this.groupAttachmentses = groupAttachmentses;
		this.messageses = messageses;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "attachments_id", unique = true, nullable = false)
	public Long getAttachmentsId() {
		return this.attachmentsId;
	}

	public void setAttachmentsId(Long attachmentsId) {
		this.attachmentsId = attachmentsId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumns({
			@JoinColumn(name = "uploader_id", referencedColumnName = "users_id", nullable = false),
			@JoinColumn(name = "uploader_username", referencedColumnName = "username", nullable = false) })
	public Users getUsers() {
		return this.users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

	@Column(name = "attchment_name", nullable = false, length = 45)
	public String getAttchmentName() {
		return this.attchmentName;
	}

	public void setAttchmentName(String attchmentName) {
		this.attchmentName = attchmentName;
	}

	@Column(name = "attachment_description", nullable = false, length = 150)
	public String getAttachmentDescription() {
		return this.attachmentDescription;
	}

	public void setAttachmentDescription(String attachmentDescription) {
		this.attachmentDescription = attachmentDescription;
	}

	@Column(name = "attachment_location", nullable = false, length = 150)
	public String getAttachmentLocation() {
		return this.attachmentLocation;
	}

	public void setAttachmentLocation(String attachmentLocation) {
		this.attachmentLocation = attachmentLocation;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "date", length = 10)
	public Date getDate() {
		return this.date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	@Temporal(TemporalType.TIME)
	@Column(name = "time", length = 8)
	public Date getTime() {
		return this.time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	@Column(name = "blocked")
	public Integer getBlocked() {
		return this.blocked;
	}

	public void setBlocked(Integer blocked) {
		this.blocked = blocked;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "attachments")
	public Set<GroupAttachments> getGroupAttachmentses() {
		return this.groupAttachmentses;
	}

	public void setGroupAttachmentses(Set<GroupAttachments> groupAttachmentses) {
		this.groupAttachmentses = groupAttachmentses;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "attachments")
	public Set<Messages> getMessageses() {
		return this.messageses;
	}

	public void setMessageses(Set<Messages> messageses) {
		this.messageses = messageses;
	}

}
