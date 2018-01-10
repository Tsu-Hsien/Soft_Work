package Controll;

import java.util.Date;
import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;
import java.util.Properties;
import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

//import db.jdbctomysql;

public class JavaEmail {
	 /*
     * 需要
     * javamail.jar
     * session.jar
     * 如果import是使用Ctrl shift+O，↓這兩個import要修改成這樣，不然它會import到別的
     * import javax.mail.Authenticator;
     * import javax.mail.PasswordAuthentication;
     */
	public String user="anee85319";
	public String pwd="4ni94<3ni";
	public String message;
	public String subject;
	public String to;
	public String from = "anee85319@gmail.com";
	
	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getTo() {
		return to;
	}

	public void setTo(String to) {
		this.to = to;
	}

	public JavaEmail(String message, String subject, String to) {
		super();
		this.message = message;
		this.subject = subject;
		this.to = to;
	}

	public void send(){
	   	try { 
	        String host ="smtp.gmail.com" ;
	        Properties properties = new Properties();
	        properties.put("mail.smtp.host", host);
	        properties.put("mail.smtp.port", "587");
	        properties.put("mail.smtp.auth", "true");
	        properties.put("mail.smtp.starttls.enable", "true");
	        
	        properties.put("mail.smtp.user", user);

	        // creates a new session, no Authenticator (will connect() later)
	        Session session = Session.getDefaultInstance(properties);

	        // creates a new e-mail message
	        Message msg = new MimeMessage(session);

	        msg.setFrom(new InternetAddress(user));
	        InternetAddress[] toAddresses = { new InternetAddress(to) };
	        msg.setRecipients(Message.RecipientType.TO, toAddresses);
	        msg.setSubject(subject);
	        msg.setSentDate(new Date());
	        // set plain text message
	        msg.setText(message);

	        // sends the e-mail
	        Transport t = session.getTransport("smtp");
	        t.connect(user, pwd);
	        t.sendMessage(msg, msg.getAllRecipients());
	        System.out.println("發送成功");
	        t.close();
	    	}catch (Exception ex) {
	           System.out.println("Failed to sent email.");
	           ex.printStackTrace();
	       }
	}

}
