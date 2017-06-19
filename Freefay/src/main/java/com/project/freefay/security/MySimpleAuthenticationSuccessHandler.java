package com.project.freefay.security;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.WebAttributes;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.savedrequest.DefaultSavedRequest;

import com.project.freefay.entity.UserDuration;
import com.project.freefay.entity.Users;
import com.project.freefay.entity.UsersId;
import com.project.freefay.service.UserService;
import com.project.freefay.util.DateTimeUtil;

public class MySimpleAuthenticationSuccessHandler implements
		AuthenticationSuccessHandler {
	@Autowired
	private UserService userService;
	private RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request,
			HttpServletResponse response, Authentication authentication)
			throws IOException {
		Users user = new Users();
		UserDuration duration = new UserDuration();
		UsersId id = new UsersId();
		Date date = new Date();
		String url = "";
		request.getSession().setMaxInactiveInterval(60 * 60 * 24);
		DateTimeUtil util = new DateTimeUtil();
		// Authentication auth = SecurityContextHolder.getContext()
		// .getAuthentication();
		//
		System.out.println(authentication.getName());
		id.setUsername(authentication.getName());
		List<Users> users2 = new ArrayList<>();
		try {
			users2 = userService.getUserIds(id.getUsername());
			for (Users users : users2) {
				System.out.println(users.getId().getUsersId());
				id.setUsersId(users.getId().getUsersId());
				System.out.println(users.getFirstName());
				user.setFirstName(users.getFirstName());
				user = users;
			}
			user.setId(id);
			user.setActive(1);
			userService.addUsers(user);
			duration.setLoginDate(util.converToSQLDate(date));
			duration.setLoginTime(util.converToSQLTime(date));
			duration.setUsers(user);
			userService.addlogindt(duration);

			System.out.println("firstName=" + user.getFirstName());
			if (user.getFirstName().equals("null")) {
				url = "/public/completeProfile.io";
				System.out.println("in completeprofile");
			} else {
				url = "/public/home.io";
				System.out.println("in home");
			}
			System.out.println("url=" + url);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		DefaultSavedRequest defaultSavedRequest = (DefaultSavedRequest) request
				.getSession().getAttribute("SPRING_SECURITY_SAVED_REQUEST_KEY");
		String requestUrl = "";
		if (defaultSavedRequest != null) {
			requestUrl = defaultSavedRequest.getRequestURL() + "?"
					+ defaultSavedRequest.getQueryString();

			System.out.println("defaultSavedRequest--" + requestUrl);
		}
		System.out.println("true--------" + defaultSavedRequest);
		// if (request.getRequestURI() != null) {
		// url = request.getRequestURI();
		// System.out.println("checking requesturi" + url);
		// }

		redirectStrategy.sendRedirect(request, response, requestUrl);
		clearAuthenticationAttributes(request);
	}

	// protected void handle(HttpServletRequest request,
	// HttpServletResponse response, Authentication authentication)
	// throws IOException {
	//
	//
	// // String targetUrl = determineTargetUrl(authentication);
	//
	// // if (response.isCommitted()) {
	// //
	// logger.debug("Response has already been committed. Unable to redirect to "
	// // + targetUrl);
	// // return;
	// // }
	//
	// // redirectStrategy.sendRedirect(request, response, targetUrl);
	// }
	//
	// /**
	// * Builds the target URL according to the logic defined in the main class
	// * Javadoc.
	// */
	// protected String determineTargetUrl(Authentication authentication) {
	// boolean isUser = false;
	// boolean isAdmin = false;
	// Collection<? extends GrantedAuthority> authorities = authentication
	// .getAuthorities();
	// for (GrantedAuthority grantedAuthority : authorities) {
	// if (grantedAuthority.getAuthority().equals("ROLE_USER")) {
	// isUser = true;
	// break;
	// } else if (grantedAuthority.getAuthority().equals("ROLE_ADMIN")) {
	// isAdmin = true;
	// break;
	// }
	// }
	//
	// if (isUser) {
	// return "/homepage.html";
	// } else if (isAdmin) {
	// return "/console.html";
	// } else {
	// throw new IllegalStateException();
	// }
	// }

	protected void clearAuthenticationAttributes(HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		if (session == null) {
			return;
		}
		session.removeAttribute(WebAttributes.AUTHENTICATION_EXCEPTION);
	}

}
