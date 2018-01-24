/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.beans.Compte;
import org.dao.*;


/**
 *
 * @author Hajar
 */
public class Compteserv extends HttpServlet {

   private CompteDAO compteDao;
   public void init() throws ServletException {
       DAOFactory daoFactory=DAOFactory.getInstance();
       this.compteDao= daoFactory.getCompteDao();
   }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        Compte compte= new Compte();
        compte.setCin(request.getParameter("cin"));
        compte.setEmail(request.getParameter("email"));
        compte.setTel(request.getParameter("tel"));
        compte.setNom(request.getParameter("nom"));
        compte.setPrenom(request.getParameter("prenom"));
        compte.setAdresse(request.getParameter("addresse"));
        compte.setType(request.getParameter("type"));
        compte.setPassword(request.getParameter("mdp"));
        compteDao.ajouter(compte);
        
        if(compte.getType().equals("client")) {compteDao.addclient(compte);}
        if(compte.getType().equals("gerant")) {compteDao.addgerant(compte);}
        if(compte.getType().equals("client")) {compteDao.addlivreur(compte);}
        this.getServletContext().getRequestDispatcher("/home.jsp").forward(request, response);
        
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
