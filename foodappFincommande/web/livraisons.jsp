<%-- 
    Document   : livraisons
    Created on : 26 janv. 2018, 13:42:20
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

<!DOCTYPE html>
<html>
    <head>
                <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Livraisons</title>
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
.divatt{
    color:red;
    
}
</style>
    </head>
    <body>
        <%String mail=request.getParameter("email");%>
        </br></br>
        <header id="home" class="navbar-fixed-top">
                        <div class="main_menu_bg">
                            
                <div class="container"> 
                    <div class="row">
                        <nav class="navbar navbar-default">
                            <div class="container-fluid">
                                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                                    
                                    <ul class="nav navbar-nav navbar-right">
                                        <li><a href="profile.jsp?email=<%=mail%>&type=livreur">Accueil</a></li>                                      
                                        
                                        
                                        <li><a href="#contact">Contactez-nous</a></li>
                                        <li><a href="editprofle.jsp?email=<%=mail%>">Profil</a></li>
                                        <li><a href="home.jsp">Se Deconnecter</a></li>
         
                                    </ul>
                                </div>
                            </div>
                        </nav>
                    </div>
                </div>
        </header></br></br>
         <center> <h4>Liste des commandes nonlivrées </h4></br></br>        
        
         <%
try{
    
    Class.forName("org.apache.derby.jdbc.ClientDriver").newInstance();
    Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/FoodApp","hajar","hajar");
    Statement st = con.createStatement();
    String cinliv="select cin from compte where email='"+mail+"'";
    ResultSet rr=st.executeQuery(cinliv);
    String cin=null;
    while (rr.next())
        {cin=rr.getString("cin");}
    String query = "select * from commande where category='process' and cinlivreur='"+cin+"'";
    ResultSet rs = st.executeQuery(query);
        %>
        <div class="divstyle">
        <table >
        <tr>
            <th >ID Commande</th>
            <th hidden="">email</th>
            <th hidden="">ID Commande</th>
            <th>CIN client</th>
            <th>Date commande</th>
        
            
            <th>Confirmer Livraison<th>
           
       </tr>
    <%    while(rs.next()){      %>
       <tr>
           
            <td><%=Integer.parseInt(rs.getString("idcommande"))%></td>
            
            <td><%=rs.getString("cinclient")%></td>
            <td><%=rs.getDate("datecommande")%></td>
            <form method="post" action="livree">
            <td hidden=""><input type="email" name="email" value="<%=mail%>"</td>
            <td hidden=""><input type="number" name="idcommande" value="<%=Integer.parseInt(rs.getString("idcommande"))%>"</td>
            <td><input type="submit" value="Livrée" class="btn btn-primary"> </td> </form>
           
           
          
       </tr>
    
    
    <%}
    %>
        </table></div></br></br>
            
      
            
<%
    }catch(Exception e){
        out.print(e);
    }
%>
    </center>
        
        
    </body>
</html>
