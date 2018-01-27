/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.dao;

import java.sql.*;
import org.beans.Compte;

/**
 *
 * @author Hajar
 */


public class CompteDaoImpl implements CompteDAO {
    private DAOFactory daoFactory;

    public CompteDaoImpl(DAOFactory daoFactory) {
        this.daoFactory = daoFactory;
    }
    
    /*
 * Initialise la requête préparée basée sur la connexion passée en argument,
 * avec la requête SQL et les objets donnés.
 */
public static PreparedStatement initialisationRequetePreparee( Connection connexion, String sql, boolean returnGeneratedKeys, Object... objets ) throws SQLException {
    PreparedStatement preparedStatement = connexion.prepareStatement( sql, returnGeneratedKeys ? Statement.RETURN_GENERATED_KEYS : Statement.NO_GENERATED_KEYS );
    for ( int i = 0; i < objets.length; i++ ) {
        preparedStatement.setObject( i + 1, objets[i] );
    }
    return preparedStatement;
}



@Override
    public void ajouter(Compte compte) {
        
            Connection connexion = null;
            
    PreparedStatement preparedStatement = null;
    
    

    try {
        /* Récupération d'une connexion depuis la Factory */
        connexion = daoFactory.getConnection();
        preparedStatement = initialisationRequetePreparee( connexion, "INSERT INTO compte(cin,nom,prenom,email,tel,adresse,password,type) VALUES(?, ?, ?,?,?,?,?,?)", true, compte.getCin(),compte.getNom(),compte.getPrenom(), compte.getEmail(), compte.getTel(), compte.getAdresse(), compte.getPassword(), compte.getType() );
        int statut = preparedStatement.executeUpdate();
        
        /* Analyse du statut retourné par la requête d'insertion */
        if ( statut == 0 ) {
        }

        }catch(SQLException e){
            e.printStackTrace();
        }
    }

    @Override
    public void addclient(Compte compte) {
    Connection connexion = null;
    PreparedStatement heritage = null;
    try{
        connexion = daoFactory.getConnection();
        heritage = initialisationRequetePreparee( connexion, "INSERT INTO client (cinclient) values(?)",true,compte.getCin());
        int j= heritage.executeUpdate();
    }catch(SQLException e){
        
    }    }

    @Override
    public void addgerant(Compte compte) {
    Connection connexion = null;
    PreparedStatement heritage = null;
    try{
        connexion = daoFactory.getConnection();
        heritage = initialisationRequetePreparee( connexion, "INSERT INTO gerantRestau (cinrestau) values(?)",true,compte.getCin());
        int j= heritage.executeUpdate();
    }catch(SQLException e){
        
    }    }

    @Override
    public void addlivreur(Compte compte) {
    Connection connexion = null;
    PreparedStatement heritage = null;
    try{
        connexion = daoFactory.getConnection();
        heritage = initialisationRequetePreparee( connexion, "INSERT INTO livreur (cinclivreur) values(?)",true,compte.getCin());
        int j= heritage.executeUpdate();
    }catch(SQLException e){
        
    }    }
    

    @Override
    public int chercher(String email, String mdp) {
    Connection connexion = null;
    Statement statement = null;
    ResultSet rs=null;
    try{
        connexion = daoFactory.getConnection();
        statement = connexion.createStatement();
        rs = statement.executeQuery("select cin,type from compte where email='"+email+"' and password='"+mdp+"'");
        String cin="";
        String type="";
        while(rs.next()){
            cin= rs.getString("cin");
            type=rs.getString("email");
        }
        if(!cin.equals("") && type.equals("client"))return 1;
        else if(!cin.equals("") && type.equals("gerant")) return 2;
        else if(!cin.equals("") && type.equals("livreur")) return 3;
        else if(!cin.equals("") && type.equals("admin")) return 3;
        else return 0;
    }catch(SQLException e){
        return 0;
    }    }

}
