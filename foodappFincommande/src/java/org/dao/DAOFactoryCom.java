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
import java.io.IOException;
import java.sql.*;

public class DAOFactoryCom {
    private String url;
    private String username;
    private String password;

    public DAOFactoryCom(String url, String username, String password) {
        this.url = url;
        this.username = username;
        this.password = password;
    }
    
    public static DAOFactoryCom getInstance(){
        try{
            Class.forName("org.apache.derby.jdbc.ClientDriver");
        }catch(ClassNotFoundException e){
             
        }
        DAOFactoryCom instance= new DAOFactoryCom("jdbc:derby://localhost:1527/foodapp", "hajar", "hajar");
        return instance;
    }
    
     public Connection getConnection() throws SQLException{
        return DriverManager.getConnection( url, username, password );
    }
    public CommandeDAO getCommandeDao(){
        return new CommandeDaoImpl(this);
    } 
    
}
