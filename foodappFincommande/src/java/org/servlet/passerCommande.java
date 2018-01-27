/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.servlet;

import com.sun.xml.ws.commons.ha.HaContext;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

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
public class passerCommande extends HttpServlet {

    private CommandeDAO compteDao;
    Commande commande=new Commande();
    
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

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
   
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
       String[] idPlat = request.getParameterValues("choix");
        String[] quantites = request.getParameterValues("quantite"); 
        
        Date aujourdhui = new Date();
        String cin=(String) request.getSession().getAttribute("cin");
        if(idPlat !=null){
        commande.setDateCommande(aujourdhui);
        commande.setCinClient(cin);
        
        compteDao.ajouterCommande(commande);
        commande.setIdCommande(compteDao.idcommande(cin, aujourdhui));
        final String err = "/error.jsp";
        final String succ = "/factureCommande.jsp";
        
            int[] verifqt =new int[idPlat.length];
            int[] verify2 = new int[idPlat.length];
        int total=0;    
        LigneCommande[] lignes=new LigneCommande[idPlat.length];
       
            for(int i=0;i<idPlat.length;i++){
                verify2[i]=Integer.parseInt(idPlat[i]);
                verifqt[i]=Integer.parseInt(quantites[i]);

                LigneCommande ligne= new LigneCommande();
                ligne.setIdPlat(verify2[i]);   
                ligne.setIdCommande(compteDao.idcommande(cin,aujourdhui));
                
                ligne.setNomPlat(compteDao.nomplat(verify2[i]));
                
                
                int prix=compteDao.prixplat(verify2[i]);
                total=total+verifqt[i]*prix;
                commande.setTotal(total);
                ligne.setPrixLigne(verifqt[i]*prix);
                ligne.setQuantité(verifqt[i]);
                lignes[i]=ligne;
                compteDao.ajouterLigneCommande(ligne);
                
            }
            request.setAttribute("commande", commande);
            request.setAttribute("lignes", lignes);
            RequestDispatcher dispatcher = request.getRequestDispatcher(succ);
            
            
            //send email to admin
            String from = cin;
            String to = "hajarhakkoum@gmail.com";
            String subject = "Nouvelle Commande";
            String message = "Client de CIN: "+cin+" a pass une commande connectez vous sur l application pour affecter à cette commande un livreur http://localhost:8080/foodapp/home.jsp";
            String login = "foodapp18@gmail.com";
            String password = "foodapp2018";
            try {
            Properties props = new Properties();            
            props.setProperty("mail.host", "smtp.gmail.com");
            props.setProperty("mail.smtp.port", "587");
            props.setProperty("mail.smtp.auth", "true");
            props.setProperty("mail.smtp.starttls.enable", "true");
            
            Authenticator auth = new SMTPAuthenticator(login, password);

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
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
