/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.beans.Plat;
import org.dao.CommandeDAO;
import org.dao.DAOFactoryCom;

/**
 *
 * @author Hajar
 */
public class chercherCommandeoff extends HttpServlet {

     private CommandeDAO compteDao;
   public void init() throws ServletException {
       DAOFactoryCom daoFactory=DAOFactoryCom.getInstance();
       this.compteDao= daoFactory.getCommandeDao();
   }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           
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
try{
        //String categoryPlat=request.getParameter("categoryplat");
        String nomrestau=request.getParameter("nomrestau");
        List<Plat> plats = new ArrayList<Plat>();
        plats= compteDao.chercherCommande( nomrestau);
        
        request.setAttribute("plats", plats);
        request.getRequestDispatcher("platsoff.jsp").forward(request, response);
        }
        catch(Exception e){
            throw new ServletException("Cannot obtain products from DB", e);
        }    }

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
