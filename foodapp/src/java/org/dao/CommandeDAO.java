/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.dao;
import java.util.Date;
/**
 *
 * @author Hajar
 */

import java.sql.ResultSet;
import java.util.List;
import org.beans.Plat;
import org.beans.Restau;
import org.beans.Commande;
import org.beans.LigneCommande;

public interface CommandeDAO {
    void ajouterCommande(Commande commande);    
    List<Plat> chercherCommande(String restau);
    void ajouterLigneCommande(LigneCommande ligne);
    int LivrerCommande (Commande commande);
    int prixplat(int idplat);
    int idcommande(String cinclient,Date datecommande);
    String nomplat(int idplat);
}
