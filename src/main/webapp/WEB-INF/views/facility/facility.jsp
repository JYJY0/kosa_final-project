<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
<!--<![endif]-->

<head>
<meta charset="UTF-8">
<title>SevenApp - Home</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<link rel="shortcut icon" href="favicon.ico">

<link rel="stylesheet"
	href="<c:url value="/resources/chatbot/css/bootstrap.min.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resources/chatbot/css/animate.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resources/chatbot/css/font-awesome.min.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resources/chatbot/css/owl.carousel.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resources/chatbot/css/owl.theme.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resources/chatbot/css/styles.css"/>">
<script
	src="<c:url value="/resources/chatbot/js/modernizr.custom.32033.js"/>"></script>

<!--[if IE]><script type="text/javascript" src="js/excanvas.compiled.js"></script><![endif]-->

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
<%-- 
	<div class="pre-loader">
		<div class="load-con">
			<img src="<c:url value="/resources/chatbot/img/logo.png"/>"
				class="animated fadeInDown" alt="">
			<div class="spinner">
				<div class="bounce1"></div>
				<div class="bounce2"></div>
				<div class="bounce3"></div>
			</div>
		</div>
	</div>
 --%>
	<!-- Wrap all page content here -->
	<div id="wrap">
	<jsp:include page="../common/chatbot_nav.jsp" />
			<!-- Main Part -->
			<div class="col-md-12">
				<div id="carousel-example-generic" class="carousel slide"
					data-ride="carousel">
					<div class="carousel-inner">
						<div class="item active">
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

						</div>
					</div>
				</div>
			</div>
	</div>




	<script
		src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="<c:url value="/resources/chatbot/js/bootstrap.min.js"/>"></script>
	<script
		src="<c:url value="/resources/chatbot/js/owl.carousel.min.js"/>"></script>
	<script src="<c:url value="/resources/chatbot/js/waypoints.min.js"/>"></script>


	<!-- jQuery REVOLUTION Slider  -->

	<script type="text/javascript"
		src="<c:url value="/resources/chatbot/rs-plugin/js/jquery.themepunch.plugins.min.js"/>"></script>
	<script type="text/javascript"
		src="<c:url value="/resources/chatbot/rs-plugin/js/jquery.themepunch.revolution.min.js"/>"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
	<script src="<c:url value="/resources/chatbot/js/script.js"/>"></script>
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=eba00c6d889626da66f3cc0ff395ba49"></script>
	<script>
		$(document).ready(function() {
			appMaster.preLoader();
		});
		$(".chatperson").on(
				'click',
				function() {
					$(this).toggleClass('chatfocus').siblings().removeClass(
							'chatfocus');
				})
	/* 	var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
		var options = { //지도를 생성할 때 필요한 기본 옵션
			center : new kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
			level : 3
		//지도의 레벨(확대, 축소 정도)
		};

		var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
 */
	</script>
	<script src="<c:url value="/resources/chatbot/js/map_ajax.js"/>"></script>
</body>

</html>