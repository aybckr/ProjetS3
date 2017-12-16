<%-- 
    Document   : inscrip
    Created on : 20 nov. 2017, 11:44:13
    Author     : Hajar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%
            try {
                String nom = request.getParameter("nom");
                String cin = request.getParameter("cin");
                String prenom = request.getParameter("prenom");
                String email = request.getParameter("email");
                String mdp = request.getParameter("mdp");
                String type = request.getParameter("type");
                String mdpconf = request.getParameter("mdpconf");
                String adresse = request.getParameter("adresse");
                String tel = request.getParameter("tel");
                Class.forName("org.apache.derby.jdbc.ClientDriver").newInstance();

                Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/FoodApp", "hajar", "hajar");
                Statement st = con.createStatement();
                //ResultSet rs;
               
                    int i=0;
                    if (type.equals("client")){
                    i = st.executeUpdate("insert into compte (CIN,Nom, Prenom, Email,password,type,tel,adresse) values ('" + cin + "','" + nom + "','" + prenom + "','" + email + "','" + mdp + "','" + type +"','"+tel+"','"+adresse+"')");
                    int j = st.executeUpdate("insert into client (cinclient) values ('" + cin +"')");
                   
                    if (i > 0 && mdpconf.equals(mdp)) {

                    //session.setAttribute("userid", user);
                    response.sendRedirect("success.jsp?email="+email+"&type="+type);
                    // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
                } else {
                    response.sendRedirect("index.jsp");
                }}
                    if (type.equals("gerant")){
                    i = st.executeUpdate("insert into compte (CIN,Nom, Prenom, Email,password,type,tel,adresse) values ('" + cin + "','" + nom + "','" + prenom + "','" + email + "','" + mdp + "','" + type +"','"+tel+"','"+adresse+"')");
                    int j = st.executeUpdate("insert into gerantrestau (cinrestau) values ('" + cin +"')");
                   
                    if (i > 0 && mdpconf.equals(mdp)) {

                    //session.setAttribute("userid", user);
                    response.sendRedirect("success.jsp?email="+email+"&type="+type);
                    // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
                } else {
                    response.sendRedirect("index.jsp");
                }}
                    if (type.equals("livreur")){
                    i = st.executeUpdate("insert into compte (CIN,Nom, Prenom, Email,password,type,tel,adresse) values ('" + cin + "','" + nom + "','" + prenom + "','" + email + "','" + mdp + "','" + type +"','"+tel+"','"+adresse+"')");
                    int j = st.executeUpdate("insert into livreur (cinrestau) values ('" + cin +"')");
                   
                    if (i > 0 && mdpconf.equals(mdp)) {

                    //session.setAttribute("userid", user);
                    response.sendRedirect("success.jsp?email="+email+"&type="+type);
                    // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
                } else {
                    response.sendRedirect("index.jsp");
                }}
            } catch (Exception e) {
                out.print(e);
            }
        %>

    </body>
</html>
