/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

/**
 *
 * @author Administrator
 */
public class sendEmail {

    public static void sendEmail(String to, String from, String pass,
            String subject, String body,String contacper) {
        try {
            Properties props = System.getProperties();
            props.put("mail.smtp.host", "smtp.gmail.com");
            props.put("mail.smtp.port", "587");
            props.put("mail.smtp.starttls.enable", "true");
            final String login = from;
            final String pwd = pass;
            Authenticator pa = null;
            if (login != null && pwd != null) {
                props.put("mail.smtp.auth", "true");
                pa = new Authenticator() {

                    @Override
                    public PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(login, pwd);
                    }
                };
            }
            Session session = Session.getInstance(props, pa);
            Message msg = new MimeMessage(session);
            msg.setFrom(new InternetAddress(from));

            msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to, false));

            msg.setSubject(subject);
            BodyPart messageBodyPart = new MimeBodyPart();
            DateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy   hh:mm aa");
            Date date = new Date();
            String day = dateFormat.format(date);
            String content = body + "<br><br><br>" + "<b>" + "<hr>" + "From : " + contacper + "<br><br>" + day + "</b>"
                    + "<br><br><img src=\"http://newdartagnan.com/uploads/startups/small_image/medium/smartshop.png\" width=\"420\" height=\"236\">";
            messageBodyPart.setContent(content, "text/html; charset=UTF-8");
            Multipart multipart = new MimeMultipart();
            multipart.addBodyPart(messageBodyPart);
            msg.setContent(multipart);
            msg.setHeader("X-Mailer", "LOTONtechEmail");
            msg.setSentDate(new Date());
            msg.saveChanges();
            Transport.send(msg);
        } catch (Exception ex) {
            System.out.println(ex);
        }

    }
}
