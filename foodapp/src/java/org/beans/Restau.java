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
public class Restau {
    private int idRestau;
    private String cinRestau;
    private String nomRestau;

    public String getNomRestau() {
        return nomRestau;
    }

    public void setNomRestau(String nomRestau) {
        this.nomRestau = nomRestau;
    }
    
    public Restau() {
    }

    public int getIdRestau() {
        return idRestau;
    }

    public void setIdRestau(int idRestau) {
        this.idRestau = idRestau;
    }

    public String getCinRestau() {
        return cinRestau;
    }

    public void setCinRestau(String cinRestau) {
        this.cinRestau = cinRestau;
    }
    
    
    
    
}
