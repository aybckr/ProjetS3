/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.dao;

import java.util.List;
import org.beans.Compte;

/**
 *
 * @author Hajar
 */
public interface CompteDAO {
    void ajouter(Compte compte);
    void addclient(Compte compte); void addgerant(Compte compte); void addlivreur(Compte compte);
    int chercher(String email,String mdp);
    
}
