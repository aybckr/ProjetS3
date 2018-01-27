<%-- 
    Document   : edit
    Created on : 22 nov. 2017, 16:21:26
    Author     : Hajar
--%>


<%@ page import ="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
<%
try{
    String nom = request.getParameter("nom"); 
    String email = request.getParameter("email"); 
    String prenom = request.getParameter("prenom");
    String adresse = request.getParameter("adresse");
    //String email = request.getParameter("email");
    //String mdp = request.getParameter("mdp");
    
    String cin=request.getParameter("cin");
    
    
    Class.forName("org.apache.derby.jdbc.ClientDriver").newInstance();
    
    Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/foodapp","hajar","hajar");
    Statement st = con.createStatement();
    //String query="update compte set nom='"+nom+"', prenom='"+prenom+"', adresse='"+adresse+"' where cin='"+cin+"'";
    int i = st.executeUpdate("update compte set nom='"+nom+"', prenom='"+prenom+"', adresse='"+adresse+"' where cin='"+cin+"'");
    
    if (i > 0) {
          
       
        response.sendRedirect("editprofle.jsp?email="+email);
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("home.jsp");
    }}
    catch(Exception e){
        out.print(e);
        out.print("problemo");
    }
%>
    </body>
</html>
