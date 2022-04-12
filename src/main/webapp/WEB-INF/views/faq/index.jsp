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
<h1>게시판 목록 리스트 페이지</h1>
	<div class="table_wrap">
		<table border="1">
			<caption>게시물 리스트</caption>
			<tread>
			<tr>
				<th class="no_width">글번호</th>
				<th class="title_width">제목</th>
				<!-- <th class="content_width">내용</th>
				<th class="answer_width">답변</th> -->
			</tr>
			</tread>
			<c:forEach var="list" items="${list}">
				<tr>
					<td><c:out value="${list.no}" /></td>
					<td><a class="move" href='detail?no=${list.no }'> <c:out
								value="${list.title}" />
					</a> <%-- <td><c:out value="${list.content}"/></td>
		<td><c:out value="${list.answer}"/></td> --%> <%-- <td>${dto.count}</td> --%>
				</tr>
			</c:forEach>
		</table>

		<a href="enroll" class="top_btn">글쓰기</a>
	</div>

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
        
    </script>
	<script>
	$(document).ready(function(){
		let result='<c:out value="${result}"/>';
		
		checkAlter(result);
		
		function checkAlter(result){
			if (result===""){
				return;
			}
			if (result==="등록 성공"){
				alter("등록이 완료되었습니다.")
			}
			
		}
		
	});
	</script>

</body>

</html>