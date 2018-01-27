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
public class Plat {
    private int idPlat;
    private int idRestau;

    public String getNomRestau() {
        return nomRestau;
    }

    public void setNomRestau(String nomRestau) {
        this.nomRestau = nomRestau;
    }
    
    public String nomPlat;
    private String categoryPlat;
    private int prix;
    private String nomRestau;
    
    public int getPrix() {
        return prix;
    }

    public void setPrix(int prix) {
        this.prix = prix;
    }
    
    public Plat() {
    }

    public int getIdPlat() {
        return idPlat;
    }

    public void setIdPlat(int idPlat) {
        this.idPlat = idPlat;
    }

    public int getIdRestau() {
        return idRestau;
    }

    public void setIdRestau(int idRestau) {
        this.idRestau = idRestau;
    }

    public String getNomPlat() {
        return nomPlat;
    }

    public void setNomPlat(String nomPlat) {
        this.nomPlat = nomPlat;
    }

    public String getCategoryPlat() {
        return categoryPlat;
    }

    public void setCategoryPlat(String categoryPlat) {
        this.categoryPlat = categoryPlat;
    }
    
    
    
}
