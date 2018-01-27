/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.dao;

/**
 *
 * @author Hajar
 */
import java.sql.*;
import java.util.Date;
import java.util.ArrayList;
import java.util.List;
import org.beans.Plat;
import org.beans.Restau;
import org.beans.Commande; 
import org.beans.LigneCommande;

public class CommandeDaoImpl implements CommandeDAO{

    private DAOFactoryCom daoFactory;

    public CommandeDaoImpl(DAOFactoryCom daoFactory) {
        this.daoFactory = daoFactory;
    }
    
    public static PreparedStatement initialisationRequetePreparee( Connection connexion, String sql, boolean returnGeneratedKeys, Object... objets ) throws SQLException {
    PreparedStatement preparedStatement = connexion.prepareStatement( sql, returnGeneratedKeys ? Statement.RETURN_GENERATED_KEYS : Statement.NO_GENERATED_KEYS );
    for ( int i = 0; i < objets.length; i++ ) {
        preparedStatement.setObject( i + 1, objets[i] );
    }
    return preparedStatement;
}
    
    
    @Override
    public void ajouterCommande(Commande commande) {
    Connection connexion = null;
    PreparedStatement heritage = null;
    
    try{
        
        connexion = daoFactory.getConnection();
        heritage = initialisationRequetePreparee( connexion, "INSERT INTO commande (cinClient,datecommande,category) values(?,?,'waiting')",true,commande.getCinClient(),commande.getDateCommande());
        int j= heritage.executeUpdate();
        
    }catch(SQLException e){
        
    }    }
 
    
    @Override
    public List<Plat> chercherCommande( String nomRestau) {
        Connection connexion = null;
    //PreparedStatement heritage = null;
    ResultSet rs=null;
    Statement statement=null;
    List<Plat> plats = new ArrayList<Plat>();
    
    try{
        connexion = daoFactory.getConnection();
        statement = connexion.createStatement();
        rs = statement.executeQuery("select plat.idplat,plat.idrestau as idrestau,categoryplat,plat.prix,restau.nomrestau as nomrestau,plat.nomplat as nomplat from plat,restau where plat.idrestau=restau.idrestau and restau.nomrestau='"+nomRestau+"' and plat.categoryplat!='absent'");
        //heritage = initialisationRequetePreparee( connexion, "select idplat,plat.idrestau as idrestau,categoryplat,prix,restau.nomrestau as nomrestau,nomplat from plat,restau where plat.idrestau=restau.idrestau and plat.categoryplat='?' and restau.nomrestau='?'",true,categoryPlat,nomRestau);
        //rs= heritage.executeQuery();
        
        while(rs.next()){
                Plat plat=new Plat();
                Restau restau=new Restau();
            plat.setIdPlat(Integer.parseInt(rs.getString("idplat")));
            plat.setIdRestau(Integer.parseInt(rs.getString("idrestau")));
            plat.setNomPlat(rs.getString("nomplat"));
            plat.setCategoryPlat(rs.getString("categoryplat"));
            plat.setPrix(Integer.parseInt(rs.getString("prix")));
            plat.setNomRestau(rs.getString("nomrestau"));
            
            
            plats.add(plat);
            
        }
        return plats;
    }catch(SQLException e){
        
    }
      return plats;
    }

    @Override
    public int LivrerCommande(Commande commande) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void ajouterLigneCommande(LigneCommande ligne) {
    Connection connexion = null;
    PreparedStatement heritage = null;
   
    try{
          connexion = daoFactory.getConnection();
        //prixligne = initialisationRequetePreparee( connexion, "select prix from plat where idplat='?')",true,ligne.getIdPlat());

        heritage = initialisationRequetePreparee( connexion, "INSERT INTO lignecommande (idplat,idcommande,quantite,prixlignecommande) values (?,?,?,?)",true,ligne.getIdPlat(),ligne.getIdCommande(),ligne.getQuantité(),ligne.getPrixLigne());
        int j= heritage.executeUpdate();
       
    }catch(SQLException e){
        
    }      }
    
    
    @Override
    public int prixplat(int idplat){
        Connection conn=null;
    ResultSet rs=null;
    Statement statement=null;
    int prixplat=0;
    try{
        conn = daoFactory.getConnection();
        statement = conn.createStatement();
        rs = statement.executeQuery("select * from plat where idplat="+idplat);
        while(rs.next()){
            prixplat=Integer.parseInt(rs.getString("prix"));
            return prixplat;
        }
    }catch(Exception e){
        
    }
    return prixplat;
    }
    
    @Override
    public int idcommande(String cinclient,Date datecommande){
        Connection conn=null;
    ResultSet rs=null;
    Statement statement=null;
    int idcommande=0;
    try{
        conn = daoFactory.getConnection();
        statement = conn.createStatement();
        rs = statement.executeQuery("select * from commande where IDCOMMANDE = (SELECT MAX(IDCOMMANDE) FROM commande)");
        while(rs.next()){
            idcommande=Integer.parseInt(rs.getString("idcommande"));
            
        }
    }catch(Exception e){
     
    }
    return idcommande;
    }

    @Override
    public String nomplat(int idplat) {
        Connection conn=null;
    ResultSet rs=null;
    Statement statement=null;
    String nomplat="";
    try{
        conn = daoFactory.getConnection();
        statement = conn.createStatement();
        rs = statement.executeQuery("select * from plat where idplat="+idplat);
        while(rs.next()){
            nomplat=rs.getString("nomplat");
            return nomplat;
        }
    }catch(Exception e){
        
    }
    return nomplat;
    }

    @Override
    public String chercherAdresse(String email) {
        String adresse=null;
        try{
    
    Class.forName("org.apache.derby.jdbc.ClientDriver").newInstance();
   


    Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/FoodApp","hajar","hajar");
    Statement st = con.createStatement();
    String query = "select * from compte where email='"+email+"'";
    ResultSet rs = st.executeQuery(query);
    
    while(rs.next()){
        adresse=rs.getString("adresse");      
    }
    }catch(Exception e){
            
            }
    return adresse;}
}
