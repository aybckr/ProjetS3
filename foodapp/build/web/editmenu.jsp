<%-- 
    Document   : editmenu
    Created on : 24 janv. 2018, 09:09:55
    Author     : Hajar
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
                <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Menu</title>
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
                                        <li><a href="profile.jsp?email=<%=mail%>&type=gerant">Accueil</a></li>                                      
                                        <li><a href="demanderPub.jsp?email=<%=mail%>">Demander PUB</a></li>
                                        <li><a href="editmenu.jsp?email=<%=mail%>">Mon Menu</a></li>
                                        
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
        <%
try{
    
    Class.forName("org.apache.derby.jdbc.ClientDriver").newInstance();
    


    Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/FoodApp","hajar","hajar");
    Statement st = con.createStatement();
    String query = "select * from plat,restau,gerantrestau,compte where plat.idrestau=restau.idrestau and restau.cinrestau=gerantrestau.cinrestau=compte.cin and compte.email='"+mail+"' and plat.categoryplat!='absent'";
    ResultSet rs = st.executeQuery(query);
        %>
    </br></br><center><h4>VOTRE MENU: </h4></br><div class='divatt'>ATTENTION: La supression d'un plat est irreversible</div></br>
    <div class="divstyle">
        
         <table>
        <tr>
            <th hidden="" >mail gerant</th>
            <th hidden="" >ID du restau</th>
            <th hidden="" >ID du plat</th>
           <th>Nom du plat</th>
            <th>Prix plat</th>
            <th>Supprimer plat</th>
       </tr>
    <%int idrestau=0;
        while(rs.next()){
      idrestau=Integer.parseInt(rs.getString("idrestau"));
      %>
       <tr>
           <form method="post" action="deletePlat">
            <td hidden=""><input type="email"  name="email" value="<%=mail%>" /></td>    
            <td hidden=""><input type="number"  name="idrestau" value="<%=Integer.parseInt(rs.getString("idrestau"))%>" /></td> 
            <td hidden=""><input type="number"  name="idplat" value="<%=Integer.parseInt(rs.getString("idplat"))%>" /></td>   
           <td><input type="text"  name="nomplat" value="<%=rs.getString("nomplat")%>"/></td>
           <td><input type="number"  name="prixplat" value="<%=Integer.parseInt(rs.getString("prix"))%>"/></td>
           <td><input type="submit" value="Supprimer" class="btn btn-primary"> </td></form>
       </tr>
    
    
    <%}
    %>
        </table>
    </br></br>
    
    <a href="addplat.jsp?email=<%=mail%>&res=<%=idrestau%>"><input type="button" value="Ajouter des plats" class="btn btn-primary"/></a>
        
    </div></center>
<%
    }catch(Exception e){
        out.print(e);
    }
%>
    </body>
</html>
