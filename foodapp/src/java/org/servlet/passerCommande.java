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
            request.getRequestDispatcher("factureCommande.jsp").forward(request, response);
            
            
            
              
            
            }
        
            
            
        
        
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
