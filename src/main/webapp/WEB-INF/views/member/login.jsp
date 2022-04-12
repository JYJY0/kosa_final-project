<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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

<!-- site icon -->
      <link rel="icon" href="/resources/member/img/bbbot.png" type="image/png" />
<!-- bootstrap css -->	
<link rel="stylesheet" href="/resources/member/css/bootstrap1.min.css" />
      <!-- site css -->
      <link rel="stylesheet" href="/resources/member/css/style2.css" />
      <!-- responsive css -->
      <link rel="stylesheet" href="/resources/member/css/responsive.css" />
      <!-- color css -->
      <link rel="stylesheet" href="/resources/member/css/color_2.css" />
      <!-- select bootstrap -->
      <link rel="stylesheet" href="/resources/member/css/bootstrap-select.css" />
      <!-- scrollbar css -->
      <link rel="stylesheet" href="/resources/member/css/perfect-scrollbar.css" />
      <!-- custom css -->
      <link rel="stylesheet" href="/resources/member/css/custom.css" />
      <!-- calendar file css -->
      <link rel="stylesheet" href="/resources/member/js/semantic.min.css" />	

<title>로그인</title>
</head>

<body class="inner_page login">
	<!-- Wrap all page content here -->
	<div>
		<jsp:include page="../common/chatbot_nav.jsp" />

		<!-- 로그인 폼 -->
		<div class="full_container" style="overflow: auto;">
         <div class="container">
            <div class="center verticle_center">
               <div class="login_section">
                  <div class="logo_login">
                     <div class="center">
                        <img width="210" src="/resources/member/img/bbbot_remove.png"/>
                     </div>
                  </div>
                  <div class="login_form">
                     <form class="loginForm" method="post" action="/member/login">
                        <fieldset>
                           <div class="field">
                              <label class="label_field">ID</label>
                              <input type="id" name="id" placeholder="Id" />
                           </div>
                           <div class="field">
                              <label class="label_field">Password</label>
                              <input type="password" name="password" placeholder="Password" />
                           </div>
                           <div class="field">
                              <label class="label_field hidden">hidden label</label>
                              <label class="form-check-label"><input type="checkbox" class="form-check-input"> Remember Me</label><br/><br/>
                              <a class="forgot" href="">Forgotten Password?</a>
                           </div>
                           <div class="field margin_0">
                              <label class="label_field hidden">hidden label</label>
                              <button class="main_bt" id="sign-in" type="submit">Sing In</button>
                              <button class="main_bt" id="sign-up" type="submit">Sing Up</button>
                              
                           </div>
                        </fieldset>
                     </form>
                  </div>
               </div>
            </div>
         </div>
      </div>
	</div>




	<script
		src="<c:url value="/resources/chatbot/js/modernizr.custom.32033.js"/>"></script>

	<script src="https://code.jquery.com/jquery-3.4.1.js"
		integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
		crossorigin="anonymous"></script>

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

	<script src="<c:url value="/resources/chatbot/js/script.js"/>"></script>
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=eba00c6d889626da66f3cc0ff395ba49"></script>
	<script src="<c:url value="/resources/chatbot/js/chat_ajax.js"/>"></script>
	<script>
		$(document).ready(function() {
			appMaster.preLoader();
		});
	</script>
	<script>

		$("#sign-up").click(function() {
			alert("회원가입 버튼 작동");	
			location.href="http://localhost:8080/member/register";
		});
	</script>
	<script type="text/javascript">
    $(document).ready(function() {
        var msg = '<c:out value="${msg}"/>';
        if((msg=='일치하는 회원정보가 없습니다.'))
            alert("일치하는 회원정보가 없습니다.");
     
    });
</script>
 <!-- jQuery -->
      <!-- <script src="/resources/member/js/jquery.min.js"></script> -->
      <script src="/resources/member/js/popper.min.js"></script>
      <script src="/resources/member/js/bootstrap.min.js"></script> 
      <!-- wow animation -->
      <script src="/resources/member/js/animate.js"></script>
      <!-- select country -->
      <script src="/resources/member/js/bootstrap-select.js"></script>
      <!-- nice scrollbar -->
      <script src="/resources/member/js/perfect-scrollbar.min.js"></script>
      <script>
         var ps = new PerfectScrollbar('#sidebar');
      </script>
      <!-- custom js -->
      <script src="/resources/member/js/custom.js"></script>


</body>
</html>