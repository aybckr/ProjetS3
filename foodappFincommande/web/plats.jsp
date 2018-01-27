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
.divstyle{
        
        width: 70%;
}
</style>



    </head>
    <body>
       </br></br></br>
    <center> <h4>Resultat pour <%=request.getParameter("nomrestau")%> </h4>

</br></br>
<div class="divstyle">
          
            <form action="passerCommande" method="post">
        <table>
       <tr>
           <th>Nom du plat</th>
            <th>Prix</th>
            <th>Quantité</th>
            <th>Ajouter au panier</th>
       </tr>
       
    <c:forEach items="${plats}" var="plat" >
        <tr>
            
            <td><c:out value="${plat.nomPlat}"/></td>
            <td><c:out value="${plat.prix}" />Dh</td>
            
            <td><input type="number" name="quantite" value=""/></td>
            <td><input type="checkbox" name="choix" value="${plat.idPlat}"></td>
            
        </tr></br>
    </c:forEach>
        
        
            <tr>
                <td></td>
                <td></td>
              <td>      N'oublier pas de s'assurer de votre adresse

                         
            </td>
        </tr>
        </table></br>
        <input type="submit" value="Commander" class="btn btn-primary"/></center>
</form>    </div>
</body>
</html>
