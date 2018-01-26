
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
.divstyl{
     width: 50%;
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
    <body></br></br>
    <center>
        <div class="divstyl">
        <form action="addUser" method="post">
            <table>
                <tr>
                <td>CIN Utilisateur: </td>
                <td><input type="text" name="cin" required=""class="form-control"/></td>
                </tr>
                <tr>
                <td>Nom Utilisateur: </td>
                <td><input type="text" name="nom" required="" class="form-control"/></td>
                </tr>
                <tr>
                <td>Prenom Utilisateur: </td>
                <td><input type="text" name="prenom" required="" class="form-control"/></td>
                </tr>
                <tr>
                <td>Email: </td>
                <td><input type="text" name="email" required=""class="form-control"/></td>
                </tr>
                <tr>
                <td>Mot de passe: </td>
                <td><input type="password" name="password" required="" class="form-control"/></td>
                </tr>
                <tr>
                <td>Adresse: </td>
                <td><input type="text"  name="adresse" required=""class="form-control"/></td>
                </tr>
                <tr>
                <td>Telephone: </td>
                <td><input type="text" name="tel" required="" class="form-control"/></td>
                </tr>
                
                <tr>
                <td>Type d'utilisateur: </td>
                <td><select name="type" required="" class="form-control">
                            <option value="gerant" class="form-control">Gerant restau</option> 
                            <option value="livreur" class="form-control" >Livreur</option> 
                        </select></td>
                </tr>
                
            </table>
                </br></br>  <input type="submit" value="Ajouter Utilisateur" class="btn btn-primary"/></a>
        </form></div></center>
    
</body>
</html>