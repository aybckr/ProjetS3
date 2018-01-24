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

public class DAOFactory {
    private String url;
    private String username;
    private String password;

    public DAOFactory(String url, String username, String password) {
        this.url = url;
        this.username = username;
        this.password = password;
    }
    
    public static DAOFactory getInstance(){
        try{
            Class.forName("org.apache.derby.jdbc.ClientDriver");
        }catch(ClassNotFoundException e){
             
        }
        DAOFactory instance= new DAOFactory("jdbc:derby://localhost:1527/foodapp", "hajar", "hajar");
        return instance;
    }
    public Connection getConnection() throws SQLException{
        return DriverManager.getConnection( url, username, password );
    }
    public CompteDAO getCompteDao(){
        return new CompteDaoImpl(this);
    }
}
