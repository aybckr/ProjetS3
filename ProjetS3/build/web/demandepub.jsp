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
        </br>
    <center><h4>Envoyer un email maintenant pour diffuser votre PUB!</h4></center>


    <center><form action="#" id="formid">
        <div class="form-group">
            <input type="text" class="form-control" name="restau" placeholder="Restaurant" required="">
        </div>
        <div class="form-group">
            <input type="text" class="form-control" name="nbre" placeholder="nombre de personnes" required="">
        </div>

        <div class="form-group">
            <input type="" class="form-control" name="date" placeholder="Date" required="">
        </div>
        <div class="form-group">
            <input type="" class="form-control" name="heure" placeholder="Heure" required="">
        </div>
        <div class="form-group">
            <input type="" class="form-control" name="lien" placeholder="Deposer votre Pub en photo" required="">
        </div>


        <div class="form-group">
            <textarea class="form-control" name="message" rows="3" placeholder="Ajouter une description ou un message"></textarea>
        </div>
            Un email sera envoyé à l'Admin du site, Vous receverez la reponse en email aussi.
            <div class="form-group">
                <input type="checkbox"/> Accepter les termes.
            </div>
        <input type="submit" value="Envoyer" class="btn btn-primary">
        </form></center>	

</body>
</html>
