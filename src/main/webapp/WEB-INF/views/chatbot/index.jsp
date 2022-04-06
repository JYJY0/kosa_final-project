<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
	Date nowTime = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("a hh:mm");
%>
<!DOCTYPE html>
<html lang="ko" class="no-js">

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


</head>

<body>

	<!-- Wrap all page content here -->
	<div id="wrap">
		<jsp:include page="../common/chatbot_nav.jsp" />
		<section id="packages">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-push-2 clearfix">
						<!-- <div class="section-heading scrollpoint sp-effect3">
                            <h3><span>BBBOT</span></h3>
                            <span class="divider"></span>
                            
                        </div> -->
					</div>
				</div>
				<div class="row">
					<div class="col-md-6">

						<!--It's just a concept, a chat UI design for direct messaging!
				Enjoy! :) Don't forget to click the heart if you like it! -->

						<div id="container2">
							<main>
								<div class="chat-header">
									<img src="" alt="">
									<div>
										<h2>BBBOT</h2>
									</div>
								</div>
								<ul id="chat">
									<%-- <li class="you">
										<div class="entete">
											<span class="status green"></span>
											<h2>BBBOt</h2>
											<h3> <%= sf.format(nowTime) %></h3>
										</div>
										
										<div class="message">Lorem ipsum dolor sit amet,
											consectetuer adipiscing elit. Aenean commodo ligula eget
											dolor.</div>
									</li>
									<li class="me">
										<div class="entete">
											<h3>10:12AM, Today</h3>
											<h2>Vincent</h2>
											<span class="status blue"></span>
										</div>
										<div class="message">Lorem ipsum dolor sit amet,
											consectetuer adipiscing elit. Aenean commodo ligula eget
											dolor.</div>
									</li>
									<li class="me">
										<div class="entete">
											<h3>10:12AM, Today</h3>
											<h2>Vincent</h2>
											<span class="status blue"></span>
										</div>
										
										<div class="message">OK</div>
									</li>
									 --%>
									
								</ul>
								<div class="chat-footer">
								<div class="row">
								<div class="col-md-10">
									<textarea placeholder="Type your message" class="chat-text"></textarea>
									</div>
									<div class="col-md-2">
									<button type="submit" class="sendBtn">
									 <svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="currentColor" class="bi bi-send" viewBox="0 0 16 16">
  											<path d="M15.854.146a.5.5 0 0 1 .11.54l-5.819 14.547a.75.75 0 0 1-1.329.124l-3.178-4.995L.643 7.184a.75.75 0 0 1 .124-1.33L15.314.037a.5.5 0 0 1 .54.11ZM6.636 10.07l2.761 4.338L14.13 2.576 6.636 10.07Zm6.787-8.201L1.591 6.602l4.339 2.76 7.494-7.493Z"/>
									</svg>
									 </button>
									 </div>
									 </div>
								</div>
							</main>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div id="map" style="width: 500px; height: 400px;"></div>
				</div>
			</div>
		</section>


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

	<script src="<c:url value="/resources/chatbot/js/script.js"/>"></script>
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=eba00c6d889626da66f3cc0ff395ba49"></script>
	<script src="<c:url value="/resources/chatbot/js/chat_ajax.js"/>"></script>
	<script>
        $(document).ready(function() {
            appMaster.preLoader();
                    });
        $(".chatperson").on('click', function(){
            $(this).toggleClass('chatfocus').siblings().removeClass('chatfocus');
         })
    </script>

</body>

</html>