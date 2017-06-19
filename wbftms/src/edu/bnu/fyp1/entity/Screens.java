package edu.bnu.fyp1.entity;

import java.util.List;

public class Screens {
	private long screens_id;
	private String screen_name;
	private List<Role_rights> role_rightslist;

	public long getScreens_id() {
		return screens_id;
	}

	public void setScreens_id(long screens_id) {
		this.screens_id = screens_id;
	}

	public String getScreen_name() {
		return screen_name;
	}

	public void setScreen_name(String screen_name) {
		this.screen_name = screen_name;
	}

	public List<Role_rights> getRole_rightslist() {
		return role_rightslist;
	}

	public void setRole_rightslist(List<Role_rights> role_rightslist) {
		this.role_rightslist = role_rightslist;
	}

}
