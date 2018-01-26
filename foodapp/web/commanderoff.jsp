<%-- 
    Document   : searchcommande
    Created on : 16 déc. 2017, 19:40:13
    Author     : Hajar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Commander</title>
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
            @import url(https://fonts.googleapis.com/css?family=Cabin:400);
            body {
                background-color: #1E2E3B;
                font-size: 15px;
                color: #565656;
                width: 100%;
                padding: 0;
                margin-left: 0;
                margin-right: 0;
                font-family: 'roboto', sans-serif;
                font-weight: 300;
            }
            .webdesigntuts-workshop {

                height: 100%;
                position: absolute;
                text-align: center;
                width: 100%;
            }

            .webdesigntuts-workshop:before,
            .webdesigntuts-workshop:after {
                content: '';
                display: block;	
                height: 1px;
                left: 50%;
                margin: 0 0 0 -400px;
                position: absolute;
                width: 800px;
            }

            .webdesigntuts-workshop:before {
                background: #444;
                background: linear-gradient(left, #151515, #444, #151515);
                top: 192px;
            }

            .webdesigntuts-workshop:after {
                background: #000;
                background: linear-gradient(left, #151515, #000, #151515);	
                top: 191px;
            }

            .webdesigntuts-workshop form {
                background: #111;
                background: linear-gradient(#1b1b1b, #111);
                border: 1px solid #000;
                border-radius: 5px;
                box-shadow: inset 0 0 0 1px #272727;
                display: inline-block;
                font-size: 0px;
                margin: 150px auto 0;
                padding: 20px;
                position: relative;
                z-index: 1;
            }

            .webdesigntuts-workshop input {
                background: #222;	
                background: linear-gradient(#333, #222);	
                border: 1px solid #444;
                border-radius: 5px 0 0 5px;
                box-shadow: 0 2px 0 #000;
                color: #888;
                display: block;
                float: left;
                font-family: 'Cabin', helvetica, arial, sans-serif;
                font-size: 13px;
                font-weight: 400;
                height: 40px;
                margin: 0;
                padding: 0 10px;
                text-shadow: 0 -1px 0 #000;
                width: 200px;
            }

            .ie .webdesigntuts-workshop input {
                line-height: 40px;
            }

            .webdesigntuts-workshop input::-webkit-input-placeholder {
                color: #888;
            }

            .webdesigntuts-workshop input:-moz-placeholder {
                color: #888;
            }

            .webdesigntuts-workshop input:focus {
                animation: glow 800ms ease-out infinite alternate;
                background: #222922;
                background: linear-gradient(#333933, #222922);
                border-color: #393;
                box-shadow: 0 0 5px rgba(0,255,0,.2), inset 0 0 5px rgba(0,255,0,.1), 0 2px 0 #000;
                color: #efe;
                outline: none;
            }

            .webdesigntuts-workshop input:focus::-webkit-input-placeholder { 
                color: #efe;
            }

            .webdesigntuts-workshop input:focus:-moz-placeholder {
                color: #efe;
            }

            .webdesigntuts-workshop button {
                background: #222;
                background: linear-gradient(#333, #222);
                box-sizing: border-box;
                border: 1px solid #444;
                border-left-color: #000;
                border-radius: 0 5px 5px 0;
                box-shadow: 0 2px 0 #000;
                color: #fff;
                display: block;
                float: left;
                font-family: 'Cabin', helvetica, arial, sans-serif;
                font-size: 13px;
                font-weight: 400;
                height: 40px;
                line-height: 40px;
                margin: 0;
                padding: 0;
                position: relative;
                text-shadow: 0 -1px 0 #000;
                width: 80px;
            }	

            .webdesigntuts-workshop button:hover,
            .webdesigntuts-workshop button:focus {
                background: #292929;
                background: linear-gradient(#393939, #292929);
                color: #E7A331;
                outline: none;
            }

            .webdesigntuts-workshop button:active {
                background: #292929;
                background: linear-gradient(#393939, #292929);
                box-shadow: 0 1px 0 #000, inset 1px 0 1px #222;
                top: 1px;
            }

            @keyframes glow {
                0% {
                    border-color: #E7A331;
                    box-shadow: 0 0 5px rgba(0,255,0,.2), inset 0 0 5px rgba(0,255,0,.1), 0 2px 0 #000;
                }	
                100% {
                    border-color: #E7A331;
                    box-shadow: 0 0 20px rgba(0,255,0,.6), inset 0 0 10px rgba(0,255,0,.4), 0 2px 0 #000;
                }
            }
            h4 {
                font-size:1.875rem;
                line-height: 2.2rem;
                margin-bottom: 1.1rem;
                font-family: 'Pacifico', cursive;

            }



        </style>
    </head>
    <body>
     
        </br></br>
        <header id="home" class="navbar-fixed-top">
                        <div class="main_menu_bg">
                            
                <div class="container"> 
                    <div class="row">
                        <nav class="navbar navbar-default">
                            <div class="container-fluid">
                                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                                    
                                     <form action="login.jsp" methode="post" >
                                            <ul class="nav navbar-nav navbar-right">
                                                <li><input type="email" name="email" placeholder="Email" required="" class="form-control"/></li>
                                                <li><input type="password" name="mdp" placeholder="Mot de passe" required="" class="form-control" /></li>
                                                <li><a><input type="submit" value="Se connecter" class="btn btn-primary" /></a></li>
                                                <li><a href="inscription.jsp"><input type="button" value="S'inscrire" class="btn btn-primary"/></a></li>
                                                 
                                                <!--li><a href="inscription.jsp"><input type="button" value="S'inscrire" class="btn btn-primary"/></a></li-->
                                            </ul>
                                        </form>
                                </div>
                            </div>
                        </nav>
                    </div>
                </div>
        </header></br></br></br>
        
        </br><center><h4>Chercher le menu de votre restaurant préféré!</h4></center>
        

        <section class="webdesigntuts-workshop">
            
            <form action="chercherCommandeoff" method="get">		    
                
                  <input type="search" name="nomrestau" placeholder="Restaurant" class="form-control"> 		    	
                <button>Rechercher</button>
            </form>
        </section>
    </body>
</html>
