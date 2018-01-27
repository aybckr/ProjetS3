/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.beans;

/**
 *
 * @author Hajar
 */
public class LigneCommande {
    private int idPlat;
    private int idCommande;
    private int quantité;
    private int prixLigne;
    private String nomPlat;
    
    public LigneCommande() {
    }

    public String getNomPlat() {
        return nomPlat;
    }

    public void setNomPlat(String nomPlat) {
        this.nomPlat = nomPlat;
    }

    public int getIdPlat() {
        return idPlat;
    }

    public void setIdPlat(int idPlat) {
        this.idPlat = idPlat;
    }

    public int getIdCommande() {
        return idCommande;
    }

    public void setIdCommande(int idCommande) {
        this.idCommande = idCommande;
    }

    public int getQuantité() {
        return quantité;
    }

    public void setQuantité(int quantité) {
        this.quantité = quantité;
    }

    public int getPrixLigne() {
        return prixLigne;
    }

    public void setPrixLigne(int prixLigne) {
        this.prixLigne = prixLigne;
    }
    
}
