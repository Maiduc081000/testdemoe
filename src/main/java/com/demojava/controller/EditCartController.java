/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.demojava.controller;

import com.demojava.dao.Dao;
import com.demojava.model.Cart;
import com.demojava.model.Product;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author MND PC
 */
@WebServlet(name = "EditCartController", urlPatterns = {"/editcart"})
public class EditCartController extends HttpServlet {

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
//        response.setContentType("text/html;charset=UTF-8");
//        String id = request.getParameter("id");
//        HttpSession session = request.getSession();
//        Dao dao = new Dao();
//        Product product = dao.getProductById(id);
//        Cart cart = new Cart();
//        Object obj = session.getAttribute("cart");
//        if(obj != null){
//            cart.setProduct(product);
//            cart.setQuanty(cart.getQuanty());
//            cart.setTotalPrice(product.getPrice());
//            Map<String, Cart> map = (Map<String, Cart>) obj;
//            map.put(id, cart);
//            session.setAttribute("cart", map);
//        }else{
//            Map<String, Cart> map = (Map<String, Cart>) obj;
//            Cart cart = map.get(id);
//            cart.setQuanty(cart.getQuanty() +1);
//        }
//        session.setAttribute("cart", map);
//        
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
