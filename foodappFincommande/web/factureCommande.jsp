<%-- 
    Document   : factureCommande
    Created on : 23 janv. 2018, 12:14:35
    Author     : Hajar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html>
    <head>
<meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Facture</title>
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
        </br></br>
    <center><h4>VOTRE FACTURE:</h4>
    
            <h3>ID de votre commande: <c:out value="${commande.idCommande}"/> </h3>
            <div class="divstyle">  
    <table>
        <tr>
           <th>Nom du plat</th>
            <th>Prix plat</th>
            <th>Quantité commandée</th>
            <th>Somme</th>
       </tr>
       <%int total=0;%>
      <c:forEach items="${lignes}" var="ligne" >
      <tr>
                        
            <td><c:out value="${ligne.nomPlat}"/></td> 
            <td><c:out value="${ligne.prixLigne/ligne.quantité}"/></td>
            <td><c:out value="${ligne.quantité}"/></td>
            <td><c:out value="${ligne.prixLigne}"/></td>
            
            
      </tr> </c:forEach>
      <th></th>
      <th></th>
      <th>Total: </th>
      <td><c:out value="${commande.total}"/> </td>
      
    </table></div>
    Le paiement par espece ou carte bancaire sera à la livraison
    <img src="assets/delivery.png" alt="Delivery"> 
    </center>
    </body>
</html>
