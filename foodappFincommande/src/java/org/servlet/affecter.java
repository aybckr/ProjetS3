/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.beans.Commande;

/**
 *
 * @author Hajar
 */
public class affecter extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            
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
            String livreur=request.getParameter("cin");
            int idcommande=Integer.parseInt(request.getParameter("idcommande"));
            
            Class.forName("org.apache.derby.jdbc.ClientDriver").newInstance();
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/FoodApp","hajar","hajar");
            Statement st = con.createStatement();
            String query = "select * from commande where cinlivreur='"+livreur+"'";
            ResultSet rs = st.executeQuery(query);
            List<Commande> commandes =new ArrayList<Commande>();
                    while(rs.next()){
                Commande commande=new Commande();
              
            commande.setIdCommande(Integer.parseInt(rs.getString("idcommande")));
            
            commande.setCinClient(rs.getString("cinclient"));
            commande.setCinlivreur(rs.getString("cinlivreur"));
            commande.setDateCommande(rs.getDate("datecommande"));
            commande.setDateLivraison(rs.getDate("datelivraison"));
            commande.setDatelivreur(rs.getDate("datelivreur"));
   
            commandes.add(commande);
            
        }
        request.setAttribute("commandes", commandes);
        request.setAttribute("idcommande", idcommande);
        request.getRequestDispatcher("affecterLivraison.jsp").forward(request, response);
    
            
        }catch(Exception e){
            
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
