<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
  <title>WELLNESS</title>
  <meta charset="utf-8">
  
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="description" content="HTML5 website template">
  <meta name="keywords" content="global, template, html, sass, jquery">
  <meta name="author" content="Bucky Maler">
  <link rel="stylesheet" href="<c:url value="/resources/wellness/css/wellness_main.css"/>">
  <link rel="stylesheet" href="<c:url value="/resources/ref/css/slick.css"/>">
	<link rel="stylesheet" href="<c:url value="/resources/ref/css/slick-theme.css"/>">
	<link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square-round.css" rel="stylesheet">
	
	<style type="text/css">
		body{
		font-family: 'NanumSquareRound'; 
		}
	</style>
	
</head>
<body>
<div class="background">
<!-- notification for small viewports and landscape oriented smartphones -->
<div class="device-notification">
  <a class="device-notification--logo" href="#0">
  
    <img src="<c:url value="/resources/wellness/img/logo.png"/>"alt="Global">
    <p>Global</p>
  </a>
  <p class="device-notification--message">Global has so much to offer that we must request you orient your device to portrait or find a larger screen. You won't be disappointed.</p>
</div>

<div class="perspective effect-rotate-left">
  <div class="container"><div class="outer-nav--return"></div>
    <div id="viewport" class="l-viewport">
      <div class="l-wrapper">
        <header class="header">
          <a class="header--logo" href="../chatbot/main">
            <img src="<c:url value="/resources/wellness/img/wellness_green.png"/>" alt="Global" width="100px">
            <img src="<c:url value="/resources/chatbot/img/logo3.png"/>" alt="Global" width="100px">
          </a>
          
          <div class="header--nav-toggle">
            <span></span>
          </div>
        </header>
        <nav class="l-side-nav">
					<ul class="side-nav">
						<li class="is-active"><span>병명</span></li>
						<li><span>증상부위</span></li>
					</ul>
				</nav>
				
        <ul class="l-main-content main-content">
          <li class="l-section section section--is-active">
            <div class="intro">
              <div class="intro--banner">
				<h1>Search</h1>
				<form class="work-request" action="wellness/info" method="get" name="diseaseForm">
					<div class="work-request--information">
						<div class="information-name">
							<input id="name" name="name" type="text" spellcheck="false" placeholder=""> 
							<label for="name"> input your name of disease</label>
							<input type="hidden" name="page" value="1">
						</div>
					</div>
					<div class="work-request--information">
						<input type="submit" value="search" class="search-submit" onclick="openPopup()" />
					</div>
				</form>
				<img class="intro-img" src="<c:url value="/resources/wellness/img/main2.png"/>" alt="Welcome">
			</div>
              <div class="intro--options"> </div>
            </div>
          </li>
          
         <li class="l-section section">
         <div class="work">
		
		<div class="featured_slider">
			<div>
			
				<div class="featured_img select-area">
				
					<img src="<c:url value="/resources/wellness/img/headache.png"/>" id="머리">
					<div class="area-detail">
						<h3 >머리</h3>								
						<ul class="area-list">
							<li>두피</li>
							<li>뇌</li>
							<li>머리카락</li>
						</ul>
					</div>
				</div>
			</div>
			<div>
				<div class="featured_img select-area">
				<img src="<c:url value="/resources/wellness/img/face.png"/>" id="얼굴">
				<div class="area-detail">
						<h3>얼굴</h3>								
						<ul class="area-list">
							<li>눈</li>
							<li>귀</li>
							<li>코</li>
						</ul>
					</div>
				</div>
			</div>
			<div>
				<div class="featured_img select-area">
				<img src="<c:url value="/resources/wellness/img/hand.png"/>" id="손">
				<div class="area-detail">
						<h3>손</h3>								
						<ul class="area-list">
							<li>손톱</li>
							<li>손등</li>
							<li>손가락</li>
						</ul>
					</div>
				</div>
			</div>
			<div>
				<div class="featured_img select-area">
				<img src="<c:url value="/resources/wellness/img/leg.png"/>" id="다리">
				<div class="area-detail">
						<h3>다리</h3>								
						<ul class="area-list">
							<li>발톱</li>
							<li>발바닥</li>
							<li>발</li>
						</ul>
					</div>
				</div>
			</div>
			<div>
				<div class="featured_img select-area">
				<img src="<c:url value="/resources/wellness/img/lower_body.png"/>" id="하체">
				<div class="area-detail">
						<h3>하체</h3>								
						<ul class="area-list">
							<li>엉덩이</li>
							<li>허벅지</li>
							<li>방광</li>
						</ul>
					</div>
				</div>
			</div>
			<div>
				<div class="featured_img select-area">
				<img src="<c:url value="/resources/wellness/img/skin.png"/>" id="피부">
				<div class="area-detail">
						<h3>피부</h3>								
						<ul class="area-list">
							<li>피부</li>
							<li>모공</li>
							<li>피부 주위</li>
						</ul>
					</div>
				</div>
			</div>
			<div>
				<div class="featured_img select-area">
				<img src="<c:url value="/resources/wellness/img/stomache.png"/>" id="배">
				<div class="area-detail">
						<h3>배</h3>								
						<ul class="area-list">
							<li>복부</li>
							<li>장기</li>
							<li>옆구리</li>
						</ul>
					</div>
				</div>
			</div>
			<div>
				<div class="featured_img select-area">
				<img src="<c:url value="/resources/wellness/img/upper_body.png"/>" id="상체">
				<div class="area-detail">
						<h3>상체</h3>								
						<ul class="area-list">
							<li>가슴</li>
							<li>심장<li>
							<li>등</li>
						</ul>
					</div>
				</div>
			</div>
			<div>
				<div class="featured_img select-area">
				<img src="<c:url value="/resources/wellness/img/womb.png"/>" id="자궁">
				<div class="area-detail">
						<h3>자궁</h3>								
						<ul class="area-list">
							<li>자궁경부</li>
							<li>자궁내막</li>
							<li>외음부</li>
						</ul>
					</div>
				</div>
			</div>
			
		</div>
		<div class="container2">
			<div class="row">
				<div class="main_featured m-top-100">
					<form class="work-request" action="wellness/info" method="get" name="diseaseForm2">
					<input type="hidden" name="page" value="1">
					<input type="hidden" name="name" class = "name2">
					 <div class="work-request--information">
	                  <div class="information-name">
	                  <span class="select-title">증상선택</span>
	                  	<select class="symptom" name="symptom">
	                  	</select>
	                  </div>
	                  <div class="information-email">
	                     <span class="select-title">병명 선택</span>
	                     <select class="label" name="label">
	                  	</select>
	                  </div>
	                </div>
	                
	                <input type="submit" value="Search" onclick="openPopup2()">
	              </form>
					</div>
				</div>
			</div>
		</div>

		<!-- End off featured slider -->
         </li>  
          
			<!-- <li class="l-section section">
				<div class="about">
					<div class="about--banner">
						<h2>EDA</h2>
					</div>
					<div class="about--options">
						<a href="#0">
							<h3>EDA1</h3>
						</a> <a href="#0">
							<h3>EDA2</h3>
						</a> <a href="#0">
							<h3>EDA3</h3>
						</a>
					</div>
				</div>
			</li> -->
        </ul>
      </div>
    </div>
  </div>
    
  <ul class="outer-nav">
    <li class="is-active">Search</li>
    <li>Select</li>
    
  </ul>
</div>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script>
	window.jQuery
			|| document
					.write('<script src="<c:url value="/resources/wellness/js/vendor/jquery-2.2.4.min.js"/>"><\/script>')
</script>

<script src="<c:url value="/resources/ref/js/slick.min.js"/>"></script>
<script src="<c:url value="/resources/wellness/js/functions-min.js"/>"></script>
<script src="<c:url value="/resources/wellness/js/symptom_ajax.js"/>"></script>
<script src="<c:url value="/resources/wellness/js/functions.js"/>"></script>
<script type="text/javascript">


function openPopup() {

	let pageName = "wellness info";
	let option = "width = 1000,height=700,resizeable,scrollbars, left=650,top = 200";
	window.open('', pageName, option);

	let frm = document.diseaseForm;
	frm.target = pageName;
	frm.submit();

}

	function openPopup2() {

	let pageName = "wellness info";
	let option = "width = 1000,height=700,resizeable,scrollbars, left=650,top = 200";
	window.open('', pageName, option);

	var selectedLabel = $('.label option:selected').val();		
	let frm = document.diseaseForm2;
	$('.name2').attr('value',selectedLabel);
	frm.target = pageName;
	frm.submit();

}

</script>
</div>
</body>

</html>
