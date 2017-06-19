package com.project.freefay.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Controller;

import com.project.freefay.entity.CompanyNotification;
import com.project.freefay.entity.MailInfo;
import com.project.freefay.entity.Users;
import com.project.freefay.entity.Usersp;
import com.project.freefay.mail.Mail;
import com.project.freefay.service.UserService;
import com.project.freefay.service.UserServicep;
import com.project.freefay.util.DateTimeUtil;

/**
 * @author Arslanyasinwattoo OCT 28, 2015
 */

@Controller
@EnableScheduling
public class UserController {
	@Autowired
	private UserService userService;

	// sending mail on daily bases based on company notifications and birthdays
	@Scheduled(fixedRate = (((1000*60)*60)*24))
	public void scheduleFixedRateTask() {
		System.out.println("Fixed rate task - " + System.currentTimeMillis()
				/ 1000);
		Users users = new Users();
		List<CompanyNotification> list = new ArrayList<>();
		List<Users> userspList = new ArrayList<>();
		List<Users> usersList = new ArrayList<>();

		Date date = new Date();

		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd");

		System.out
				.println("DAY " + simpleDateFormat.format(date).toUpperCase());

		SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("MM");
		System.out.println("MONTH "
				+ simpleDateFormat2.format(date).toUpperCase());
		UserServicep userServicep = new UserServicep();
		String birthday = "%-" + simpleDateFormat2.format(date) + "-"
				+ simpleDateFormat.format(date);
		try {
			System.out.println(birthday);
			userspList = userService.getUserBirthdays(birthday);
			for (Users usersp : userspList) {
				MailInfo info = new MailInfo();
				info.setFrom("noReply@freefrae.com");
				info.setSubject("HappyBirthday");
				info.setContent("May your blessings always exceed your age. Enjoy your birthday, and may you have many more to come");
				// System.out.println(token.getTokenName());

				System.out.println("going to send mail");
				String[] emails = { usersp.getEmailId() };

				Mail mail = new Mail();
				try {
					mail.SendMail(usersp.getId().getUsername(), emails, info,
							"birthday");
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				}
			}
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		DateTimeUtil util = new DateTimeUtil();
		// simpleDateFormat = new SimpleDateFormat("YYYY");
		// System.out.println("YEAR "
		// + simpleDateFormat.format(date).toUpperCase());
		try {
			list = userService
					.getTodaysNotification(util.converToSQLDate(date));
			usersList = userService.getAllUsersForNotification();

			for (CompanyNotification notification : list) {
				System.out.println("notification"
						+ notification.getNotificationType());
				CompanyNotification companyNotification = new CompanyNotification();
				companyNotification = notification;
				for (Users users2 : usersList) {
					System.out.println("useremail" + users2.getEmailId());
					MailInfo info = new MailInfo();
					info.setFrom("noReply@freefrae.com");
					info.setSubject(companyNotification
							.getNotificationSubject());
					info.setContent(companyNotification.getDescription());
					// System.out.println(token.getTokenName());

					System.out.println("going to send mail");
					String[] emails = { users2.getEmailId() };

					Mail mail = new Mail();
					try {
						if (companyNotification.getActive() != 0) {
							mail.SendMail(users2.getId().getUsername(), emails,
									info, notification.getNotificationType());
						}
						companyNotification.setActive(0);
						userService.addCompanyNotification(companyNotification);
					} catch (Exception e) {
						// TODO: handle exception
						e.printStackTrace();
					}

				}

			}
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		System.out.println("sent");

	}
//===============LongPolling for chatting
	
	
}
