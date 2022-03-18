<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="title" content="ScoopThemes">
<meta name="ROBOTS"
	content="Bootstrap 3 Themes, Responsive Themes, Bootstrap 3 Responsive, Wordpress Themes, Clean Themes, Modern Themes, Flat Themes, Flat UI, UI Design, UX Design, Web design, responsive bootstrap, Jquery Plugins, Free Plugins, Premium Bootstrap themes, Bootstrap 3, Premium Web Templates, Bootstrap Templates, Bootstrap Responsive Templates, Admin, Dashboard, Admin Templates, Admin Responsive, Admin responsive themes">
<meta name="description"
	content="Solutions For Web Developers Form ( Web Templates, Web Themes, Jquery Plugins, UX Design.. ) Whatever They Need.">
<meta name="abstract"
	content="Solutions For Web Developers Form ( Web Templates, Web Themes, Jquery Plugins, UX Design.. ) Whatever They Need.">

<meta name="author" content="www.scoopthemes.com">
<meta name="publisher" content="www.scoopthemes.com">
<meta name="copyright" content="www.scoopthemes.com">
<meta name="revisit-after" content="2 days">
<link rel="shortcut icon" href="../../resources/img/favicon.png">

<title>Scoop Themes | Coming Soon Template</title>

<!-- Bootstrap -->

<link href="<c:url value="/resources/member/css/bootstrap.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/member/css/font-awesome.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/member/css/bootstrap-theme.css"/>" rel="stylesheet">
<link rel="stylesheet" href="<c:url value="/resources/member/css/animations.css"/>">

<!-- siimple style -->
<link href="<c:url value="/resources/member/css/style.css"/>" rel="stylesheet">

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>

<body>

	<div class="cloud floating">
		<img src="<c:url value="/resources/member/img/cloud.png"/>" alt="Scoop Themes">
	</div>

	<div class="cloud pos1 fliped floating">
		<img src="<c:url value="/resources/member/img/cloud.png"/>" alt="Scoop Themes">
	</div>

	<div class="cloud pos2 floating">
		<img src="<c:url value="/resources/member/img/cloud.png"/>" alt="Scoop Themes">
	</div>

	<div class="cloud pos3 fliped floating">
		<img src="<c:url value="/resources/member/img/cloud.png"/>" alt="Scoop Themes">
	</div>


	<div id="wrapper">
		<div class="container">
			<div class="row">
				<div class="col-sm-12 col-md-12 col-lg-12">
					<img src="<c:url value="/resources/member/img/logo.png"/>" alt="Scoop Themes Logo"> <br />
					<br />
					<h2 class="subtitle">Welcome to BBBot</h2>
					<br />
					<!-- form-inline validate signup -->
					<form class="form-vertical validate signup" action="" method="post" role="form">
						<div class="form-group">
						
						    <label for="labelEmail">Email address</label>
						    <input type="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter email">
						    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
						</div>
						  <div class="form-group col-md-4">
						    <label for="labelPassword">Password</label>
						    <input type="password" class="form-control" id="password" placeholder="Password">
						  </div>
						<input type="submit" name="subscribe" value="Log in" class="btn btn-theme">
					</form>
					<br />
				</div>
				<div class="col-sm-12 align-center">
					<ul class="social-network social-circle">
						<li><a href="#" class="icoFacebook" title="Facebook"><i
								class="fa fa-facebook"></i></a></li>
						<li><a href="#" class="icoTwitter" title="Twitter"><i
								class="fa fa-twitter"></i></a></li>
						<li><a href="#" class="icoGit" title="Github"><i
								class="fa fa-github"></i></a></li>
						<li><a href="#" class="icoLinkedin" title="Linkedin"><i
								class="fa fa-linkedin"></i></a></li>
					</ul>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-6 col-lg-offset-3">
					<p class="copyright">
						Shared by <i class="fa fa-love"></i><a
							href="https://bootstrapthemes.co">BootstrapThemes</a>
					</p>
				</div>
			</div>
		</div>
	</div>


	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script
		src="http://downloads.mailchimp.com/js/jquery.form-n-validate.js"></script>
	<script>
        /* 
$(document).ready( function () {
    $('#wrapper').height($(document).height());
    // I only have one form on the page but you can be more specific if need be.
    var $form = $('form');

    if ( $form.length > 0 ) {
        $('form input[type="submit"]').bind('click', function ( event ) {
            if ( event ) event.preventDefault();
            // validate_input() is a validation function I wrote, you'll have to substitute this with your own.
            if ( $form.validate() ) { register($form); }
        });
    }
});

function appendResult(userText , className, iconClass){
  var resultHTML = "<div class='stretchLeft result "+ className + "'>" + userText + " <span class='fa fa-" + iconClass + "'></span>" + "</div>";
  $('body').append(resultHTML);
  $('.result').delay(10000).fadeOut('1000');
}


function register($form) {
    $.ajax({
        type: $form.attr('method'),
        url: $form.attr('action'),
        data: $form.serialize(),
        cache       : false,
        dataType    : 'json',
        contentType: "application/json; charset=utf-8",
        error       : function(err) { alert("Could not connect to the registration server. Please try again later."); },
        success     : function(data) {
            if (data.result != "success") {
                appendResult('Wrong Email Or You Are Already Registered, Try Again', 'error', 'exclamation');
            } else {
                // It worked, carry on...
                appendResult('Successful, Check Your Email For Confirmation ', 'success', 'check');
            }
        }
    });
} */
    </script>

</body>
</html>