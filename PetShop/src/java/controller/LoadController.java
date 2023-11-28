/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.getDAO;
import entity.Category;
import entity.ProductDTO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author truon
 */
public class LoadController extends HttpServlet {

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
        try {
            getDAO dao = new getDAO();
            String sort = request.getParameter("sort"); // Get the 'sort' query parameter
            String category = request.getParameter("category"); // Get the 'category' query parameter
            Category c = new Category();
            List<ProductDTO> listpr = new ArrayList<>();
            List<Category> listc = new ArrayList<>();

            // Check if the 'sort' parameter is present and handle sorting accordingly
            if (sort != null && !sort.isEmpty()) {
                if (sort.equals("name")) {
                    listpr = dao.getAllProduct();
                    Collections.sort(listpr, (ProductDTO p1, ProductDTO p2) -> p1.getName().compareToIgnoreCase(p2.getName()));
                    listc = dao.getAllCategory();

                } else if (sort.equals("price")) {
                    listpr = dao.getAllProduct();
                    Collections.sort(listpr, (ProductDTO p1, ProductDTO p2) -> Double.compare(p1.getPrice(), p2.getPrice()));
                    listc = dao.getAllCategory();

                } else if (sort.equals("name-desc")) {
                    listpr = dao.getAllProduct();
                    Collections.sort(listpr, (ProductDTO p1, ProductDTO p2) -> p2.getName().compareToIgnoreCase(p1.getName()));

                    listc = dao.getAllCategory();

                } else if (sort.equals("price-desc")) {
                    listpr = dao.getAllProduct();
                    Collections.sort(listpr, (ProductDTO p1, ProductDTO p2) -> Double.compare(p2.getPrice(), p1.getPrice()));
                    listc = dao.getAllCategory();

                } else {
                    listpr = dao.getAllProduct();
                }
            } else if (category != null && !category.isEmpty()) {
                // Check if the 'category' parameter is present and handle filtering by category 
                if (category.equals("C001") || category.equals("C002")) {
                    listpr = dao.getAllProductByCategory(category, "C006");
                    listc = dao.getAllCategory();
                    c = dao.getCategory(category);
                } else {
                    listpr = dao.getAllProductByCategory(category, category);
                    listc = dao.getAllCategory();
                    c = dao.getCategory(category);
                }
            } else {
                listpr = dao.getAllProduct();
                listc = dao.getAllCategory();
            }
            request.setAttribute("listCC", listc);
            request.setAttribute("cname", c.getCname());

            request.setAttribute("listP", listpr);
            request.getRequestDispatcher("home.jsp").forward(request, response);
        } catch (Exception e) {
            // Handle exceptions
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
