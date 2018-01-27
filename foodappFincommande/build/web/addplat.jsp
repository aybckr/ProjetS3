<%-- 
    Document   : addplat
    Created on : 24 janv. 2018, 15:22:20
    Author     : Hajar
--%>

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
    background-color: #f2f2f2;
}



th {
    background-color: #E7A331;
    color: white;
}

.divstyle{
        
        width: 70%;
}
.divstylee{
        
        width: 35%;
        height: 100%;
  

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
        </header></br></br></br></br></br>
        
    <center><div class="divstylee">
            </br><center>
        <form action="addPlat" method="post">
            <table>
              
                <tr hidden="">
                <td>id restau: </td>
                <td><input type="text" name="idrestau" value="<%=Integer.parseInt(request.getParameter("res"))%>"/></td>
                </tr>
                <tr hidden="">
                <td>email: </td>
                <td><input type="text" name="email" value="<%=mail%>"/></td>
                </tr>
                <tr>
                <td>Nom Plat: </td>
                <td><input type="text" name="nomplat"/></td>
                </tr>
                 <tr>
                <td>Prix Plat: </td>
                <td><input type="number" name="prix"/></td>
                </tr>
                
            </table></center>
                </br></br>  <input type="submit" value="Ajouter plat" class="btn btn-primary"/></a>
        </form></div></center>
    </body>
</html>
