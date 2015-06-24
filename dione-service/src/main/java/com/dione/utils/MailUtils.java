package com.dione.utils;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

class MailUtils {

	public static void main(String[] args) {
		String to = "ravikumar_kuppusamy@mastercard.com";
		String subject = "Test mail from mail utility";
		String content = "No mail..";
		sendMail(to, subject, content);
	}

	public static void sendMail(String to, String subject, String content) {

		final String SMTP_HOST = "smtp.gmail.com";
		final String SMTP_USER = "eopnotify@gmail.com";
		final String SMTP_PORT = "587";
		final String SMTP_AUTH_ENABLED = "true";
		final String SMTP_CONTENT_TYPE = "text/html";
		final String SMTP_STARTTLS_ENABLED = "true";

		Properties properties = System.getProperties();
		properties.put("mail.smtp.auth", SMTP_AUTH_ENABLED);
		properties.put("mail.smtp.starttls.enable", SMTP_STARTTLS_ENABLED);
		properties.put("mail.smtp.host", SMTP_HOST);
		properties.put("mail.smtp.port", SMTP_PORT);

//		Session session = Session.getInstance(properties);
		Session session = Session.getInstance(properties,
				new javax.mail.Authenticator() {
					protected PasswordAuthentication getPasswordAuthentication() {
						return new PasswordAuthentication(SMTP_USER, "c0de!review");
					}
				});

		try {
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress(SMTP_USER));
			message.setRecipients(Message.RecipientType.TO,
					InternetAddress.parse(to));
			message.setSubject(subject);
			message.setContent(content, SMTP_CONTENT_TYPE);
			Transport.send(message);
			System.out.println("message sent....");
		} catch (MessagingException ex) {
			ex.printStackTrace();
		}
	}

}
