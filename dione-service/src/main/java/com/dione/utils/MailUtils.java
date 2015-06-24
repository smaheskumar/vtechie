package com.dione.utils;

import java.util.*;  
import javax.mail.*;  
import javax.mail.internet.*;  
import javax.activation.*;  
  
class MailUtils  
{  
   public static void sendMail(String to,String subject,String content)  
   {  
  
      final String SMTP_HOST="dtl.mailhost.mastercard.int";
      final String SMTP_USER="no_reply@devcloud.mastercard.int";
      final String SMTP_PORT="587";
      final String SMTP_AUTH_ENABLED="false";
      final String SMTP_CONTENT_TYPE="text/html";
      final String SMTP_STARTTLS_ENABLED="false";
  
      Properties properties = System.getProperties();  
      properties.put("mail.smtp.auth", SMTP_AUTH_ENABLED);
      properties.put("mail.smtp.starttls.enable", SMTP_STARTTLS_ENABLED);
      properties.put("mail.smtp.host", SMTP_HOST);
      properties.put("mail.smtp.port",SMTP_PORT);

      Session session = Session.getInstance(properties);
      /*Session session = Session.getInstance(props,
			  new javax.mail.Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(SMTP_USER, password);
				}
			  });*/
      
      try{  
         MimeMessage message = new MimeMessage(session);  
         message.setFrom(new InternetAddress(SMTP_USER));  
         message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(to));  
         message.setSubject(subject);
         message.setContent(content,SMTP_CONTENT_TYPE);  
         Transport.send(message);  
         System.out.println("message sent....");  
      }catch (MessagingException ex) {
    	  ex.printStackTrace();
      }  
   }  
   
}  
