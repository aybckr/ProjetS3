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
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Hajar
 */
public class addUser extends HttpServlet {

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
                 try {
            
    Class.forName("org.apache.derby.jdbc.ClientDriver").newInstance();

    Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/FoodApp","hajar","hajar");
    Statement st = con.createStatement();
    String cin=request.getParameter("cin");
    String nom=request.getParameter("nom");
    String prenom=request.getParameter("prenom");
    String adresse=request.getParameter("adresse");
    String tel=request.getParameter("tel");
    String email=request.getParameter("email");
    String password=request.getParameter("password");
    String category="up";
    String type=request.getParameter("type");
     if(type.equals("gerant")){
    String query = "insert into compte (cin,nom,prenom,adresse,tel,email,password,type,category) values ('"+cin+"','"+nom+"','"+prenom+"','"+adresse+"','"+tel+"','"+email+"','"+password+"','"+type+"','"+category+"')";
    int i = st.executeUpdate(query);
    
   
    String heritage="insert into gerantrestau (cinrestau) values ('"+cin+"')";
    int j=st.executeUpdate(heritage);}
    else if (type.equals("livreur")){
            String query = "insert into compte (cin,nom,prenom,adresse,tel,email,password,type,category) values ('"+cin+"','"+nom+"','"+prenom+"','"+adresse+"','"+tel+"','"+email+"','"+password+"','"+type+"','"+category+"')";
    int i = st.executeUpdate(query);
    String heritage="insert into livreur (cinlivreur) values ('"+cin+"')";
    int j=st.executeUpdate(heritage);    
    }
    request.getRequestDispatcher("gestionUsers.jsp").forward(request, response);
    
        }catch(Exception e){
            
        }
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
