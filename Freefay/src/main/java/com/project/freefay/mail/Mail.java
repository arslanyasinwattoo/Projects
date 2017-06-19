package com.project.freefay.mail;

import java.io.StringWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.Multipart;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

import org.apache.velocity.Template;
import org.apache.velocity.VelocityContext;
import org.apache.velocity.app.VelocityEngine;
import org.apache.velocity.runtime.RuntimeConstants;
import org.apache.velocity.runtime.resource.loader.ClasspathResourceLoader;
import org.springframework.beans.factory.annotation.Autowired;

import com.project.freefay.entity.MailInfo;

public class Mail {
//	private VelocityEngine velocityEngine;
//
//	public void setVelocityEngine(VelocityEngine velocityEngine) {
//		this.velocityEngine = velocityEngine;
//	}
//	public VelocityEngine getVelocityEngine() {
//		return velocityEngine;
//	}
//arslan
//	private static final String SMTP_HOST_NAME = "smtp.sendgrid.net";
//	private static final String SMTP_AUTH_USER = "aarslanyasinwattoo554";
//	private static final String SMTP_AUTH_PWD = "arslan-03144214002";
//freefrae
	private static final String SMTP_HOST_NAME = "smtp.sendgrid.net";
	private static final String SMTP_AUTH_USER = "ffreefraeunplugged836";
	private static final String SMTP_AUTH_PWD = "freefrae-12345";

	// public static void main(String[] args) throws Exception {
	// new Mail().SendMail();
	// }

	public void SendMail(String username, String[] emailIds, MailInfo info,String Type)
			throws Exception {
		Properties properties = new Properties();
		properties.put("mail.transport.protocol", "smtp");
		properties.put("mail.smtp.host", SMTP_HOST_NAME);
		properties.put("mail.smtp.port", 587);
		properties.put("mail.smtp.auth", "true");

		Authenticator auth = new SMTPAuthenticator();
		Session mailSession = Session.getDefaultInstance(properties, auth);
		System.out.println("in smtp sever");
		String emails = "";
		emails = emailIds[0];
		if (emailIds.length > 1) {
			// emails=emails+",";
			for (int i = 1; i < emailIds.length; i++) {
				emails = emails + "," + emailIds[i];
			}
		}
		MimeMessage message = new MimeMessage(mailSession);
		Multipart multipart = new MimeMultipart("alternative");
		BodyPart part1 = new MimeBodyPart();
		part1.setText("Hi Mr/Mrs " + username + " , " + info.getContent()
				+ " Thank you for using, FreeFrae");
		BodyPart part2 = new MimeBodyPart();
		multipart.addBodyPart(part1);
		// multipart.addBodyPart(part2);
		System.out.println("tempalting-----------");
		// ---------------------------------
		 VelocityEngine ve = new VelocityEngine();
		 ve.setProperty(RuntimeConstants.RESOURCE_LOADER, "classpath");
		 ve.setProperty("classpath.resource.loader.class", ClasspathResourceLoader.class.getName());

		 ve.init();
		/* organize our data */
		Map map = new HashMap();
		map.put("username", username);
		map.put("content", info.getContent());

		/* add that list to a VelocityContext */
		VelocityContext context = new VelocityContext();
		context.put("email", map);
		/* get the Template */
		System.out.println();
		// System.out.println(ve.getLog().);
//		Template t = ve.getTemplate("./src/main/java/com/project/freefay/mailTemplates/verificationTemplate.vm");
		Template t=null;
		if(Type.equalsIgnoreCase("verification")){
		t = ve.getTemplate("com/project/freefay/mailTemplates/verificationTemplate.vm");
		}else{
			t = ve.getTemplate("com/project/freefay/mailTemplates/template.vm");
		}
		//	template.vm
		/* now render the template into a Writer */
		StringWriter writer = new StringWriter();
		t.merge(context, writer);
		System.out.println(writer.toString());

		part2.setContent(writer.toString(), "text/html");
		multipart.addBodyPart(part2);
		// -------------------------------------
		message.setFrom(new InternetAddress(info.getFrom(),"FreeFrae"));
		message.addRecipient(Message.RecipientType.TO, new InternetAddress(
				emails));
		message.setSubject(info.getSubject());
		message.setContent(multipart);
		Transport transport = mailSession.getTransport();
		// Connect the transport object.
		transport.connect();
		// Send the message.
		transport.sendMessage(message, message.getAllRecipients());
		System.out.println("sent");
		// Close the connection.
		transport.close();
	}
}
