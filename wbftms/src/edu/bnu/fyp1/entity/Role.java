package edu.bnu.fyp1.entity;

import java.util.List;

public class Role {
	private Long roleId;
	private String userRole;
	private User user;
	private Long userId;
	private List<Role_rights> roleRightslist;

	public Long getRoleId() {
		return roleId;
	}

	public void setRoleId(Long roleId) {
		this.roleId = roleId;
	}

	public String getUserRole() {
		return userRole;
	}

	public void setUserRole(String userRole) {
		this.userRole = userRole;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public List<Role_rights> getRoleRightslist() {
		return roleRightslist;
	}

	public void setRoleRightslist(List<Role_rights> roleRightslist) {
		this.roleRightslist = roleRightslist;
	}

}
