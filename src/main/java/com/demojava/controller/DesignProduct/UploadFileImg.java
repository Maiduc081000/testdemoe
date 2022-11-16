/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.demojava.controller.DesignProduct;

import com.demojava.model.Cart;
import com.demojava.model.Product;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
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
@WebServlet(name = "UploadFileImg", urlPatterns = {"/uploadfile"})
@MultipartConfig
public class UploadFileImg extends HttpServlet {
    
    private static final String UPLOAD_DIR = "./target/files";
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
//        Product product = new Product();
//        product.setName(request.getParameter("name"));
//        product.setImage();
//        Part part = request.getPart("image");
//        String fileName = part.getSubmittedFileName();
//        String path = getServletContext().getRealPath("/" +"files" + File.separator + fileName);
//        InputStream is = part.getInputStream();
//        boolean test = uploadFile(is,path);
//        if(test){
//            System.out.println("uploaded");
//        }else{
//            System.out.println("something wrong");
//        }
//        for(Part part : request.getParts()){
//            String fileName = extractFileName(part);
//            fileName = new File(fileName).getName();
//            part.write(this.getFolderUpload().getAbsolutePath() + File.separator + fileName);
//        }
//        getServletContext().getRequestDispatcher("/category").forward(request, response);
    }
//    public boolean uploadFile(InputStream is, String path){
//        boolean test = false;
//        try {
//            byte[] byt = new byte[is.available()];
//            is.read();
//            try (FileOutputStream fops = new FileOutputStream(path)) {
//                fops.write(byt);
//                fops.flush();
//            }
//            test = true;
//        } catch (IOException e) {
//        }
//        return test;
//    }

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
//
//    public File getFolderUpload() {
//        File folderUpload = new File(System.getProperty("user.home") + ("/Uploads"));
//        if(!folderUpload.exists()){
//            folderUpload.mkdirs();
//        }
//        return folderUpload;
//    }

}
