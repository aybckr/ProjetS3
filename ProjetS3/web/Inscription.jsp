<%-- 
    Document   : Inscription
    Created on : 20 nov. 2017, 11:36:22
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
        </br></br>
    <center><h4>BIENVENUE!</h4></br>
        <form method="post" action="inscrip.jsp">
            
            <table>
                    <tr>
                        <td><input type="text" name="cin" placeholder="CIN" required="" class="form-control"/></td>
                    </tr>
                    <tr>
                        <td><input type="text" name="nom" placeholder="Nom" required="" class="form-control"/></td>
                    </tr>
                    <tr>
                        <td><input type="text" name="prenom" placeholder="Prenom" required="" class="form-control"/></td>
                    </tr>
                    <tr>
                        <td><input type="email" name="email" placeholder="Email" required="" class="form-control"/></td>
                    </tr>                   
                    <tr>
                        <td><input type="password" name="mdp" placeholder="Mot de passe" required="" class="form-control" /></td>
                    </tr>
                    <tr>
                        <td><input type="password" name="mdpconf" placeholder="Confirmez le mot de passe" required="" class="form-control" /></td>
                    </tr>
                    <tr>
                        <td><textarea class="form-control" name="adresse" rows="2" placeholder="Adresse"></textarea></td>
                    </tr>
                    <tr>
                        <td><input type="tel" name="tel" placeholder="Numero telephone" required="" class="form-control" /></td>
                    </tr>
                    <tr>
                        <td>
                        <select id="select" name='type' class="form-control" required="">
                            <option value="client" selected class="form-control">Client</option> 
                            <option value="livreur"  class="form-control">Livreur/option>
                            <option value="gerant"  class="form-control">Gerant d'un restau</option>
                        </select>
                        </td>
                    </tr>
            </table>

            </br>
                <input type="submit" value="S'inscrire" class="btn btn-primary" />

            </center>          
        </form>
        
    </body>
</html>
