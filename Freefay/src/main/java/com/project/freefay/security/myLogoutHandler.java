package com.project.freefay.security;
 
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserCache;
import org.springframework.security.web.authentication.logout.LogoutHandler;

import com.project.freefay.entity.UserDuration;
import com.project.freefay.entity.Users;
import com.project.freefay.entity.UsersId;
import com.project.freefay.service.UserService;
import com.project.freefay.util.DateTimeUtil;

public class myLogoutHandler implements LogoutHandler {
	private UserCache userCache;
	@Autowired
	private UserService userService;

	public void logout(final HttpServletRequest request,
			final HttpServletResponse response,
			final Authentication authentication) {
		// ....
		Users user = new Users();
		UserDuration duration = new UserDuration();
		UsersId id = new UsersId();
		Date date = new Date();
		DateTimeUtil util = new DateTimeUtil();
		System.out.println(authentication.getName());
		id.setUsername(authentication.getName());
		List<Users> users2 = new ArrayList<>();
		try {
			users2 = userService.getUserIds(id.getUsername());
			for (Users users : users2) {
				System.out.println(users.getId().getUsersId());
				id.setUsersId(users.getId().getUsersId());
				user = users;

			}
			user.setId(id);
			List<UserDuration> durations = new ArrayList<>();
			duration.setUsers(user);
			durations = userService.getUserDuration(duration);
			for (UserDuration userDuration : durations) {
				System.out.println(duration.getUsers().getId().getUsername());
				duration.setLoginDate(userDuration.getLoginDate());
				duration.setLoginTime(userDuration.getLoginTime());
				duration.setUserDurationId(userDuration.getUserDurationId());
			}
			duration.setLogoutDate(util.converToSQLDate(date));
			duration.setLogoutTime(util.converToSQLTime(date));
			duration.setUsers(user);
			userService.addlogindt(duration);
			user.setActive(0);
			userService.addUsers(user);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
