/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.me.bean;

/**
 *
 * @author Rajashree
 */
public class Product {
    public String name;
    public String price;
    public String catagory;
    
    public Product(String name, String price, String catagory){
        this.name = name;
        this.price = price;
        this.catagory = catagory;
    }

    public String getName() {
        return name;
    }

    public String getPrice() {
        return price;
    }

    public String getCatagory() {
        return catagory;
    }
    
    
}
