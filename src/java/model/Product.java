/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;

/**
 *
 * @author Administrator
 */
public class Product implements Serializable {

    public Product(String code, String name, float price, String picimg, String description, int discout) {
        this.code = code;
        this.name = name;
        this.price = price;
        this.picimg = picimg;
        this.description = description;
        this.discout = discout;
    }
    private String code;
    private String name;
    private float price;
    private String picimg;
    private String description;
    private int discout;

    public int getDiscout() {
        return discout;
    }

    public void setDiscout(int discout) {
        this.discout = discout;
    }

    public float getrealmn(float price, int discout) {
        return price - (price * discout / 100);
    }

    public String getPicimg() {
        return picimg;
    }

    public void setPicimg(String picimg) {
        this.picimg = picimg;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Product(String code, String name, float price, String picimg, String description) {
        this.code = code;
        this.name = name;
        this.price = price;
        this.picimg = picimg;
        this.description = description;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }
}
