package edu.bnu.fyp1.entity;

public class Role_rights {
	private long role_rights_id;
	private Role role;
	private Screens screens;

	public long getRole_rights_id() {
		return role_rights_id;
	}

	public void setRole_rights_id(long role_rights_id) {
		this.role_rights_id = role_rights_id;
	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	public Screens getScreens() {
		return screens;
	}

	public void setScreens(Screens screens) {
		this.screens = screens;
	}

}
