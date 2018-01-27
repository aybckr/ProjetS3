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
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.beans.Commande;
import org.beans.LigneCommande;
import org.beans.Plat;
import org.dao.CommandeDAO;
import org.dao.DAOFactoryCom;
import java.io.IOException;
import java.util.Properties;
import javax.mail.AuthenticationFailedException;
import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 *
 * @author Hajar
 */
public class commandeAffectee extends HttpServlet {

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
    String emaillivreur=request.getParameter("email");
    String cinlivreur=request.getParameter("cin");
    int idcommande=Integer.parseInt(request.getParameter("idcommande"));
    
 
    String query = "update commande set cinlivreur='"+cinlivreur+"' , category='process' where idcommande="+idcommande;
    int i = st.executeUpdate(query);
 if (i>0){
    request.getRequestDispatcher("gestionCommande.jsp").forward(request, response);
          final String err = "/error.jsp";
          final String succ = "/gestionCommande.jsp";
          RequestDispatcher dispatcher = request.getRequestDispatcher(succ);
          //send email to admin
            String from = "Admin";
            String to = "hajarhakkoum@gmail.com"; // emaillivreur;
            String subject = "Nouvelle Livraison";
            String message = "Connectez vous sur l application pour recevoir les info de la commande à livrer http://localhost:8080/foodapp/home.jsp";
            String login = "foodapp18@gmail.com";
            String password = "foodapp2018";
            try {
            Properties props = new Properties();            
            props.setProperty("mail.host", "smtp.gmail.com");
            props.setProperty("mail.smtp.port", "587");
            props.setProperty("mail.smtp.auth", "true");
            props.setProperty("mail.smtp.starttls.enable", "true");
            
            Authenticator auth = new commandeAffectee.SMTPAuthenticator(login, password);

            Session session = Session.getInstance(props, auth);

            MimeMessage msg = new MimeMessage(session);
            msg.setText(message);
            msg.setSubject(subject);
            msg.setFrom(new InternetAddress(from));
            msg.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
            Transport.send(msg);

        } catch (AuthenticationFailedException ex) {
            
            request.setAttribute("ErrorMessage", "Authentication failed");

            dispatcher = request.getRequestDispatcher(err);

        } catch (AddressException ex) {
            request.setAttribute("ErrorMessage", "Wrong email address");

            dispatcher = request.getRequestDispatcher(err);

        } catch (MessagingException ex) {
            request.setAttribute("ErrorMessage", ex.getMessage());

            dispatcher = request.getRequestDispatcher(err);
        }
            
        dispatcher.forward(request, response);
 
 
 }
    
        }catch(Exception e){
            
        }   
          
    
    }

    public class SMTPAuthenticator extends Authenticator {

        public PasswordAuthentication authentication;

        public SMTPAuthenticator(String login, String password) {
            authentication = new PasswordAuthentication(login, password);
        }

        @Override
        public PasswordAuthentication getPasswordAuthentication() {
            return authentication;
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
