<%-- 
    Document   : plats
    Created on : 22 janv. 2018, 17:16:08
    Author     : Hajar
--%>

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
        <title>Commande</title>
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
</style>



    </head>
    <body>
       </br></br></br>
    <center> <h4>Commandes affectées au livreur </h4>

</br></br>
        
          
            
        <table>
       <tr>
          
            <th>CIN client</th>
            <th>Date Commande</th>
            <th>Date livraison</th>
            <th>Date livreur</th>
           
       </tr>
       
    <c:forEach items="${commandes}" var="commande" >
        <tr>
            
         
            <td><c:out value="${commande.cinclient}" /></td>
            <td><c:out value="${commande.datecommande}" /></td>
            <td><c:out value="${commande.datelivraison}" /></td>
            <td><c:out value="${commande.datelivreur}" /></td>
           

        </tr></br>
    </c:forEach>

        </table></br>
        <form action="commandeAffectee" method="post">
            <input hidden="" name="cin" value="${commandes(0).cinlivreur}" />
            <input hidden="" name="idcommande" value="${idcommande}" />
            <!-- ici envoi d un mail au livreur -->
       <input type="submit" value="Lui ajouter la commande selectionnée" class="btn btn-primary"/>  </form></center> 
</body>
</html>
