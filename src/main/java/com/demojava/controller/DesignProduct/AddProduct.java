/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.demojava.controller.DesignProduct;

import com.demojava.dao.Dao;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author MND PC
 */
@WebServlet(name = "AddProduct", urlPatterns = {"/addprodct"})
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2,
                maxFileSize = 1024 * 1024 * 50,
                maxRequestSize = 1024 * 1024 * 50)
public class AddProduct extends HttpServlet {

    private final String UPLOAD_DIRECTORY = "C:\\Users\\MND PC";
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
        try (PrintWriter out = response.getWriter()) {
            String name = request.getParameter("name");
//        String img = request.getParameter("image");
            Part part = request.getPart("file");
            String fileName = part.getSubmittedFileName();
            String path = getServletContext().getRealPath("/" + "img" + File.separator + fileName);
            InputStream is = part.getInputStream();
            boolean test = uploadFile(is, path);
            if (test) {
                out.println("image");
            } else {
                out.println("something wrong");
            }
            String price = request.getParameter("price");
            String title = request.getParameter("title");
            String description = request.getParameter("description");
            String category = request.getParameter("category");
            String buy_id = request.getParameter("sell_id");
            System.out.println("name:" + name);
//        System.out.println("image:" +img);
            System.out.println("price: " + price);
            System.out.println("title; " + title);
            System.out.println("description: " + description);
            Dao dao = new Dao();
            System.out.println("---addproduct----");
//        System.out.println(idStr);
            System.out.println(name);
            System.out.println(fileName);
//        System.out.println(img);
            System.out.println(price);
            System.out.println(title);
            System.out.println(description);
            System.out.println(category);
            System.out.println("---addproduct----");
            dao.addProduct(name, fileName, price, title, description, category, 1);
            response.sendRedirect("listproduct");
        }

//        request.getRequestDispatcher("listproduct").forward(request, response);
    }

    public boolean uploadFile(InputStream is, String path) {
        boolean test = false;
        try {
            byte[] byt = new byte[is.available()];
            is.read();
            FileOutputStream fops = new FileOutputStream(path);
            fops.write(byt);
            fops.flush();

            test = true;
        } catch (IOException e) {
        }
        return test;
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
//    private String extractFileName(Part part) {
//        String contentDisp = part.getHeader("content-disposition");
//        String[] items = contentDisp.split(";");
//        for(String s : items){
//            if(s.trim().startsWith("filename")){
//                return s.substring(s.indexOf("=") + 2, s.length() - 1);
//            }
//        }return "";
//    }

//    public File getFolderUpload() {
//        File folderUpload = new File(System.getProperty("user.home") + ("/Uploads"));
//        if(!folderUpload.exists()){
//            folderUpload.mkdirs();
//        }
//        return folderUpload;
//    }
}
