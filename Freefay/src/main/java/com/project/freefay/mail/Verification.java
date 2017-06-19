package com.project.freefay.mail;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import com.sun.org.apache.xml.internal.security.utils.Base64;

public class Verification {
	public String token(String username) {
		String token = null;
		MessageDigest md;
		try {
			md = MessageDigest.getInstance("SHA-1");

			md.update(username.getBytes());

			byte byteData[] = md.digest();
			token = Base64.encode(byteData);
			System.out.println(token);

		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return token;

	}
}
