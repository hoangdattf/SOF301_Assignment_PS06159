/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.awt.Desktop;
import java.io.File;
import java.io.FileOutputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.itextpdf.text.Chunk;
import com.itextpdf.text.Document;
import com.itextpdf.text.Image;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.Rectangle;
import com.itextpdf.text.pdf.PdfContentByte;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import com.itextpdf.text.pdf.draw.VerticalPositionMark;
import com.sun.swing.internal.plaf.basic.resources.basic;
import java.awt.Desktop;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import javafx.scene.text.Text;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import com.itextpdf.text.pdf.draw.VerticalPositionMark;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Image;
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
public class Customers {
    
    public Customers() {
    }
    
    public boolean checkLogin(String user, String pass) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=AssignmentSOF301";
            Connection con = DriverManager.getConnection(url, "sa", "12345");
            String sql = "Select * from Customers where Username=? and Password=? and delstatus=0";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, user);
            stm.setString(2, pass);
            ResultSet rs = stm.executeQuery();
            boolean exist = false;
            exist = rs.next();
            rs.close();
            stm.close();
            con.close();
            if (exist) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
    
    public void addcustome(String usname, String pw, String name, String email) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=AssignmentSOF301";
            Connection con = DriverManager.getConnection(url, "sa", "12345");
            String sql = "Insert into Customers values(?,?,?,?,?,?)";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, usname);
            stm.setString(2, pw);
            stm.setString(3, name);
            stm.setString(4, "1");
            stm.setString(5, email);
            stm.setString(6, "0");
            stm.executeUpdate();
            stm.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public List<Customer> showcus(String usname) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=AssignmentSOF301";
            Connection con = DriverManager.getConnection(url, "sa", "12345");
            String sql = "select Username, Password, Gioitinh, Hoten, Emai,Phone, DiaChi from Customers where delstatus=0 and Role =1";
            if (usname.length() > 0) {
                sql += " and Username like '%" + usname + "%'";
            }
            Statement stm = con.createStatement();
            ResultSet rs = stm.executeQuery(sql);
            String gender = "";
            List<Customer> list = new ArrayList<Customer>();
            while (rs.next()) {
                String usn = rs.getString(1);
                String pw = rs.getString(2);
                if (rs.getBoolean(3) == true) {
                    gender = "Male";
                } else {
                    gender = "Female";
                }
                String name = rs.getString(4);
                String email = rs.getString(5);
                String phone = rs.getString(6);
                String diachia = rs.getString(7);
                Customer cus = new Customer(usn, pw, gender, name, email, phone, diachia);
                list.add(cus);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    
    public void delete(String username) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=AssignmentSOF301";
            Connection con = DriverManager.getConnection(url, "sa", "12345");
            String sql = "Update Customers Set delstatus=1 where Username=?";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, username);
            stm.executeUpdate();
            stm.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public void update(String user, String pass, boolean gen, String name, String email, String phone, String address) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=AssignmentSOF301";
            Connection con = DriverManager.getConnection(url, "sa", "12345");
            String sql = "update Customers set Password=?,Gioitinh=?,Hoten=?,Emai= ?,Phone= ?,Diachi= ? where Username=?";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, pass);
            stm.setBoolean(2, gen);
            stm.setString(3, name);
            stm.setString(4, email);
            stm.setString(5, phone);
            stm.setString(6, address);
            stm.setString(7, user);
            stm.executeUpdate();
            stm.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public String getHoten(String user) {
        String hoten = "";
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=AssignmentSOF301";
            Connection con = DriverManager.getConnection(url, "sa", "12345");
            String sql = "Select * from Customers where Username=? and delstatus=0";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, user);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                hoten = rs.getString(3);
            }
            stm.close();
            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return hoten;
    }
    
    public String getEmail(String mail) {
        String email = "";
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=AssignmentSOF301";
            Connection con = DriverManager.getConnection(url, "sa", "12345");
            String sql = "Select * from Customers where Username=? and delstatus=0";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, mail);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                mail = rs.getString(6);
            }
            stm.close();
            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return mail;
    }
    
    public String getPhone(String phonenum) {
        String phone = "";
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=AssignmentSOF301";
            Connection con = DriverManager.getConnection(url, "sa", "12345");
            String sql = "Select * from Customers where Username=? and delstatus=0";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, phonenum);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                phone = rs.getString(7);
            }
            stm.close();
            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return phone;
    }
    
    public String getAddr(String Addr) {
        String address = "";
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=AssignmentSOF301";
            Connection con = DriverManager.getConnection(url, "sa", "12345");
            String sql = "Select * from Customers where Username=? and delstatus=0";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, Addr);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                address = rs.getString(6);
            }
            stm.close();
            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return address;
    }
    
    public void updatebillstatus(String idbill) {
        String address = "";
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=AssignmentSOF301";
            Connection con = DriverManager.getConnection(url, "sa", "12345");
            String sql = "Update bills set statusbill = 'True' where id_hd = ?";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, idbill);
            stm.executeUpdate();
            stm.close();
            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
    public static final String IMAGE = "C:\\Users\\Administrator\\Documents\\NetBeansProjects\\SOF301_Assignment_PS06159\\web\\images\\logo3.jpg";
    
    public String inbill(String customername, String customeradd, String customerphone, String customeremail, String idbill, String orderdate, String payment) {
        String dest = "C:\\Users\\Public\\Desktop\\" + idbill + ".pdf";
        try {
            Document document = new Document();
            PdfWriter.getInstance(document, new FileOutputStream(dest));
            document.open();
            
            PdfPTable table = new PdfPTable(3);
            table.setWidthPercentage(100);
            Image img = Image.getInstance(IMAGE);
            img.scaleAbsolute(90f, 90f);
            table.addCell(getCellimg(img, PdfPCell.ALIGN_LEFT));
            table.addCell(getCell("\n \n \n \n"
                    + "FROM: Smart Shop \n"
                    + "Address:17 Giai Phong HCM \n"
                    + "Tel:0925489239\n"
                    + "Website:smartshop.com \n \n", PdfPCell.ALIGN_LEFT));
            table.addCell(getCell("Invoice: #" + idbill + " \n"
                    + "Order Date: " + orderdate + "\n \n"
                    + "TO: " + customername + " \n"
                    + "Address: " + customeradd + "\n"
                    + "Phone Number: " + customerphone + " \n"
                    + "Email: " + customeremail + "\n"
                    + "Payment method: " + payment + "\n \n", PdfPCell.ALIGN_LEFT));
            document.add(table);
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=AssignmentSOF301";
            Connection con = DriverManager.getConnection(url, "sa", "12345");
            String sql = " SELECT  billdetails.Code, Name , Products.Price, billdetails.quantity as 'Quantity'\n"
                    + "FROM        billdetails INNER JOIN\n"
                    + "                      Products ON billdetails.Code = Products.Code where id_hd = '" + idbill + "'";
            Statement stm = con.createStatement();
            ResultSet rs = stm.executeQuery(sql);
            ResultSetMetaData rdata = rs.getMetaData();
            int Cot = rdata.getColumnCount();
            PdfPTable tables = new PdfPTable(Cot + 1);
            tables.setWidthPercentage(100);
            for (int i = 1; i <= Cot + 1; i++) {
                if (i == Cot + 1) {
                    tables.addCell("Sub Total");
                } else {
                    tables.addCell(rdata.getColumnName(i));
                }
                
            }
            int stt = 0;
            int total = 0;
            while (rs.next()) {
                stt = rs.getInt(3) * rs.getInt(4);
                total = total + stt;
                for (int j = 1; j <= Cot + 1; j++) {
                    if (j == Cot + 1) {
                        tables.addCell(String.valueOf(stt));
                    } else {
                        tables.addCell(rs.getString(j));
                    }
                    
                }
            }
            for (int i = 1; i <= Cot + 1; i++) {
                if (i < Cot) {
                    tables.addCell("");
                } else if (i == Cot) {
                    tables.addCell("Total: ");
                } else {
                    tables.addCell(String.valueOf(total));
                }
            }
            stm.close();
            con.close();
            document.add(tables);
            document.close();
            if (Desktop.isDesktopSupported()) {
                File myFile = new File(dest);
                Desktop.getDesktop().open(myFile);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return dest;
    }
    
    public PdfPCell getCell(String text, int alignment) {
        PdfPCell cell = new PdfPCell(new Phrase(text));
        cell.setPadding(0);
        cell.setHorizontalAlignment(alignment);
        cell.setBorder(PdfPCell.NO_BORDER);
        return cell;
    }
    
    public PdfPCell getCellimg(Image img, int alignment) {
        PdfPCell cell = new PdfPCell(new Image(img) {
        });
        cell.setPadding(0);
        cell.setHorizontalAlignment(alignment);
        cell.setBorder(PdfPCell.NO_BORDER);
        return cell;
    }
    
    public static void sendEmailwithpdf(String to, String from, String pass,
            String subject, String body, String contacper, String file) {
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
            MimeBodyPart attachment = new MimeBodyPart();
            File filez = new File(file);
            attachment.attachFile(filez);
            multipart.addBodyPart(attachment);
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
