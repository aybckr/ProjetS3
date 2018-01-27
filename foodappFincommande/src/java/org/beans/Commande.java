/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.beans;

import java.util.Date;

/**
 *
 * @author Hajar
 */
public class Commande {
    private int idCommande;
    private String cinClient;
    private Date dateCommande;
    private Date dateLivraison;
    private int total;
    private String cinlivreur;
    private Date datelivreur;
    
    public Commande() {
    }

    public String getCinlivreur() {
        return cinlivreur;
    }

    public void setCinlivreur(String cinlivreur) {
        this.cinlivreur = cinlivreur;
    }

    public Date getDatelivreur() {
        return datelivreur;
    }

    public void setDatelivreur(Date datelivreur) {
        this.datelivreur = datelivreur;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    
    
    public Date getDateCommande() {
        return dateCommande;
    }

    public void setDateCommande(Date dateCommande) {
        this.dateCommande = dateCommande;
    }

    public Date getDateLivraison() {
        return dateLivraison;
    }

    public void setDateLivraison(Date dateLivraison) {
        this.dateLivraison = dateLivraison;
    }
    
    
    
    public int getIdCommande() {
        return idCommande;
    }

    public void setIdCommande(int idCommande) {
        this.idCommande = idCommande;
    }

    public String getCinClient() {
        return cinClient;
    }

    public void setCinClient(String cinClient) {
        this.cinClient = cinClient;
    }
    
    
}
