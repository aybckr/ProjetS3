<%-- 
    Document   : plats
    Created on : 22 janv. 2018, 17:16:08
    Author     : Hajar
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.beans.Plat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html>
    <head>
<meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Utilisateurs</title>
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

        <script src="assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
   <style>
table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align: left;
    padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
    background-color: #E7A331;
    color: white;
}
.divstyle{
        
        width: 100%;
}
</style>
    </head>
    <header id="home" class="navbar-fixed-top">
                        <div class="main_menu_bg">
                            
                <div class="container"> 
                    <div class="row">
                        <nav class="navbar navbar-default">
                            <div class="container-fluid">
                                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                                    
                                    <ul class="nav navbar-nav navbar-right">
                                        <li><a href="gestionUsers.jsp">Gestion utilisateurs</a></li>
                                        <li><a href="gestionPub.jsp">Modifier PUB</a></li>
                                        
                                        <li><a href="gestionCommande.jsp"> Gestion Commandes</a></li>
                                        <li><a href="home.jsp">Se Deconnecter</a></li>
         
                                    </ul>
                                </div>
                            </div>
                        </nav>
                    </div>
                </div>
        </header></br></br>
    <body></br></br></br>
    <center> <h4>Modification Utilisateurs </h4></br></br>        
        
         <%
try{
    
    Class.forName("org.apache.derby.jdbc.ClientDriver").newInstance();
    


    Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/FoodApp","hajar","hajar");
    Statement st = con.createStatement();
    String query = "select * from compte where category!='absent'";
    ResultSet rs = st.executeQuery(query);
        %>
        <div class="divstyle">
        <table >
        <tr>
            <th hidden="">CIN</th>
            <th hidden="">type</th>
            <th>Nom complet</th>
            <th>Type</th>
            <th>Email</th>
            <th>Mot de passe</th>
            <th>Adresse</th>
            <th>Telephone</th>
           <th></th>
           <th></th>
       </tr>
    <%    while(rs.next()){      %>
       <tr>
           <form method="post" action="deleteUser">
            <td hidden=""><input type="text"  name="cin" value="<%=rs.getString("cin")%>"/></td> 
            <td hidden=""><input type="text"  name="type" value="<%=rs.getString("type")%>"/></td>
            <td ><%=rs.getString("nom")%> <%=rs.getString("prenom")%></td>    
            <td ><%=rs.getString("type")%></td> 
            <td ><%=rs.getString("email")%></td> 
             <td><input type="password"  name="mdp" value="<%=rs.getString("password")%>"/></td>
             <td ><%=rs.getString("adresse")%></td>
           <td><%=rs.getString("tel")%></td>
           <td><input type="submit" name='button' value="Modifier" class="btn btn-primary"> </td>
           <td><input type="submit" name='button' value="Supprimer" class="btn btn-primary"> </td>
           
           </form>
       </tr>
    
    
    <%}
    %>
            </table></div></br></br>
            
        <a href="addUser.jsp"> <input type="button" value="Ajouter Utilisateur" class="btn btn-primary"/></a>
            
<%
    }catch(Exception e){
        out.print(e);
    }
%>
    </center>
            
</body>
</html>
