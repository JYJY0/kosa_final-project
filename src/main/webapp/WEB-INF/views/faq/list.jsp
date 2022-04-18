<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html >
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
<script
	src="<c:url value="/resources/chatbot/js/modernizr.custom.32033.js"/>"></script>


<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous">
		</script>
<style>
a {
	text-decoration: none;
}

table {
	border-collapse: collapse;
	width: 100%;
	margin-top: 30px;
	text-align: center;
	overflow: auto;
	font-size:18px
}

td, th {
	/* border: 1px solid black; */
	height: 60px;
}

th {
	font-size: 20px;
}

thead {
	font-weight: 700;
}

.table_wrap {
	margin: 30px 0 0 50px;
}

.no_width {
	
	text-align:center;
}

.title_width {
	width: 20%;
	text-align:center;
}

.content_width {
	width: 20%;
}

.count_width {
	width: 6%;
	text-align:center;
}

.top_btn {
	  	display: inline-block;
	    font-size: 18px;
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
	    color:#25a7b4;
}
.table_wrap{
	height: 60px;
	width: 1000px
}
</style>
</head>
<body >
	<!-- Wrap all page content here -->
		<jsp:include page="../common/chatbot_nav.jsp" />
		 <section id="team">
            <div class="container">
            
                <div id="carousel-team" class="carousel slide" data-ride="carousel">
                	
                    <div class="row" >
                        <div class="col-md-12">
                            <div class="section-heading scrollpoint sp-effect3" >
                                <div class="newsletter-wrapper">
		                            <h3 class="scrollpoint sp-effect3" style="font-size:40px; "><span>자주 물어보는 질문</span></h3>
		                            
                       			</div>
                           </div>
                        </div>
                    </div>
        
                
                </div>
            </div>
            </section>
			<div class="container">
				<div class="row" style="margin-top:20px">
					<div class="col">
					<% if (session.getAttribute("id").equals("admin")){%>
				        
						<a href="enroll" class="top_btn">글쓰기</a>
				<%} %>
			</div>
			<div class="row">
			<!-- <div class="table_wrap"> -->
				<table class="table">
					<thead>
					<tr class="text-center" style="background: #E6E6F2;">
						<th class="no_width" style="width:5%">글번호</th>
						<th class="title_width" >제목</th>
						<th class="count_width" >조회수</th>
						<!-- <th class="content_width">내용</th>
						<th class="answer_width">답변</th> -->
					</tr>
					</thead>
					<c:forEach var="list" items="${list}">
						<tr>
							<td><c:out value="${list.no}" /></td>
							<td><a class="move" href='detail?no=${list.no }'> <c:out value="${list.title}"/> </a></td> 
							<td><c:out value="${list.count}"/></td>
						</tr>
					</c:forEach>
				</table>
				
			<!-- </div> -->	
				
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
