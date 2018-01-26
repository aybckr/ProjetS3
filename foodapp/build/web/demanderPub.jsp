<%-- 
    Document   : demandepub
    Created on : 16 déc. 2017, 20:56:05
    Author     : Hajar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                                        <li><a href="demanderPub.jsp">Demander PUB</a></li>
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
        </header> </br></br>
        </br></br></br>
    <center><h4>Envoyer un email maintenant pour diffuser votre PUB!</h4></center>
    </br>

    <center><form action = "" method = "post" enctype = "multipart/form-data">
        <div class="form-group">
            <input type="text" class="form-control" name="restau" placeholder="Restaurant" required="">
        </div>

        <div class="form-group">
            <input type="" class="form-control" name="date" placeholder="Date" required="">
        </div>
        <div class="form-group">
            <input type="" class="form-control" name="heure" placeholder="Heure" required="">
        </div>
        <div class="form-group">
            <textarea class="form-control" name="message" rows="3" placeholder="Ajouter une description ou un message"></textarea>
        </div>
        <div class="form-group">
            <input type = "file"   class="inputfile" name = "pub" placeholder="Deposer votre Pub en photo" required="" size = "50" />
            
        </div>
            Un email sera envoyé à l'Admin du site, Vous receverez la reponse en email.
        <div class="form-group">
                <input type="checkbox" value="1" required=""/> Accepter les termes.
        </div>

        <input type="submit" value="Envoyer" class="btn btn-primary">
        </form></center>	

</body>
</html>
