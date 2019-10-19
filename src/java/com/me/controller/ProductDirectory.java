/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.me.controller;

import com.me.bean.Product;
import java.util.ArrayList;

/**
 *
 * @author Rajashree
 */
public class ProductDirectory {
    
    ArrayList<Product> productList;

    public ProductDirectory() {
        productList = new ArrayList<>();
    }
    
    public void addProduct(Product p){
        productList.add(p);
    }
    
    public ArrayList<Product> getProductList(){
        return this.productList;
    }

}
