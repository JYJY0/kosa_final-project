<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
<!--<![endif]-->

<head>
    <meta charset="UTF-8">
    <title>SevenApp - Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <link rel="shortcut icon" href="favicon.ico">
	
    <link rel="stylesheet" href="<c:url value="/resources/chatbot/css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/chatbot/css/animate.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/chatbot/css/font-awesome.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/chatbot/css/owl.carousel.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/chatbot/css/owl.theme.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/chatbot/css/styles.css"/>">
    <script src="<c:url value="/resources/chatbot/js/modernizr.custom.32033.js"/>"></script>

    <!--[if IE]><script type="text/javascript" src="js/excanvas.compiled.js"></script><![endif]-->

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <div class="pre-loader">
        <div class="load-con">
        
            <img src="<c:url value="/resources/chatbot/img/logo.png"/>" class="animated fadeInDown" alt="">
            <div class="spinner">
              <div class="bounce1"></div>
              <div class="bounce2"></div>
              <div class="bounce3"></div>
            </div>
        </div>
    </div>

    <!-- Wrap all page content here -->
    <div id="wrap">

        <header class="masthead">
            <div class="slider-container" id="slider">
                <div class="container">
                    <div class="row mh-container">
                        <h1><span>Perfect </span> Cloudy Night</h1>
                        <h3>New Popular Application</h3>
                        <div class="col-md-4 col-md-push-4">
                            <div class="btn-group btn-group-justified btn-lg small">
                                <div class="btn-group">
                                    <a href="#" class="btn btn-default scrollpoint sp-effect6">
                                        <span class="apple"></span>
                                    </a>
                                </div>
                                <div class="btn-group">
                                    <a href="#" class="btn btn-default scrollpoint sp-effect6">
                                        <span class="play"></span>
                                    </a>
                                </div>
                                <div class="btn-group">
                                    <a href="#" class="btn btn-default scrollpoint sp-effect6">
                                        <span class="android"></span>
                                    </a>
                                </div>
                                <div class="btn-group">
                                    <a href="#" class="btn btn-default scrollpoint sp-effect6">
                                        <span class="windows"></span>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-10 col-md-push-1 hidden-xs mh-slider">
                            <div class="row">
                                <div class="col-md-3">
                                    <a href="#" class="btn btn-default side">Download now!</a>
                                </div>
                                <div class="col-md-6">
                                    <div id="carousel-slider" class="carousel slide" data-ride="carousel">

                                        <!-- Wrapper for slides -->
                                        <div class="carousel-inner">
                                            <div class="item active">
                                            
                                                <img src="<c:url value="/resources/chatbot/img/slide1.png"/>" alt="..." class="img-responsive">
                                            </div>                                            
                                            <div class="item">
                                                <img src="<c:url value="/resources/chatbot/img/slide1.png"/>" alt="..." class="img-responsive">
                                            </div>
                                        </div>

                                        <!-- Controls -->
                                        <a class="left carousel-control" href="#carousel-slider" role="button" data-slide="prev">
                                            <span class="slider-left"></span>
                                        </a>
                                        <a class="right carousel-control" href="#carousel-slider" role="button" data-slide="next">
                                            <span class="slider-right"></span>
                                        </a>
                                    </div>

                                </div>
                                <div class="col-md-3">
                                    <a href="#" class="btn btn-empty side">learn more</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Fixed navbar -->
            <div class="navbar navbar-static-top" id="nav" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                            <span class="sr-only">Toggle navigation</span>
                            <i class="fa fa-align-justify"></i>
                        </button>
                        <a class="navbar-brand" href="#">
                            <img src="<c:url value="/resources/chatbot/img/logo.png"/>" alt="">
                        </a>
                    </div>

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav social hidden-xs hidden-sm">
                            <li><a href="#"><i class="fa fa-google-plus fa-lg fa-fw"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter fa-lg fa-fw"></i></a></li>
                            <li><a href="#"><i class="fa fa-facebook fa-lg fa-fw"></i></a></li>
                            <li><a href="#"><i class="fa fa-pinterest fa-lg fa-fw"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin fa-lg fa-fw"></i></a></li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li class="active"><a href="#slider">Home</a></li>
                            <li><a href="#features">features</a></li>
                            <li><a href="#download">download</a></li>
                            <li><a href="#subscribe">subscribe!</a></li>
                            <li><a href="#contact">contact</a></li>
                        </ul>
                    </div>
                    <!-- /.navbar-collapse -->
                </div>
                <!--/.container -->
            </div>
            <!--/.navbar -->
            
        </header>

        <section id="features">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-push-2 clearfix">
                        <div class="section-heading scrollpoint sp-effect3">
                            <h3>sevenapp<span> settings features</span></h3>
                            <span class="divider"></span>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore reiciendis vel reprehenderit expedit!</p>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                            <!-- Wrapper for slides -->
                            <div class="carousel-inner">
                                <div class="item active">
                                    <div class="row">
                                        <div class="col-md-3 col-sm-6">
                                            <div class="feature scrollpoint sp-effect2">
                                                <div class="icon">
                                                    <i class="fa fa-weixin fa-4x"></i>
                                                </div>
                                                <h4>Document File</h4>
                                                <p>Reiciendis vero repudiandae at magnam aliquam consequatur vel.</p>
                                            </div>
                                        </div>
                                        <div class="col-md-3 col-sm-6">
                                            <div class="feature scrollpoint sp-effect2">
                                                <div class="icon">
                                                    <i class="fa fa-ticket fa-4x"></i>
                                                </div>
                                                <h4>7/24 Fast Ticket</h4>
                                                <p>Reiciendis vero repudiandae at magnam aliquam consequatur vel.</p>
                                            </div>
                                        </div>
                                        <div class="col-md-3 col-sm-6">
                                            <div class="feature scrollpoint sp-effect1">
                                                <div class="icon">
                                                    <i class="fa fa-dollar fa-4x"></i>
                                                </div>
                                                <h4>Free App Store</h4>
                                                <p>Reiciendis vero repudiandae at magnam aliquam consequatur vel.</p>
                                            </div>
                                        </div>
                                        <div class="col-md-3 col-sm-6">
                                            <div class="feature scrollpoint sp-effect1">
                                                <div class="icon">
                                                    <i class="fa fa-cogs fa-4x"></i>
                                                </div>
                                                <h4>Easy Settings</h4>
                                                <p>Reiciendis vero repudiandae at magnam aliquam consequatur vel.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="row">
                                        <div class="col-md-3 col-sm-6">
                                            <div class="feature scrollpoint sp-effect2">
                                                <div class="icon">
                                                    <i class="fa fa-weixin fa-4x"></i>
                                                </div>
                                                <h4>Document File</h4>
                                                <p>Reiciendis vero repudiandae at magnam aliquam consequatur vel.</p>
                                            </div>
                                        </div>
                                        <div class="col-md-3 col-sm-6">
                                            <div class="feature scrollpoint sp-effect2">
                                                <div class="icon">
                                                    <i class="fa fa-ticket fa-4x"></i>
                                                </div>
                                                <h4>7/24 Fast Ticket</h4>
                                                <p>Reiciendis vero repudiandae at magnam aliquam consequatur vel.</p>
                                            </div>
                                        </div>
                                        <div class="col-md-3 col-sm-6">
                                            <div class="feature scrollpoint sp-effect1">
                                                <div class="icon">
                                                    <i class="fa fa-dollar fa-4x"></i>
                                                </div>
                                                <h4>Free App Store</h4>
                                                <p>Reiciendis vero repudiandae at magnam aliquam consequatur vel.</p>
                                            </div>
                                        </div>
                                        <div class="col-md-3 col-sm-6">
                                            <div class="feature scrollpoint sp-effect1">
                                                <div class="icon">
                                                    <i class="fa fa-cogs fa-4x"></i>
                                                </div>
                                                <h4>Easy Settings</h4>
                                                <p>Reiciendis vero repudiandae at magnam aliquam consequatur vel.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Indicators -->
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                            </ol>
                        </div>

                    </div>
                </div>
            </div>
        </section>

        <section id="download">
            <div class="container">
                <div class="row">
                    <div class="col-md-10 col-md-push-1">
                        <h1>Perfect <span>Cloudy Night</span> Download</h1>
                        <h4>Lorem ipsum dolor sit amet, consectetur adipisicing elit. At consectetur, nisi a nam atque sint doloremque sunt molestias ipsam voluptatum facere necessitatibus optio, magnam quo accusamus sit eaque, cumque modi!</h4>
                    </div>

                    <div class="col-md-6 col-md-push-3">
                        <div class="btn-group btn-group-justified btn-lg small">
                            <div class="btn-group">
                                <a href="#" class="btn btn-default scrollpoint sp-effect6">
                                    <span class="apple"></span>
                                </a>
                            </div>
                            <div class="btn-group">
                                <a href="#" class="btn btn-default scrollpoint sp-effect6">
                                    <span class="play"></span>
                                </a>
                            </div>
                            <div class="btn-group">
                                <a href="#" class="btn btn-default scrollpoint sp-effect6">
                                    <span class="android"></span>
                                </a>
                            </div>
                            <div class="btn-group">
                                <a href="#" class="btn btn-default scrollpoint sp-effect6">
                                    <span class="windows"></span>
                                </a>
                            </div>
                        </div>
                    </div>
                    
                    <div class="btn-group btn-group-justified btn-lg">
                        <div class="row">
                            <div class="col-md-4 col-sm-4">
                                <div class="row">
                                    <div class="btn-group scrollpoint sp-effect4">
                                        <a href="#" class="btn btn-default">
                                            <span class="appstore"></span>
                                        </a>
                                    </div>  
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-4">
                                <div class="row">
                                    <div class="btn-group scrollpoint sp-effect4">
                                        <a href="#" class="btn btn-default">
                                            <span class="playstore"></span>
                                        </a>
                                    </div>  
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-4">
                                <div class="row">
                                    <div class="btn-group scrollpoint sp-effect4">
                                        <a href="#" class="btn btn-default">
                                            <span class="micstore"></span>
                                        </a>
                                    </div>  
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section id="settings">
            <div class="container">
                <div class="col-md-7">
                    <img src="img/weather.png" alt="" class="scrollpoint sp-effect3">
                    <h2 class="scrollpoint sp-effect3">Seven App <span>Application Settings</span></h2>
                    <p class="first">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut omnis nam non nemo quia provident, at saepe accusamus, minus, fugiat dignissimos. Sapiente dignissimos nostrum, vitae culpa unde enim eaque nulla. Maiores perspiciatis consequatur aut corporis accusamus facilis rerum vitae iure, temporibus perferendis harum cumque minus ratione iste soluta magni ipsa repellendus distinctio consectetur similique quod recusandae atque, dignissimos omnis beatae!</p>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut omnis nam non nemo quia provident, at saepe accusamus, minus, fugiat dignissimos. Sapiente dignissimos nostrum, vitae culpa unde enim eaque nulla.</p>
                    <p>
                        <a href="#" class="btn btn-default scrollpoint sp-effect1">download now!</a>
                        <a href="#" class="btn btn-empty scrollpoint sp-effect2">learn more</a>
                    </p>
                </div>
                <div class="col-md-5 scrollpoint sp-effect5">
                    <img src="img/iphone1.png" class="img-responsive hidden-xs iphone-settings" alt="">
                </div>
            </div>
        </section>

        <section id="screenshots">
            <div class="container">
                <div class="row">
                    <div class="col-md-2 hidden-xs">
                        <span class="owl-prev"><i class="fa fa-chevron-left fa-2x"></i></span>
                    </div>
                    <div class="col-md-8">
                        <div class="section-heading scrollpoint sp-effect3">
                            <h3>sevenapp<span> screen shots</span></h3>
                            <span class="divider"></span>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore reiciendis vel reprehenderit expedit!</p>
                        </div>
                    </div>
                    <div class="col-md-2 hidden-xs">
                        <span class="owl-next"><i class="fa fa-chevron-right fa-2x"></i></span>
                    </div>                 
                </div>
            </div>
            <div id="owl-screenshots" class="owl-carousel">
                <div><img src="img/screenshot.png" alt=""></div>
                <div><img src="img/screenshot.png" alt=""></div>
                <div><img src="img/screenshot.png" alt=""></div>
                <div><img src="img/screenshot.png" alt=""></div>
                <div><img src="img/screenshot.png" alt=""></div>
                <div><img src="img/screenshot.png" alt=""></div>
                <div><img src="img/screenshot.png" alt=""></div>
            </div>
        </section>

        <section id="packages">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-push-2 clearfix">
                        <div class="section-heading scrollpoint sp-effect3">
                            <h3>sevenapp<span> member packed</span></h3>
                            <span class="divider"></span>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore reiciendis vel reprehenderit expedit!</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3">
                        <div class="pack scrollpoint sp-effect6">
                            <div class="heading">
                                <h3>Free</h3>
                                <h1>0<sup>$</sup></h1>
                                <h5>monthly</h5>
                            </div>
                            <div class="details">
                                <ul>
                                    <li>1 Website</li>
                                    <li>1 User</li>
                                    <li>2 GB Storage</li>
                                    <li>1000 GB Bandwidth</li>
                                    <li>Support Ticket System</li>
                                </ul>
                                <a href="#" class="btn btn-sign-up btn-block">Sign now</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="pack scrollpoint sp-effect6">
                            <div class="heading">
                                <h3>Premium</h3>
                                <h1>95<sup>$</sup></h1>
                                <h5>monthly</h5>
                            </div>
                            <div class="details">
                                <ul>
                                    <li>1 Website</li>
                                    <li>1 User</li>
                                    <li>2 GB Storage</li>
                                    <li>1000 GB Bandwidth</li>
                                    <li>Support Ticket System</li>
                                </ul>
                                <a href="#" class="btn btn-sign-up btn-block">Sign now</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="pack scrollpoint sp-effect6">
                            <div class="heading">
                                <h3>Aluminium</h3>
                                <h1>499<sup>$</sup></h1>
                                <h5>monthly</h5>
                            </div>
                            <div class="details">
                                <ul>
                                    <li>1 Website</li>
                                    <li>1 User</li>
                                    <li>2 GB Storage</li>
                                    <li>1000 GB Bandwidth</li>
                                    <li>Support Ticket System</li>
                                </ul>
                                <a href="#" class="btn btn-sign-up btn-block">Sign now</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="pack scrollpoint sp-effect6">
                            <div class="heading">
                                <h3>Helium</h3>
                                <h1>1000<sup>$</sup></h1>
                                <h5>monthly</h5>
                            </div>
                            <div class="details">
                                <ul>
                                    <li>1 Website</li>
                                    <li>1 User</li>
                                    <li>2 GB Storage</li>
                                    <li>1000 GB Bandwidth</li>
                                    <li>Support Ticket System</li>
                                </ul>
                                <a href="#" class="btn btn-sign-up btn-block">Sign now</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section id="testimonials">
            <div class="container">
                <div class="row">
                    <div class="col-md-10 col-md-push-1">
                        <div id="carousel-testimonials" class="carousel slide" data-ride="carousel">

                            <!-- Wrapper for slides -->
                            <div class="carousel-inner">
                                <div class="item active">
                                    <img src="http://api.randomuser.me/portraits/women/91.jpg" alt="">
                                    <div class="carousel-caption">
                                        <h3>"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ex doloribus nobis odio facere."</h3>
                                        <h2>Joe Doe - Gamering Studio</h2>
                                    </div>
                                </div>
                                <div class="item">
                                    <img src="http://api.randomuser.me/portraits/men/74.jpg" alt="">
                                    <div class="carousel-caption">
                                        <h3>"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ex doloribus nobis odio facere."</h3>
                                        <h2>Joe Doe - Gamering Studio</h2>
                                    </div>
                                </div>
                                <div class="item">
                                    <img src="http://api.randomuser.me/portraits/men/14.jpg" alt="">
                                    <div class="carousel-caption">
                                        <h3>"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ex doloribus nobis odio facere."</h3>
                                        <h2>Joe Doe - Gamering Studio</h2>
                                    </div>
                                </div>
                            </div>

                            <!-- Indicators -->
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-testimonials" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-testimonials" data-slide-to="1"></li>
                                <li data-target="#carousel-testimonials" data-slide-to="2"></li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section id="team">
            <div class="container">
                <div id="carousel-team" class="carousel slide" data-ride="carousel">
                    <div class="row">
                        <div class="col-md-2 hidden-xs">
                            <a class="car-prev" href="#carousel-team" role="button" data-slide="prev">
                                <i class="fa fa-chevron-left fa-2x"></i>
                            </a>
                        </div>
                        <div class="col-md-8">
                            <div class="section-heading scrollpoint sp-effect3">
                                <h3>sevenapp<span> team members</span></h3>
                                <span class="divider"></span>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore reiciendis vel reprehenderit expedit!</p>
                            </div>
                        </div>
                        <div class="col-md-2 hidden-xs">
                            <a class="car-next" href="#carousel-team" role="button" data-slide="next">
                                <i class="fa fa-chevron-right fa-2x"></i>
                            </a>
                        </div>                 
                    </div>
                
                    <div class="carousel-inner">
                        <div class="item active">
                            <div class="col-md-6">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="member">
                                            <div class="media">
                                                <a class="pull-left" href="#">
                                                    <img class="media-object" src="http://api.randomuser.me/portraits/men/74.jpg" alt="">
                                                </a>
                                                <div class="media-body">
                                                    <h4 class="media-heading">
                                                        Media heading
                                                        <ul>
                                                            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-facebook fa-"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                                                        </ul>
                                                    </h4>
                                                    <p>Founder & CEO</p>
                                                    <span class="divider"></span>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Error, veritatis. Numquam adipisci eos necessitatibus nemo, nulla eligendi nobis quae autem illum ullam magni.</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="member">
                                            <div class="media">
                                                <a class="pull-left" href="#">
                                                    <img class="media-object" src="http://api.randomuser.me/portraits/men/70.jpg" alt="">
                                                </a>
                                                <div class="media-body">
                                                    <h4 class="media-heading">
                                                        Media heading
                                                        <ul>
                                                            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-facebook fa-"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                                                        </ul>
                                                    </h4>
                                                    <p>Founder & CEO</p>
                                                    <span class="divider"></span>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Error, veritatis. Numquam adipisci eos necessitatibus nemo, nulla eligendi nobis quae autem illum ullam magni.</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="member">
                                            <div class="media">
                                                <a class="pull-left" href="#">
                                                    <img class="media-object" src="http://api.randomuser.me/portraits/men/64.jpg" alt="">
                                                </a>
                                                <div class="media-body">
                                                    <h4 class="media-heading">
                                                        Media heading
                                                        <ul>
                                                            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-facebook fa-"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                                                        </ul>
                                                    </h4>
                                                    <p>Founder & CEO</p>
                                                    <span class="divider"></span>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Error, veritatis. Numquam adipisci eos necessitatibus nemo, nulla eligendi nobis quae autem illum ullam magni.</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="member">
                                            <div class="media">
                                                <a class="pull-left" href="#">
                                                    <img class="media-object" src="http://api.randomuser.me/portraits/men/60.jpg" alt="">
                                                </a>
                                                <div class="media-body">
                                                    <h4 class="media-heading">
                                                        Media heading
                                                        <ul>
                                                            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-facebook fa-"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                                                        </ul>
                                                    </h4>
                                                    <p>Founder & CEO</p>
                                                    <span class="divider"></span>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Error, veritatis. Numquam adipisci eos necessitatibus nemo, nulla eligendi nobis quae autem illum ullam magni.</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="col-md-6">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="member">
                                            <div class="media">
                                                <a class="pull-left" href="#">
                                                    <img class="media-object" src="http://api.randomuser.me/portraits/men/74.jpg" alt="">
                                                </a>
                                                <div class="media-body">
                                                    <h4 class="media-heading">
                                                        Media heading
                                                        <ul>
                                                            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-facebook fa-"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                                                        </ul>
                                                    </h4>
                                                    <p>Founder & CEO</p>
                                                    <span class="divider"></span>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Error, veritatis. Numquam adipisci eos necessitatibus nemo, nulla eligendi nobis quae autem illum ullam magni.</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="member">
                                            <div class="media">
                                                <a class="pull-left" href="#">
                                                    <img class="media-object" src="http://api.randomuser.me/portraits/men/70.jpg" alt="">
                                                </a>
                                                <div class="media-body">
                                                    <h4 class="media-heading">
                                                        Media heading
                                                        <ul>
                                                            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-facebook fa-"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                                                        </ul>
                                                    </h4>
                                                    <p>Founder & CEO</p>
                                                    <span class="divider"></span>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Error, veritatis. Numquam adipisci eos necessitatibus nemo, nulla eligendi nobis quae autem illum ullam magni.</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="member">
                                            <div class="media">
                                                <a class="pull-left" href="#">
                                                    <img class="media-object" src="http://api.randomuser.me/portraits/men/64.jpg" alt="">
                                                </a>
                                                <div class="media-body">
                                                    <h4 class="media-heading">
                                                        Media heading
                                                        <ul>
                                                            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-facebook fa-"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                                                        </ul>
                                                    </h4>
                                                    <p>Founder & CEO</p>
                                                    <span class="divider"></span>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Error, veritatis. Numquam adipisci eos necessitatibus nemo, nulla eligendi nobis quae autem illum ullam magni.</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="member">
                                            <div class="media">
                                                <a class="pull-left" href="#">
                                                    <img class="media-object" src="http://api.randomuser.me/portraits/men/60.jpg" alt="">
                                                </a>
                                                <div class="media-body">
                                                    <h4 class="media-heading">
                                                        Media heading
                                                        <ul>
                                                            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-facebook fa-"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                                                        </ul>
                                                    </h4>
                                                    <p>Founder & CEO</p>
                                                    <span class="divider"></span>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Error, veritatis. Numquam adipisci eos necessitatibus nemo, nulla eligendi nobis quae autem illum ullam magni.</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section id="subscribe">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <div class="newsletter-wrapper">
                            <h3 class="scrollpoint sp-effect3">Sevenapp <span>newsletter</span></h3>
                            <span class="divider scrollpoint sp-effect3"></span>
                            <p class="scrollpoint sp-effect3">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                            <div class="form-group has-feedback">
                                <input type="text" class="form-control" placeholder="Email">
                                <button class="form-control-feedback">subscribe</button>
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Doloribus illum obcaecati blanditiis, neque, ipsum explicabo? Nulla nisi dolorem, expedita fuga eos iure. Porro, quas iusto quod voluptatum numquam soluta dolore.</p>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <img src="img/iphone2.png" class="img-responsive hidden-xs scrollpoint sp-effect3" alt="">
                    </div>
                </div>
            </div>
        </section>

        <section id="map"></section>

        <section id="sponsors">
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <a href="#" class="scrollpoint sp-effect2"><img src="img/logo_gray.png" alt="" class="img-responsive"></a>
                    </div>
                    <div class="col-md-3">
                        <a href="#" class="scrollpoint sp-effect2"><img src="img/logo_gray.png" alt="" class="img-responsive"></a>
                    </div>
                    <div class="col-md-3">
                        <a href="#" class="scrollpoint sp-effect1"><img src="img/logo_gray.png" alt="" class="img-responsive"></a>
                    </div>
                    <div class="col-md-3">
                        <a href="#" class="scrollpoint sp-effect1"><img src="img/logo_gray.png" alt="" class="img-responsive"></a>
                    </div>
                </div>
            </div>
        </section>

        <footer id="contact">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-push-2 clearfix">
                        <div class="section-heading scrollpoint sp-effect3">
                            <h3>sevenapp<span> get in touch</span></h3>
                            <span class="divider"></span>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore reiciendis vel reprehenderit expedit!</p>
                        </div>
                    </div>
                    <div class="col-md-12">     
                        <form role="form">
                            <div class="col-md-6">
                                <div class="row">
                                    <div class="col-md-6 spirat">
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Your Name">
                                        </div>
                                    </div>
                                    <div class="col-md-6 spirat">
                                        <div class="form-group">
                                            <input type="email" class="form-control" placeholder="Your Email">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="Your Message">
                                    <span class="input-group-btn">
                                        <button class="btn" type="button">submit your message</button>
                                    </span>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="col-md-12">
                        <div class="social">
                            <ul>
                                <li><a href="#"><i class="fa fa-google-plus fa-lg"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter fa-lg"></i></a></li>
                                <li><a href="#"><i class="fa fa-facebook fa-lg"></i></a></li>
                                <li><a href="#"><i class="fa fa-pinterest fa-lg"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin fa-lg"></i></a></li>
                            </ul>
                        </div>
                        <p class="rights">
                           Shared by <i class="fa fa-love"></i><a href="https://bootstrapthemes.co">BootstrapThemes</a>
                        </p>
                    </div>
                </div>
            </div>
        </footer>
    </div>

    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="<c:url value="/resources/chatbot/js/bootstrap.min.js"/>"></script>
    <script src="<c:url value="/resources/chatbot/js/owl.carousel.min.js"/>"></script>
    <script src="<c:url value="/resources/chatbot/js/waypoints.min.js"/>"></script>
    
    
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyASm3CwaK9qtcZEWYa-iQwHaGi3gcosAJc&sensor=false"></script>

    <!-- jQuery REVOLUTION Slider  -->
    
    <script type="text/javascript" src="<c:url value="/resources/chatbot/rs-plugin/js/jquery.themepunch.plugins.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/resources/chatbot/rs-plugin/js/jquery.themepunch.revolution.min.js"/>"></script>


    <script src="<c:url value="/resources/chatbot/js/script.js"/>"></script>
    <script>
        $(document).ready(function() {
            appMaster.preLoader();
        });
    </script>

</body>

</html>