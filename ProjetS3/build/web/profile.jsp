<%-- 
    Document   : profile
    Created on : 21 nov. 2017, 23:04:20
    Author     : Hajar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Food App</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="apple-touch-icon" href="apple-touch-icon.png">

        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link href='https://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">
        <!--        <link rel="stylesheet" href="assets/css/bootstrap-theme.min.css">-->


        <!--For Plugins external css-->
        <link rel="stylesheet" href="assets/css/animate/animate.css" />
        <link rel="stylesheet" href="assets/css/plugins.css" />

        <!--Theme custom css -->
        <link rel="stylesheet" href="assets/css/style.css">

        <!--Theme Responsive css-->
        <link rel="stylesheet" href="assets/css/responsive.css" />
   
        
        
    </head>
    <body>
        </br></br></br>
        <%
try{
    String nom = request.getParameter("nom"); 
    String cin = request.getParameter("cin"); 
    String prenom = request.getParameter("prenom");
    String email = request.getParameter("email");
    String mdp = request.getParameter("mdp");
    Class.forName("org.apache.derby.jdbc.ClientDriver").newInstance();
    String mail=request.getParameter("email");

    Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/FoodApp","hajar","hajar");
    Statement st = con.createStatement();
    String query = "select * from compte where email='"+mail+"'";
    ResultSet rs = st.executeQuery(query);
    while(rs.next()){
        %><h4>Modifier votre profil:</h4>
                                <div class="single_widget_form text-left">
                                    <form method="post" action="edit.jsp?cin=<%=rs.getString("CIN")%>">
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="nom" value="<%=rs.getString("Nom")%>">
                                        </div>

                                        <div class="form-group">
                                            <input type="text" class="form-control" name="prenom" value="<%=rs.getString("Prenom")%>">
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control" name="mdp" value="<%=rs.getString("password")%>">
                                        </div>
                                        <div class="form-group">
                                            <input row="2" class="form-control" name="adresse" value="<%=rs.getString("adresse")%>">
                                        </div>
                                        <!--<div class="form-group">
                                            <input type="email" class="form-control" value="<%--=rs.getString("Email")--%>">
                                        </div> 
                                        <div class="form-group">
                                                <input type="password" class="form-control" placeholder="Changer votre Mdp">
                                        </div>            -->                            
                                        <input type="submit" value="Enregistrer Les Modifications" class="btn btn-primary">
                                    </form>	
                                </div>
    <%}
    }
    catch(Exception e){
        out.print(e);
    }
%>
        
    </body>
</html>
