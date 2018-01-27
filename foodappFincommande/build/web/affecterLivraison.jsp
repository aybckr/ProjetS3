<%-- 
    Document   : plats
    Created on : 22 janv. 2018, 17:16:08
    Author     : Hajar
--%>

<%@page import="org.beans.Commande"%>
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
        
        width: 90%;
}
</style>



    </head>
    <body>
         </br></br></br>
    <center> <h4>Commandes affectées au livreur </h4>

</br></br>

          
        <div class="divstyle" >
        <table>
       <tr>
          
            <th>CIN client</th>
            <th>Date Commande</th>
            <th>Date livraison</th>
            <th>Date livreur</th>
           
       </tr>
               <% try{
            String livreur=request.getParameter("cin");
             String email=request.getParameter("email");
            
            Class.forName("org.apache.derby.jdbc.ClientDriver").newInstance();
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/FoodApp","hajar","hajar");
            Statement st = con.createStatement();
            String query = "select * from commande where cinlivreur='"+livreur+"'";
            ResultSet rs = st.executeQuery(query);
            List<Commande> commandes =new ArrayList<Commande>();
                    while(rs.next()){
                Commande commande=new Commande();
              
            commande.setIdCommande(Integer.parseInt(rs.getString("idcommande")));
            
            commande.setCinClient(rs.getString("cinclient"));
            commande.setCinlivreur(rs.getString("cinlivreur"));
            commande.setDateCommande(rs.getDate("datecommande"));
            commande.setDateLivraison(rs.getDate("datelivraison"));
            commande.setDatelivreur(rs.getDate("datelivreur"));
   
           
            
        %>
        <tr>
            <td><c:out value="<%=rs.getString("cinclient")%>" /></td>
            <td><c:out value="<%=commande.getDateCommande()%>" /></td>
            <td><c:out value="<%=commande.getDateLivraison()%>" /></td>
            <td><c:out value="<%=commande.getDatelivreur()%>" /></td>
           

        </tr>
 
    <% }%>
        </table></br>
        
        <form action="commandeAffectee" method="post">
            <input hidden="" name="cin" value="<%=livreur%>" />
            <input hidden="" name="email" value="<%=email%>" />
            <input hidden="" name="idcommande" value="<%=request.getParameter("idcommande")%>" />
            <!-- ici envoi d un mail au livreur -->
            <input type="submit" value="Lui ajouter la commande selectionnée" class="btn btn-primary"/>  </form> </div></center> 
    <%}catch(Exception e){
            
        } %>
</body>
</html>
