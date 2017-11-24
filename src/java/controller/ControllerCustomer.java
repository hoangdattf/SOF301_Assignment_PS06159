/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import cart.CartBean;
import cart.ProductDTO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import javax.mail.Session;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Customer;
import model.Customers;
import model.Products;
import model.sendEmail;

/**
 *
 * @author Administrator
 */
public class ControllerCustomer extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String action = request.getParameter("action");
            if (action.equals("SIGN IN")) {
                String user = request.getParameter("txtUsername");
                String pass = request.getParameter("txtPassword");
                String eror = "Username or Password is Invalid";
                Customers cus = new Customers();
                boolean exist = cus.checkLogin(user, pass);
                HttpSession session = request.getSession(true);
                String url = "index.jsp";
                if (exist) {
                    HttpSession sesson = request.getSession(true);
                    sesson.setAttribute("USER", user);
                    session.setAttribute("checkin", "imin");
                    session.removeAttribute("Error");
                    String act = request.getParameter("action");
                    if (act.equals("getinfo")) {
                        url = "ControllerCartBean?action=getinfo";
                    }
                    RequestDispatcher rd = request.getRequestDispatcher(url);
                    rd.forward(request, response);
                } else {
                    session.setAttribute("Error", eror);
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('User or password incorrect');");
                    out.println("location='index.jsp';");
                    out.println("</script>");
                }
            } else if (action.equals("REGISTER NOW")) {
                String un = request.getParameter("txtun");
                String fn = request.getParameter("txtfn");
                String pw = request.getParameter("pw");
                String mail = request.getParameter("txtemail");
                Customers sp = new Customers();
                sp.addcustome(un, pw, fn, mail);
                RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                rd.forward(request, response);
            } else if (action.equals("Search")) {
                HttpSession session = request.getSession(true);
                String usn = request.getParameter("txtsearch");
                session.removeAttribute("listcus");
                Customers cuz = new Customers();
                List<Customer> list = new ArrayList<Customer>();
                list = cuz.showcus(usn);
                session.setAttribute("listcus", list);
                RequestDispatcher rd = request.getRequestDispatcher("usermanage.jsp");
                rd.forward(request, response);
            } else if (action.equals("Delete")) {
                String keysearch = request.getParameter("txtsearch");
                String usnam = request.getParameter("usdel");
                Customers cs = new Customers();
                cs.delete(usnam);
                String url = "ControllerCustomer?action=Search&txtsearch=" + keysearch;
                RequestDispatcher rd = request.getRequestDispatcher(url);
                rd.forward(request, response);
            } else if (action.equals("Update")) {
                String user = request.getParameter("txtun");
                String pass = request.getParameter("txtpw");
                String name = request.getParameter("fn");
                String keysearch = request.getParameter("txtsearch");
                boolean gen;
                String gt = request.getParameter("txtgioitinh");
                if (gt.equals("Male")) {
                    gen = true;
                } else {
                    gen = false;
                }
                String email = request.getParameter("txtemail");
                String phone = request.getParameter("txtphones");
                String address = request.getParameter("txtdiachi");
                Customers cu = new Customers();
                cu.update(user, pass, gen, name, email, phone, address);
                String url = "ControllerCustomer?action=Search&txtsearch=" + keysearch;
                RequestDispatcher rd = request.getRequestDispatcher(url);
                rd.forward(request, response);
            } else if (action.equals("Update Info")) {
                String user = request.getParameter("txtun");
                String pass = request.getParameter("txtpw");
                String name = request.getParameter("fn");
                boolean gen;
                String gt = request.getParameter("txtgioitinh");
                if (gt.equals("Male")) {
                    gen = true;
                } else {
                    gen = false;
                }
                String email = request.getParameter("txtemail");
                String phone = request.getParameter("txtphone");
                String address = request.getParameter("txtdiachi");
                Customers cu = new Customers();
                cu.update(user, pass, gen, name, email, phone, address);
                RequestDispatcher rd = request.getRequestDispatcher("userprofile.jsp");
                rd.forward(request, response);
            } else if (action.equals("Logout")) {
                HttpSession sesson = request.getSession(true);
                sesson.setAttribute("checkin", "imout");
                sesson.setAttribute("USER", null);
                response.sendRedirect("index.jsp");
            } else if (action.equals("Complete")) {
                HttpSession session = request.getSession(true);
                String url = "search.jsp";
                if (session.getAttribute("checkin").equals("imin")) {
                    String user = (String) session.getAttribute("USER");
                    Customers cus = new Customers();
                    String name = cus.getHoten(user);
                    String phone = cus.getPhone(user);
                    String addr = cus.getAddr(user);
                    String mail = cus.getEmail(user);
                    String payment = request.getParameter("sex");
                    CartBean cart = (CartBean) session.getAttribute("SHOP");
                    ArrayList<ProductDTO> ds = cart.getCartBeanList();
                    for (ProductDTO sp : ds) {
                        String code = sp.getSanpham().getCode();
                        int quanti = sp.getQuantity();
                        Products sz = new Products();
                        sz.insertbill(name, phone, addr, mail, payment, code, quanti);
                    }
                    url = "finish.jsp";
                } else {
                    String mail = (String) session.getAttribute("bmail");
                    String name = (String) session.getAttribute("bname");
                    String addr = (String) session.getAttribute("badd");
                    String phone = (String) session.getAttribute("bphone");
                    String payment = request.getParameter("sex");
                    System.out.println(mail);
                    System.out.println(name);
                    System.out.println(addr);
                    CartBean cart = (CartBean) session.getAttribute("SHOP");
                    ArrayList<ProductDTO> ds = cart.getCartBeanList();
                    for (ProductDTO sp : ds) {
                        String code = sp.getSanpham().getCode();
                        int quanti = sp.getQuantity();
                        Products sz = new Products();
                        sz.insertbill(name, phone, addr, mail, payment, code, quanti);
                    }
                    url = "finish.jsp";
                }
                RequestDispatcher rd = request.getRequestDispatcher(url);
                rd.forward(request, response);
            } else if (action.equals("Delivery")) {
                String idbill = request.getParameter("tid");
                Customers a = new Customers();
                a.updatebillstatus(idbill);
                String customeraddress = request.getParameter("adr");
                String customerphone = request.getParameter("tel");
                String customeremail = request.getParameter("mailz");
                String orderdate = request.getParameter("orderdead");
                String payment = request.getParameter("paymeu");
                String customername = request.getParameter("cusname");
                String file = a.inbill(customername, customeraddress, customerphone, customeremail, idbill, orderdate, payment);
                Properties p = new Properties();
                p.put("mail.smtp.auth", "true");
                p.put("mail.smtp.starttls.enable", "true");
                p.put("mail.smtp.host", "smtp.gmail.com");
                p.put("mail.smtp.port", 587);
                String usn = "trahoangdat1998@gmail.com";
                String pwu = "haisautam574";
                Session s = Session.getInstance(p,
                        new javax.mail.Authenticator() {
                    protected javax.mail.PasswordAuthentication getPasswordAuthentication() {
                        return new javax.mail.PasswordAuthentication(usn, pwu);
                    }
                });
                String from = "trahoangdat1998@gmail.com";
                String to = customeremail;
                String sub = "Your Order Products Are Being Delivered To Your Address";
                String mess = "<b>From Smart Shopping Online</b><hr/>"
                        + "Your Order Products You Book On Our Website Is Going To Delivered To Your Address <br/>"
                        + "We will Call You When We Arrived<br/>"
                        + "Open The Attachment File Below To See More Details<br/>"
                        + "Thank You For Shopping At Out Website<br/>"
                        + "We Hope You Will Shopping At Our Website In The Future<br/>"
                        + "Bye!!!";
                String contactper = from;
                a.sendEmailwithpdf(to, from, pwu, sub, mess, contactper, file);
                RequestDispatcher rd = request.getRequestDispatcher("billmanage.jsp");
                rd.forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
