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
<title>Insert title here</title>
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
<style type="text/css">
.input_wrap{
	padding: 5px 20px;
}
label{
    display: block;
    margin: 10px 0;
    font-size: 20px;	
}
input{
	padding: 5px;
    font-size: 17px;
}
textarea{
	width: 800px;
    height: 200px;
    font-size: 15px;
    padding: 10px;
}
.btn{
  	display: inline-block;
    font-size: 22px;
    padding: 6px 12px;
    background-color: #fff;
    border: 1px solid #ddd;
    font-weight: 600;
    width: 140px;
    height: 41px;
    line-height: 39px;
    text-align : center;
    margin-left : 30px;
    cursor : pointer;
}
.btn_wrap{
	padding-left : 80px;
	margin-top : 50px;
}

</style>

</head>
<body>
	<div>
		<jsp:include page="../common/chatbot_nav.jsp" />
<h1>게시판 상세보기 페이지</h1>
<table border="1">
	<div class ="input_wrap">
	<label>게시판 번호</label>
	<input name="no" readonly="readonly" value='<c:out value="${pageInfo.no}"/>' >
	</div>
	<div class ="input_wrap">
	<label>게시판 제목</label>
	<input name="title" readonly="readonly" value='<c:out value="${pageInfo.title}"/>' >
	</div>
	<%-- <div class ="input_wrap">
	<label>게시판 내용</label>
	<input name="content" readonly="readonly" value='<c:out value="${pageInfo.content}"/>' >
	</div> --%>
	<div class ="input_wrap">
	<label>답변</label>
	<input name="answer" readonly="readonly" value='<c:out value="${pageInfo.answer}"/>' >
	</div>
	<div class="btn_wrap">
		<a class="btn" id="list_btn" >게시판 목록</a>
		<a class="btn" id="modify_btn">수정하기</a>
		<a class="btn" id="delete_btn">삭제하기</a>
	</div>
	<form id="infoForm" action="/update" method="get">
		<input type="hidden" id="no" name="no" value='<c:out value="${pageInfo.no}"/>'>
	</form>

</table><br/>
</div>
<script>
	let form = $("#infoForm");
	
	$("#list_btn").on("click", function(e){
		form.find("#no").remove();
		form.attr("action", "/faq/list");
		form.submit();
	}); 
	
	$("#modify_btn").on("click", function(e){
		form.attr("action", "/faq/update");
		form.submit();
	});	
	
	$("#delete_btn").on("click", function(e){
		alert("삭제하시겠습니까?");
		form.attr("action", "/faq/delete");
		form.attr("method","post");
		form.submit();
	});	
</script>
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

</body>
</html>