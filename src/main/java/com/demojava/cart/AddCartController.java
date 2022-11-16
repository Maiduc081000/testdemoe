/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.demojava.cart;

import com.demojava.dao.Dao;
import com.demojava.model.Cart;
import com.demojava.model.Product;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
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
@WebServlet(name = "AddCartController", urlPatterns = {"/add-cart"})
public class AddCartController extends HttpServlet {

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
        request.setCharacterEncoding("UTF-8");
        String pId = request.getParameter("productId");
        Dao dao = new Dao();
        List<Product> listProduct = dao.getAllProduct();
        
        Product product = dao.getProductById(pId);
        System.out.println("--addcart---");
        System.out.println(product);
        System.out.println("--addcart---");
        HttpSession session = request.getSession();
        Object obj = session.getAttribute("cart");
        if (obj == null) {
            Cart cart = new Cart();
            cart.setProduct(product);
            cart.setQuanty(1);
            cart.setTotalPrice(product.getPrice());
            Map<String, Cart> map = new HashMap<>();
            map.put(pId, cart);
            session.setAttribute("cart", map);
        } else {
            Map<String, Cart> map = (Map<String, Cart>) obj;
            Cart cart = map.get(pId);
            if (cart == null) {
                cart = new Cart();
                cart.setProduct(product);
                cart.setQuanty(1);
                cart.setTotalPrice(product.getPrice());
                map.put(pId, cart);
            } else {
                cart.setQuanty(cart.getQuanty() + 1);
            }
            session.setAttribute("cart", map);
        }
        request.setAttribute("listP", listProduct);
        response.sendRedirect("cart");
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
