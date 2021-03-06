<%-- 
    Document   : index
    Created on : 20 nov. 2017, 11:47:14
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

        <script src="assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
   
        
        
    </head>
    <body>
        </br></br></br>
        
        <div class='preloader'><div class='loaded'>&nbsp;</div></div>
        <header id="home" class="navbar-fixed-top">
            <div class="header_top_menu clearfix">	
                <div class="container">
                    <div class="row">	
                        <div class="col-md-5 col-md-offset-3 col-sm-12 text-right">
                            <div class="call_us_text">
								<a href=""><i class="fa fa-clock-o"></i>24/7</a>
								<!--a href=""><i class="fa fa-phone"></i> 0633613470</a-->
							</div>
                        </div>

                        <div class="col-md-4 col-sm-12">
                            <div class="head_top_social text-right">
                                <a href=""><i class="fa fa-facebook"></i></a>
                                <a href=""><i class="fa fa-google-plus"></i></a>
                                <a href=""><i class="fa fa-twitter"></i></a>
                                <a href=""><i class="fa fa-linkedin"></i></a>
                                <a href=""><i class="fa fa-pinterest-p"></i></a>
                                <a href=""><i class="fa fa-youtube"></i></a>
                                <a href=""><i class="fa fa-phone"></i></a>
                                <a href=""><i class="fa fa-camera"></i></a>
                            </div>	
                        </div>

                    </div>			
                </div>
            </div>

            <!-- End navbar-collapse-->

            <div class="main_menu_bg">
                <div class="container"> 
                    <div class="row">
                        <nav class="navbar navbar-default">
                            <div class="container-fluid">
                                <!-- Brand and toggle get grouped for better mobile display -->
                                <div class="navbar-header">
                                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                                        <span class="sr-only">Toggle navigation</span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                    </button>
                                    <a class="navbar-brand our_logo" href="#"><img src="assets/images/logo.png" alt="" /></a>
                                </div>
<%
String type=request.getParameter("type");
String email=request.getParameter("email");
%>
                                <!-- Collect the nav links, forms, and other content for toggling -->
                                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

                                    <ul class="nav navbar-nav navbar-right">
                                        <li><a href="profile.jsp?email=<%=email%>&type=<%=type%>">Accueil</a></li>
                                        <% if(type.equals("client")){%>
                                        <li><a href="commander.jsp?email=<%=email%>">Commander</a></li>                                  
                                        <li><a href="reserver.jsp?email=<%=email%>">Reserver Table</a></li>
                                        <li><a href="#contact">Contacter-nous</a></li>
                                        <li><a href="editprofle.jsp?email=<%=email%>">Profil</a></li>
                                        
                                         <%}%>
                                        <% if(type.equals("gerant")){%>
                                        <li><a href="demanderPub.jsp?email=<%=email%>">Demander PUB</a></li>
                                        <li><a href="editmenu.jsp?email=<%=email%>">Mon Menu</a></li>
                                        <li><a href="#contact">Contacter-nous</a></li>
                                        <li><a href="editprofle.jsp?email=<%=email%>">Profil</a></li>
                                         <%}%>
                                        
                                        <% if(type.equals("livreur")){%>
                                        <li><a href="livraisons.jsp?email=<%=email%>">Valider livraisons</a></li>
                                        <li><a href="#contact">Contacter-nous</a></li>
                                        <li><a href="editprofle.jsp?email=<%=email%>">Profil</a></li><%}%>
                                        
                                        
                                        <% if(type.equals("admin")){%>
                                        <li><a href="gestionUsers.jsp">Gestion utilisateurs</a></li>
                                        <li><a href="gestionPub.jsp"> Gestion PUB</a></li>
                                        <li><a href="gestionCommande.jsp"> Gestion Commandes</a></li>
                                        <li><a href="editprofle.jsp?email=<%=email%>">Profil</a></li>
                                        <%}%>
                                        
                                        <li><a href="home.jsp">Se Deconnecter</a></li>

                                        
                                    </ul>
                                </div><!-- /.navbar-collapse -->
                            </div><!-- /.container-fluid -->
                        </nav>
                    </div>
                </div>
            </div>	
        </header> <!-- End Header Section -->

        <section id="slider" class="slider">
            <div class="slider_overlay">
                <div class="container">
                    <div class="row">
                        <div class="main_slider text-center">
                            <div class="col-md-12">
                                <div class="main_slider_content wow zoomIn" data-wow-duration="1s">
                                    <h1>Publicité</h1>
                                    <p>Ici sera publié les publicités des restaurants </p>
                                  <!--  <button href=" " class="btn-lg">Click here</button>-->
                                </div>
                            </div>	
                        </div>

                    </div>
                </div>
            </div>
        </section>

        <section id="abouts" class="abouts">
            <div class="container">
                <div class="row">
                    <div class="abouts_content">
                        <div class="col-md-6">
                            <div class="single_abouts_text text-center wow slideInLeft" data-wow-duration="1s">
                                <img src="assets/images/ab.png" alt="" />
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="single_abouts_text wow slideInRight" data-wow-duration="1s">
                                <h4>A propos de nous</h4>
                                <h3>Rapidité !!</h3>
                                <p>FOOD APP est une paltforme de livraisons et réservartions restaurants.</p>

                                <p>FOOD APP depasse la rapidité de livrer les commandes et la performance de reservation des tables d'un restaurant specifique pour arriver à donner la possibilité aux restaurants de demander la diffusion de leur Pub.</p>
                                <!--
                                <a href="" class="btn btn-primary">click here</a>
                                -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        

        <section id="portfolio" class="portfolio">
            <div class="container">
                <div class="row">
                    <div class="portfolio_content text-center  wow fadeIn" data-wow-duration="5s">
                        <div class="col-md-12">
                            <div class="head_title text-center">
                                <h4>Nos plats proposés</h4>
                            </div>

                            <div class="main_portfolio_content">
                                <div class="col-md-3 col-sm-4 col-xs-6 single_portfolio_text">
                                    <img src="assets/images/p1.png" alt="" />
                                    <div class="portfolio_images_overlay text-center">
                                        <h6>Fan Du Pepperoni</h6>
                                        <h6>Pizza Hut</h6>
                                        <p class="product_price">12DH</p>
                                        <a href="" class="btn btn-primary">Click here</a>
                                    </div>
                                </div>
                                <div class="col-md-3 col-sm-4 col-xs-6 single_portfolio_text">
                                    <img src="assets/images/p2.png" alt="" />
                                    <div class="portfolio_images_overlay text-center">
                                        <h6>Big Tasty</h6>
                                        <h6>Mcdonald's</h6>
                                        <p class="product_price">25DH</p>
                                        <a href="" class="btn btn-primary">Click here</a>
                                    </div>								
                                </div>
                                <div class="col-md-3 col-sm-4 col-xs-6 single_portfolio_text">
                                    <img src="assets/images/p1.png" alt="" />
                                    <div class="portfolio_images_overlay text-center">
                                        <h6>Fan Du Pepperoni</h6>
                                        <h6>Pizza Hut</h6>
                                        <p class="product_price">12DH</p>
                                        <a href="" class="btn btn-primary">Click here</a>
                                    </div>								
                                </div>
                                <div class="col-md-3 col-sm-4 col-xs-6 single_portfolio_text">
                                    <img src="assets/images/p1.png" alt="" />
                                    <div class="portfolio_images_overlay text-center">
                                        <h6>Fan Du Pepperoni</h6>
                                        <h6>Pizza Hut</h6>
                                        <p class="product_price">12DH</p>
                                        <a href="" class="btn btn-primary">Click here</a>
                                    </div>								
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section id="ourPakeg" class="ourPakeg">
            <div class="container">
                <div class="main_pakeg_content">
                    <div class="row">
                        <div class="head_title text-center">
                            <h4>Quelques Menus</h4>
                            
                        </div>

                        <div class="single_pakeg_one text-right wow rotateInDownRight">
                            <div class="col-md-6 col-md-offset-6 col-sm-8 col-sm-offset-4">
                                <div class="single_pakeg_text">
                                    <div class="pakeg_title">
                                        <h4>Pizza Hut</h4>
                                    </div>

                                    <ul>
                                        <li> Pizza........................................................24.5 DH</li>
                                        <li> Pizza........................................................24.5 DH</li>
                                        <li> Pizza........................................................24.5 DH</li>
                                        <li> Pizza........................................................24.5 DH</li>
                                        <li> Pizza........................................................24.5 DH</li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="single_pakeg_two text-left wow rotateInDownLeft">
                            <div class="col-md-6 col-sm-8">
                                <div class="single_pakeg_text">
                                    <div class="pakeg_title">
                                        <h4>Pinchos </h4>
                                    </div>

                                    <ul>
                                        <li> Lasagne........................................................50 DH </li>
                                        <li> Lasagne........................................................50 DH </li>
                                        <li> Lasagne........................................................50 DH </li>
                                        <li> Lasagne........................................................50 DH </li>
                                        <li> Lasagne........................................................50 DH </li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="single_pakeg_three text-left wow rotateInDownRight">
                            <div class="col-md-6 col-md-offset-6 col-sm-8 col-sm-offset-4">
                                <div class="single_pakeg_text">
                                    <div class="pakeg_title">
                                        <h4>Abtal</h4>
                                    </div>

                                    <ul>
                                        <li> Cake glacé........................................................24.5 DH </li>
                                        <li> Cake glacé........................................................24.5 DH </li>
                                        <li> Cake glacé........................................................24.5 DH </li>
                                        <li> Cake glacé........................................................24.5 DH </li>
                                        <li> Cake glacé........................................................24.5 DH </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

    

        <section id="footer_widget" class="footer_widget">
            <div class="container">
                <div class="row">
                    <div class="footer_widget_content text-center">
                        <div class="col-md-4">
                            <div class="single_widget wow fadeIn" data-wow-duration="2s">
                                <h3>Adresse </h3>

                                <div class="single_widget_info">
                                    <p>AlIrfane ENSIAS

                                        <span>Rabat,</span>
                                        <span class="phone_email">phone: 0666666666</span>
                                        <span>Email: foodapp@gmail.com</span></p>
                                </div>

                                <div class="footer_socail_icon">
                                    <a href=""><i class="fa fa-facebook"></i></a>
                                    <a href=""><i class="fa fa-google-plus"></i></a>
                                    <a href=""><i class="fa fa-twitter"></i></a>
                                    <a href=""><i class="fa fa-linkedin"></i></a>
                                    <a href=""><i class="fa fa-pinterest-p"></i></a>
                                    <a href=""><i class="fa fa-youtube"></i></a>
                                    <a href=""><i class="fa fa-phone"></i></a>
                                    <a href=""><i class="fa fa-camera"></i></a>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="single_widget wow fadeIn" data-wow-duration="4s">
                                <h3>Disponibilité</h3>

                                <div class="single_widget_info">
                                    <p><span class="date_day"> Lundi au Vendredi</span>
                                        <span>8:00am to 11:00pm</span>
                                        <span class="date_day">Samedi et Dimanche</span>
                                        <span>24/24 </span>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="single_widget wow fadeIn" data-wow-duration="5s">
                                <h3>Vos avis</h3>

                                <div class="single_widget_form text-left">
                                    <form action="#" id="formid">
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="name" placeholder="Prénom" required="">
                                        </div>

                                        <div class="form-group">
                                            <input type="email" class="form-control" name="email" placeholder="Email" required="">
                                        </div>

                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Sujet">
                                        </div> <!-- end of form-group -->

                                        <div class="form-group">
                                            <textarea class="form-control" name="message" rows="3" placeholder="Message"></textarea>
                                        </div>

                                        <input type="submit" value="Envoyer" class="btn btn-primary">
                                    </form>	
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>



        <!--Footer-->
        <footer id="footer" class="footer">
            <div class="container text-center">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="copyright wow zoomIn" data-wow-duration="3s">
							<p>2017. Tous Les Droits Reservés</p>
						</div>
                    </div>
                </div>
            </div>
        </footer>
		
		<div class="scrollup">
			<a href="#"><i class="fa fa-chevron-up"></i></a>
		</div>		


        <script src="assets/js/vendor/jquery-1.11.2.min.js"></script>
        <script src="assets/js/vendor/bootstrap.min.js"></script>

        <script src="assets/js/jquery-easing/jquery.easing.1.3.js"></script>
        <script src="assets/js/wow/wow.min.js"></script>
        <script src="assets/js/plugins.js"></script>
        <script src="assets/js/main.js"></script>
    </body>
    
</html>
