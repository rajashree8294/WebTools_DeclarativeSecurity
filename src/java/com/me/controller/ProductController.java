/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.me.controller;

import com.me.bean.Product;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author lenovo
 */
public class ProductController extends HttpServlet {
    ProductDirectory dir = new ProductDirectory();
    int count;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
     @Override
    public void init() {
        dir.addProduct(new Product("LENOVO", "13000", "Laptop"));
        dir.addProduct(new Product("XP", "14000", "Laptop"));
        dir.addProduct(new Product("DELL", "15000", "Laptop"));
        dir.addProduct(new Product("ACCER", "16000", "Laptop"));
        
        dir.addProduct(new Product("LET US C", "1300", "Book")); 
        dir.addProduct(new Product("PROGRAMMING WITH JAVA", "1800", "Book")); 
        dir.addProduct(new Product("PYTHON PRO", "130", "Book")); 
        dir.addProduct(new Product("HTML,CSS: FRONTEND", "1900", "Book")); 
        
        dir.addProduct(new Product("Culture II", "2100", "Music")); 
        dir.addProduct(new Product("Whack World", "210", "Music")); 
        dir.addProduct(new Product("Golden Hour", "250", "Music"));
        dir.addProduct(new Product("Wide Awake", "540", "Music"));
    }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession(false);
        ArrayList<String> cart;
        String action = request.getParameter("action");
        
         if(session!=null && null != session.getAttribute("cart")){
              cart = (ArrayList<String>)session.getAttribute("cart");
         }else{
              cart= new ArrayList<>();
         }
        
        if(action.equalsIgnoreCase("userlogin")){
            request.setAttribute("productList", dir.getProductList());
            session.setAttribute("productList", dir.getProductList());
            RequestDispatcher rd = request.getRequestDispatcher("productList.jsp");
            rd.forward(request, response);
        } else if(action.equalsIgnoreCase("add")){
            if(request.getParameterValues("item") == null) {
                 RequestDispatcher rd = request.getRequestDispatcher("error.jsp");
                 rd.forward(request, response);     
            }else{
                List<String> recent =  Arrays.asList(request.getParameterValues("item"));
                if(recent!=null && recent.size()>0){
                    session.setAttribute("recentlySelected", recent);
                    List<String> listC = new ArrayList<>();
                    listC.addAll(cart);
                    listC.addAll(recent);
                    session.setAttribute("cart",listC);

                    RequestDispatcher rd = request.getRequestDispatcher("viewProducts.jsp");
                    rd.forward(request, response);     
                }else{

                }
            }
        } else if(action.equalsIgnoreCase("view")){
            RequestDispatcher rd = request.getRequestDispatcher("/cart.jsp");
            rd.forward(request, response);  
        } else if(action.equalsIgnoreCase("remove")){
            String[] itemsToBeRemoved = request.getParameterValues("item");
            if (itemsToBeRemoved == null){
                response.sendRedirect("error.jsp");
            }else{
                for(String item: itemsToBeRemoved){
                    for(Product product: dir.getProductList()){
                        if(item.equalsIgnoreCase(product.name))
                            cart.remove(product.name);
                    }
                }
                session.setAttribute("cart", cart);
                RequestDispatcher rd = request.getRequestDispatcher("/cart.jsp");
                rd.forward(request, response);  
            }
        }else if(action.equalsIgnoreCase("logout")){
            session.invalidate();
            response.sendRedirect("welcome.jsp");
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
