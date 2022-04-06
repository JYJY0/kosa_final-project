<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Wellness</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="HTML5 website template">
<meta name="keywords" content="global, template, html, sass, jquery">
<meta name="author" content="Bucky Maler">
<link rel="stylesheet"
	href="<c:url value="/resources/wellness/css/wellness_main.css"/>">

</head>
<body>

	<!-- notification for small viewports and landscape oriented smartphones -->
	<div class="device-notification">
		<a class="device-notification--logo" href="#0"> <img
			src="<c:url value="/resources/wellness/img/logo.png"/>" alt="Global">
			<p>Global</p>
		</a>
		<p class="device-notification--message">Global has so much to
			offer that we must request you orient your device to portrait or find
			a larger screen. You won't be disappointed.</p>
	</div>

	<div class="perspective effect-rotate-left">
		<div class="container">
			<div class="outer-nav--return"></div>
			<div id="viewport" class="l-viewport">
				<div class="l-wrapper">
					<header class="header">
						<a class="header--logo" href="#0"> <img
							src="<c:url value="/resources/wellness/img/logo.png"/>"
							alt="Global">
							<p>Wellness</p>
						</a>

						<div class="header--nav-toggle">
							<span></span>
						</div>
					</header>
					<nav class="l-side-nav">
						<ul class="side-nav">
							<li class="is-active"><span>병명</span></li>
							<li><span>증상부위</span></li>
							<li><span>EDA</span></li>
							<!-- <li><span>Contact</span></li>
            <li><span>Hire us</span></li> -->
						</ul>
					</nav>
					<ul class="l-main-content main-content">
						<li class="l-section section section--is-active">
							<div class="intro">
								<div class="intro--banner">
									<h1>Search</h1>
									<!-- checkout formspree.io for easy form setup -->
									<form class="work-request" action="wellness/info" method="get"
										name="diseaseForm">
										<div class="work-request--information">
											<div class="information-name">
												<input id="name" name="name" type="text" spellcheck="false"
													placeholder=""> <label for="name">input
													your name of disease</label>
											</div>
										</div>
										<div class="work-request--information">
											<input type="submit" value="search" class="search-submit"
												onclick="openPopup()" />
										</div>
									</form>
									<img class="intro-img"
										src="<c:url value="/resources/wellness/img/introduction-visual.png"/>"
										alt="Welcome">
								</div>
								<div class="intro--options">
									<!-- <a href="#0">
                  <h3></h3>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit sed do.</p>
                </a>
                <a href="#0">
                  <h3>Fantasy interactive</h3>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit sed do.</p>
                </a>
                <a href="#0">
                  <h3>Paul &amp; shark</h3>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit sed do.</p>
                </a> -->
								</div>
							</div>
						</li>
						<li class="l-section section">
						 <div class="work">
              <h2>Selected work</h2>
              <div class="work--lockup">
                <ul class="slider">
                  <li class="slider--item slider--item-left">
                    <a href="#0">
                      <div class="slider--item-image">
                      
                        <img src="<c:url value="/resources/wellness/img/work-victory.png"/>" alt="Victory">
                      </div>
                      <p class="slider--item-title">Victory</p>
                      <p class="slider--item-description">Lorem ipsum dolor sit amet, consectetur adipisicing elit sed do.</p>
                    </a>
                  </li>
                  <li class="slider--item slider--item-center">
                    <a href="#0">
                      <div class="slider--item-image">
                      
                        <img src="<c:url value="/resources/wellness/img/work-metiew-smith.jpg"/>" alt="Metiew and Smith">
                      </div>
                      <p class="slider--item-title">Metiew &amp; Smith</p>
                      <p class="slider--item-description">Lorem ipsum dolor sit amet, consectetur adipisicing elit sed do.</p>
                    </a>
                  </li>
                  <li class="slider--item slider--item-right">
                    <a href="#0">
                      <div class="slider--item-image">
                        <img src="<c:url value="/resources/wellness/img/work-alex-nowak.jpg"/>" alt="Alex Nowak">
                      </div>
                      <p class="slider--item-title">Alex Nowak</p>
                      <p class="slider--item-description">Lorem ipsum dolor sit amet, consectetur adipisicing elit sed do.</p>
                    </a>
                  </li>
                </ul>
                <div class="slider--prev">
                  <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                  viewBox="0 0 150 118" style="enable-background:new 0 0 150 118;" xml:space="preserve">
                  <g transform="translate(0.000000,118.000000) scale(0.100000,-0.100000)">
                    <path d="M561,1169C525,1155,10,640,3,612c-3-13,1-36,8-52c8-15,134-145,281-289C527,41,562,10,590,10c22,0,41,9,61,29
                    c55,55,49,64-163,278L296,510h575c564,0,576,0,597,20c46,43,37,109-18,137c-19,10-159,13-590,13l-565,1l182,180
                    c101,99,187,188,193,199c16,30,12,57-12,84C631,1174,595,1183,561,1169z"/>
                  </g>
                  </svg>
                </div>
                <div class="slider--next">
                  <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 150 118" style="enable-background:new 0 0 150 118;" xml:space="preserve">
                  <g transform="translate(0.000000,118.000000) scale(0.100000,-0.100000)">
                    <path d="M870,1167c-34-17-55-57-46-90c3-15,81-100,194-211l187-185l-565-1c-431,0-571-3-590-13c-55-28-64-94-18-137c21-20,33-20,597-20h575l-192-193C800,103,794,94,849,39c20-20,39-29,61-29c28,0,63,30,298,262c147,144,272,271,279,282c30,51,23,60-219,304C947,1180,926,1196,870,1167z"/>
                  </g>
                  </svg>
                </div>
              </div>
            </div> 

									<%-- 	<div id="slideShow">
										<ul class="slides">
											
												<li class="slide-li">
													<div class="box" >
														<img src="<c:url value="/resources/wellness/img/head1.png"/>" alt="">
													</div>
												</li>
												<li class="slide-li">
													<div class="box" >
														<img src="<c:url value="/resources/wellness/img/face1.png"/>" alt="">
													</div>
												</li>
												<li class="slide-li">
													<div class="box" >
														<img src="<c:url value="/resources/wellness/img/skin1.png"/>" alt="">
													</div>
												</li>
												<li class="slide-li">
													<div class="box" >
														<img src="<c:url value="/resources/wellness/img/upper_body1.png"/>" alt="">
													</div>
												</li>
												<li class="slide-li">
													<div class="box" >
														<img src="<c:url value="/resources/wellness/img/hand1.png"/>" alt="">
													</div>
												</li>
												<li class="slide-li">
													<div class="box" >
														<img src="<c:url value="/resources/wellness/img/stomache1.png"/>" alt="">
													</div>
												</li>
												<li class="slide-li">
													<div class="box" >
														<img src="<c:url value="/resources/wellness/img/womb1.png"/>" alt="">
													</div>
												</li>
												<li class="slide-li">
													<div class="box" >
														<img src="<c:url value="/resources/wellness/img/lower_body1.png"/>" alt="">
													</div>
												</li>
												<li class="slide-li">
													<div class="box" >
														<img src="<c:url value="/resources/wellness/img/leg1.png"/>" alt="">
													</div>
												</li>
												<li class="slide-li">
													<div class="box" >
														<img src="<c:url value="/resources/wellness/img/head1.png"/>" alt="">
													</div>
												</li>
												
										</ul>
										<p class="controller">
											<!-- &lang: 왼쪽 방향 화살표 &rang: 오른쪽 방향 화살표 -->
											<span class="prev">&lang;</span> <span class="next">&rang;</span>
										</p>
									</div>

								</div> --%>
									
										<!-- <a href="#0">
                  <h3></h3>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit sed do.</p>
                </a>
                <a href="#0">
                  <h3>Fantasy interactive</h3>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit sed do.</p>
                </a>
                <a href="#0">
                  <h3>Paul &amp; shark</h3>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit sed do.</p>
                </a> -->
								<%-- 	<div class="work">
				<h2>Selected symptom site</h2>
					<div class="work--lockup">
					<!-- Swiper -->
						<div class="swiper mySwiper">
							<div class="swiper-wrapper">
								<div class="swiper-slide ">
								<img src="<c:url value="/resources/wellness/img/head1.png"/>">
								<div>
								<p class="slider--item-title">Metiew &amp; Smith</p>
		                      <p class="slider--item-description">Lorem ipsum dolor sit amet, consectetur adipisicing elit sed do.</p>
                      			</div>
								</div>
								<div class="swiper-slide">
								<img src="<c:url value="/resources/wellness/img/face1.png"/>"></div>
								<div class="swiper-slide"><img src="<c:url value="/resources/wellness/img/skin1.png"/>"></div>
								<div class="swiper-slide"><img src="<c:url value="/resources/wellness/img/upper_body1.png"/>"></div>
								<div class="swiper-slide"><img src="<c:url value="/resources/wellness/img/hand1.png"/>"></div>
								<div class="swiper-slide"><img src="<c:url value="/resources/wellness/img/stomache1.png"/>"></div>
								<div class="swiper-slide"><img src="<c:url value="/resources/wellness/img/womb1.png"/>"></div>
								<div class="swiper-slide"><img src="<c:url value="/resources/wellness/img/lower_body1.png"/>"></div>
								<div class="swiper-slide"><img src="<c:url value="/resources/wellness/img/leg1.png"/>"></div>
								
							</div>
						<div class="swiper-button-next"></div>
						<div class="swiper-button-prev"></div>
						<div class="swiper-pagination"></div>
						</div>
							<div class="row">
								<div class="col-md-6 col-md-push-3">
									<div class="btn-group btn-group-justified btn-lg small">
										<div class="btn-group">
											<span class="select-title">자치구 선택</span> <select
												class="district">
												<c:forEach var="district" items="${districtList}">
													<option>${district}</option>
												</c:forEach>
											</select>

										</div>
										<div class="btn-group">
											<span class="select-title">타입 선택</span> <select class="type">
												<c:forEach var="type" items="${typeList}">
													<option>${type}</option>
												</c:forEach>
											</select>
										</div>
										<div class="btn-group">
											<span class="input-group-btn">
												<button class="btn" type="button" id="searchBtn">search</button>
											</span>
										</div>
									</div>
								</div>
								<div class="btn-group btn-group-justified btn-lg">
										
											
												<div class="btn-group scrollpoint sp-effect4">
													<div id="map" style="width: 100%; height: 500px;"></div>
													<!-- <a href="#" class="btn btn-default">
                                            <span class="appstore"></span>
                                        </a> -->
												</div>
										
								</div>
							</div>
					
			<!-- 		
				<div class="intro--options">
					
						<h3>증상부위</h3> <p>드롭다운</p>
						<div class="dropdown">
							<button class="btn btn-secondary dropdown-toggle"
								type="button" id="dropdownMenuButton1"
								data-bs-toggle="dropdown" aria-expanded="false">
								Dropdown button</button>
							<ul class="dropdown-menu"
								aria-labelledby="dropdownMenuButton1">
								<li><a class="dropdown-item" href="#">Action</a></li>
								<li><a class="dropdown-item" href="#">Another
										action</a></li>
								<li><a class="dropdown-item" href="#">Something
										else here</a></li>
							</ul>
						</div>
					<a href="#0">
						<h3>증상부위</h3> <p>드롭다운</p>
						<div class="dropdown">
							<button class="btn btn-secondary dropdown-toggle"
								type="button" id="dropdownMenuButton1"
								data-bs-toggle="dropdown" aria-expanded="false">
								Dropdown button</button>
							<ul class="dropdown-menu"
								aria-labelledby="dropdownMenuButton1">
								<li><a class="dropdown-item" href="#">Action</a></li>
								<li><a class="dropdown-item" href="#">Another
										action</a></li>
								<li><a class="dropdown-item" href="#">Something
										else here</a></li>
							</ul>
						</div>
					</a>
				</div> -->
			</div>
			</div> --%>
						</li>
						<li class="l-section section">
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
						</li>
					</ul>
				</div>
			</div>
		</div>
		<ul class="outer-nav">
			<li class="is-active">병명</li>
			<li>증상부위</li>
			<li>EDA</li>
			<!-- <li>Contact</li>
    <li>Hire us</li> -->
		</ul>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="<c:url value="/resources/wellness/js/vendor/jquery-2.2.4.min.js"/>"><\/script>')
	</script>
	<script src="<c:url value="/resources/wellness/js/functions-min.js"/>"></script>
	<script src="<c:url value="/resources/wellness/js/symptom_ajax.js"/>"></script>

	<script type="text/javascript">
		function openPopup() {

			let pageName = "wellness info";
			let option = "width = 1000,height=700,resizeable,scrollbars, left=650,top = 200";
			window.open('', pageName, option);

			let frm = document.diseaseForm;
			frm.target = pageName;
			frm.submit();

		}
	

	</script>

</body>

</html>