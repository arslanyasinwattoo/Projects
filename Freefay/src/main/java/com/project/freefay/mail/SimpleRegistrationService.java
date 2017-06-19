//package com.project.freefay.mail;
//
//import java.util.HashMap;
//import java.util.Map;
//
//import javax.mail.internet.MimeMessage;
//
//import org.apache.velocity.app.VelocityEngine;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.context.ApplicationContext;
//import org.springframework.context.support.ClassPathXmlApplicationContext;
//import org.springframework.mail.javamail.JavaMailSender;
//import org.springframework.mail.javamail.MimeMessageHelper;
//import org.springframework.mail.javamail.MimeMessagePreparator;
//import org.springframework.ui.velocity.VelocityEngineUtils;
//
//import com.project.freefay.entity.Users;
//
//public class SimpleRegistrationService {
//	private JavaMailSender mailSender;
//	private VelocityEngine velocityEngine;
//
//	public JavaMailSender getMailSender() {
//		return mailSender;
//	}
//
//	@Autowired
//	public void setMailSender(JavaMailSender mailSender) {
//		this.mailSender = mailSender;
//	}
//
//	public VelocityEngine getVelocityEngine() {
//		return velocityEngine;
//	}
//
//	@Autowired
//	public void setVelocityEngine(VelocityEngine velocityEngine) {
//		this.velocityEngine = velocityEngine;
//	}
//
//	public void verificationMail(Users user) {
//
//		sendConfirmationEmail(user);
//	}
//
//	private void sendConfirmationEmail(final Users user) {
////		ApplicationContext context = new ClassPathXmlApplicationContext(
////				"applicationContext.xml");
//
////		SimpleRegistrationService mm = (SimpleRegistrationService) context
////				.getBean("simpleRegistrationService");
//		MimeMessagePreparator preparator = new MimeMessagePreparator() {
//			@Override
//			public void prepare(MimeMessage mimeMessage) throws Exception {
//				MimeMessageHelper message = new MimeMessageHelper(mimeMessage);
//				message.setTo(user.getEmailId());
//				message.setFrom("arslanyasinwattoo@gmail.com"); // could be
//				// parameterized...
//				Map<String, Users> model = new HashMap<String, Users>();
//				model.put("user", user);
//				String text = VelocityEngineUtils.mergeTemplateIntoString(
//						velocityEngine, "template.vm", model);
//				message.setText(text, true);
//
//			}
//
//		};
//
//		this.mailSender.send(preparator);
//	}
//}