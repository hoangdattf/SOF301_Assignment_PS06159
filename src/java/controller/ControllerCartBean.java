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
import static java.lang.System.out;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Customers;
import model.Product;
import model.Products;

/**
 *
 * @author Administrator
 */
public class ControllerCartBean extends HttpServlet {

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
            if (action.equals("Add To Cart")) {
                HttpSession session = request.getSession(true);
                CartBean shop = (CartBean) session.getAttribute("SHOP");
                if (shop == null) {
                    shop = new CartBean();
                }
                String code = request.getParameter("txtCode");
                String name = request.getParameter("txtName");
                String pri = request.getParameter("txtPrice");
                String des = request.getParameter("txtDes");
                String imgsou = request.getParameter("imgsource");
                float fpri = Float.parseFloat(pri);
                Product s = new Product(code, name, fpri, imgsou, des);
                ProductDTO sp = new ProductDTO(s);
                shop.addSanPham(sp);
                session.setAttribute("SHOP", shop);
                String url = request.getParameter("curpage");
                RequestDispatcher rd = request.getRequestDispatcher(url);
                rd.forward(request, response);
            } else if (action.equals("Add To cart")) {
                HttpSession session = request.getSession(true);
                CartBean shop = (CartBean) session.getAttribute("SHOP");
                if (shop == null) {
                    shop = new CartBean();
                }
                String code = request.getParameter("txtCode");
                String name = request.getParameter("txtName");
                String pri = request.getParameter("txtPrice");
                String des = request.getParameter("txtDes");
                String imgsou = request.getParameter("imgsource");
                float fpri = Float.parseFloat(pri);
                Product s = new Product(code, name, fpri, imgsou, des);
                ProductDTO sp = new ProductDTO(s);
                shop.addSanPham(sp);
                session.setAttribute("SHOP", shop);
                String searchkey = request.getParameter("txtsearch");
                String txtcata = request.getParameter("cata");
                String url = "ControllerCartBean?action=.&txtsearch=" + searchkey + "&cata=" + txtcata;
                RequestDispatcher rd = request.getRequestDispatcher(url);
                rd.forward(request, response);
            } else if (action.equals("View Cart")) {
                HttpSession session = request.getSession(true);
                String chk = (String) session.getAttribute("checkin");
                if (chk == null) {
                    session.setAttribute("checkin", "imout");
                }
                RequestDispatcher rd = request.getRequestDispatcher("checkout.jsp");
                rd.forward(request, response);
            } else if (action.equals("AddMore")) {
                RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                rd.forward(request, response);
            } else if (action.equals("Delete")) {
                HttpSession session = request.getSession();
                if (session != null) {
                    CartBean shop = (CartBean) session.getAttribute("SHOP");
                    if (shop != null) {
                        String code = request.getParameter("txtCd");
                        shop.removeSanPham(code);
                    }
                    session.setAttribute("SHOP", shop);
                }
                String url = "ControllerCartBean?action=View Cart";
                RequestDispatcher rd = request.getRequestDispatcher(url);
                rd.forward(request, response);
            } else if (action.equals("Update")) {
                HttpSession session = request.getSession();
                if (session != null) {
                    CartBean shop = (CartBean) session.getAttribute("SHOP");
                    String codes = request.getParameter("coz");
                    String sl = request.getParameter("quanti");
                    String ms = codes;
                    int soluong = Integer.parseInt(sl);
                    shop.updatesanpham(ms, soluong);
                    session.setAttribute("SHOP", shop);
                }
                String url = "ControllerCartBean?action=View Cart";
                RequestDispatcher rd = request.getRequestDispatcher(url);
                rd.forward(request, response);
            } else if (action.equals("Quick View")) {
                HttpSession session = request.getSession(true);
                String code = request.getParameter("txtCode");
                String name = request.getParameter("txtName");
                String pri = request.getParameter("txtPrice");
                String des = request.getParameter("txtDes");
                String dis = request.getParameter("txtDis");
                String realmoney = request.getParameter("txtreal");
                String imgsou = request.getParameter("imgsource");
                session.setAttribute("ma", code);
                session.setAttribute("ten", name);
                session.setAttribute("gia", pri);
                session.setAttribute("mota", des);
                session.setAttribute("tienthat", realmoney);
                session.setAttribute("hinh", imgsou);
                RequestDispatcher rd = request.getRequestDispatcher("single.jsp");
                rd.forward(request, response);
            } else if (action.equals("Add to cart")) {
                HttpSession session = request.getSession(true);
                CartBean shop = (CartBean) session.getAttribute("SHOP");
                if (shop == null) {
                    shop = new CartBean();
                }
                String code = request.getParameter("txtCode");
                String name = request.getParameter("txtName");
                String pri = request.getParameter("txtPrice");
                String des = request.getParameter("txtDes");
                String imgsou = request.getParameter("imgsource");
                String sonuong = request.getParameter("qty");
                int soluong = Integer.parseInt(sonuong);
                System.out.println(soluong);
                float fpri = Float.parseFloat(pri);
                Product s = new Product(code, name, fpri, imgsou, des);
                ProductDTO sp = new ProductDTO(s);
                shop.addSanPhamwithso(sp, soluong);
                session.setAttribute("SHOP", shop);
                String url = request.getParameter("currpage");
                RequestDispatcher rd = request.getRequestDispatcher(url);
                rd.forward(request, response);
            } else if (action.equals(".")) {
                HttpSession session = request.getSession(true);
                String ten = request.getParameter("txtsearch");
                String cata = request.getParameter("cata");
                Products sp = new Products();
                List<Product> list = new ArrayList<Product>();
                list = sp.showsearchresult(ten, cata);
                session.setAttribute("listsearch", list);
                RequestDispatcher rd = request.getRequestDispatcher("search.jsp");
                rd.forward(request, response);
            } else if (action.equals("getinfo")) {
                HttpSession session = request.getSession(true);

                if (session.getAttribute("checkin").equals("imin")) {
                    RequestDispatcher rd = request.getRequestDispatcher("choosemethod.jsp");
                    rd.forward(request, response);
                } else {
                    RequestDispatcher rd = request.getRequestDispatcher("orderinfo.jsp");
                    rd.forward(request, response);
                }
            } else if (action.equals("Continue")) {
                String email = request.getParameter("txtemail");
                String name = request.getParameter("txtname");
                String address = request.getParameter("txtadd");
                String phone = request.getParameter("phone");
                HttpSession session = request.getSession(true);
                session.setAttribute("bmail", email);
                session.setAttribute("bname", name);
                session.setAttribute("badd", address);
                session.setAttribute("bphone", phone);
                RequestDispatcher rd = request.getRequestDispatcher("choosemethod.jsp");
                rd.forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            out.close();
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
