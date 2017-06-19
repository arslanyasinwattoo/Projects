package com.project.freefay.mail;

import javax.mail.PasswordAuthentication;

public class SMTPAuthenticator extends javax.mail.Authenticator {
	public PasswordAuthentication getPasswordAuthentication() {
		// arslan
		// String username = "aarslanyasinwattoo554";
		// String password = "arslan-03144214002";
		// freefrae
		String username = "ffreefraeunplugged836";
		String password = "freefrae-12345";
		return new PasswordAuthentication(username, password);
	}
}