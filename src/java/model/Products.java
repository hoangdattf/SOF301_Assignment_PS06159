/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Administrator
 */
public class Products {

    public Products() {
    }

    public void delete(String masp) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=AssignmentSOF301";
            Connection con = DriverManager.getConnection(url, "sa", "12345");
            String sql = "Update Products Set delstat=1 where Code=?";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, masp);
            stm.executeUpdate();
            stm.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void insert(String masp, String tensp, float gia, String des, String imp, String cata, int Dis, String tage) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=AssignmentSOF301";
            Connection con = DriverManager.getConnection(url, "sa", "12345");
            String sql = "Insert into Products values(?,?,?,?,?,?,?,?,'false')";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, masp);
            stm.setString(2, tensp);
            stm.setFloat(3, gia);
            stm.setString(4, des);
            stm.setString(5, imp);
            stm.setString(6, cata);
            stm.setInt(7, Dis);
            stm.setString(8, tage);
            stm.executeUpdate();
            stm.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void update(String masp, String tensp, float gia, String des, String ims, String cata, int dis, String tage) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=AssignmentSOF301";
            Connection con = DriverManager.getConnection(url, "sa", "12345");
            String sql = "update Products set Name=?,Price=?,Description=?,Picsrc= ?,Cataloge= ?,Discount= ?, Tage= ? where Code=?";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, tensp);
            stm.setFloat(2, gia);
            stm.setString(3, des);
            stm.setString(4, ims);
            stm.setString(5, cata);
            stm.setInt(6, dis);
            stm.setString(7, tage);
            stm.setString(8, masp);
            stm.executeUpdate();
            stm.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void updatewithoutimg(String masp, String tensp, float gia, String des, String cata, int dis, String tage) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=AssignmentSOF301";
            Connection con = DriverManager.getConnection(url, "sa", "12345");
            String sql = "update Products set Name=?,Price=?,Description=?,Cataloge= ?,Discount= ?, Tage= ? where Code=?";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, tensp);
            stm.setFloat(2, gia);
            stm.setString(3, des);
            stm.setString(4, cata);
            stm.setInt(5, dis);
            stm.setString(6, tage);
            stm.setString(7, masp);
            stm.executeUpdate();
            stm.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public List<Product> showProduct(String tensp) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=AssignmentSOF301";
            Connection con = DriverManager.getConnection(url, "sa", "12345");
            String sql = "Select TOP 12 * from Products where delstat=0";
            if (tensp.length() > 0) {
                sql += " and Name like '%" + tensp + "%'";
            }
            Statement stm = con.createStatement();
            ResultSet rs = stm.executeQuery(sql);
            List<Product> list = new ArrayList<Product>();
            while (rs.next()) {
                String code = rs.getString(1);
                String name = rs.getString(2);
                float price = rs.getFloat(3);
                String des = rs.getString(4);
                String imgsou = rs.getString(5);
                int discout = rs.getInt(7);
                Product sp = new Product(code, name, price, imgsou, des, discout);
                list.add(sp);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<Product> showkindProductandtag(String kind, String tage) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=AssignmentSOF301";
            Connection con = DriverManager.getConnection(url, "sa", "12345");
            String sql = "Select * from Products where delstat=0 and Cataloge like '" + kind + "' and Tage like '" + tage + "'";
            Statement stm = con.createStatement();
            ResultSet rs = stm.executeQuery(sql);
            List<Product> list = new ArrayList<Product>();
            while (rs.next()) {
                String code = rs.getString(1);
                String name = rs.getString(2);
                float price = rs.getFloat(3);
                String des = rs.getString(4);
                String imgsou = rs.getString(5);
                int discout = rs.getInt(7);
                Product sp = new Product(code, name, price, imgsou, des, discout);
                list.add(sp);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<Product> showtagProduct(String tag) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=AssignmentSOF301";
            Connection con = DriverManager.getConnection(url, "sa", "12345");
            String sql = "Select * from Products where delstat=0 and Tage like '%" + tag + "%'";
            Statement stm = con.createStatement();
            ResultSet rs = stm.executeQuery(sql);
            List<Product> list = new ArrayList<Product>();
            while (rs.next()) {
                String code = rs.getString(1);
                String name = rs.getString(2);
                float price = rs.getFloat(3);
                String des = rs.getString(4);
                String imgsou = rs.getString(5);
                int discout = rs.getInt(7);
                Product sp = new Product(code, name, price, imgsou, des, discout);
                list.add(sp);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<Product> showsearchresult(String namesearch, String cata) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=AssignmentSOF301";
            Connection con = DriverManager.getConnection(url, "sa", "12345");
            String sql = "Select * from Products where delstat=0 and Name like '%" + namesearch + "%' and Cataloge like '" + cata + "'";
            Statement stm = con.createStatement();
            ResultSet rs = stm.executeQuery(sql);
            List<Product> list = new ArrayList<Product>();
            while (rs.next()) {
                String code = rs.getString(1);
                String name = rs.getString(2);
                float price = rs.getFloat(3);
                String des = rs.getString(4);
                String imgsou = rs.getString(5);
                int discout = rs.getInt(7);
                Product sp = new Product(code, name, price, imgsou, des, discout);
                list.add(sp);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public void insertbill(String name, String phone, String add, String mail, String paymethod, String codesp, int soluong) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=AssignmentSOF301";
            Connection con = DriverManager.getConnection(url, "sa", "12345");
            String sql = "Exec sp_insbill @username= ?, @userphone= ?, @useradd= ? , @usermail=?,@paymentmethod=?,@Code=?,@Quantity=?";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, name);
            stm.setString(2, phone);
            stm.setString(3, add);
            stm.setString(4, mail);
            stm.setString(5, paymethod);
            stm.setString(6, codesp);
            stm.setInt(7, soluong);
            stm.execute();
            stm.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
