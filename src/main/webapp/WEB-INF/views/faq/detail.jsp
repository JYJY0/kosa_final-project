<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<jsp:include page="../common/chatbot_header.jsp" />
	<style type="text/css">
	.input_wrap{
		padding: 5px 20px;
	}
	label{
		font-size:20px
	}
	/* label{
	    display: block;
	    margin: 10px 0;
	    font-size: 20px;	
	} */
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
	    font-size: 18px;
	    padding: 6px 12px;
	    background-color: #fff;
	    border: 1px solid #ddd;
	    font-weight: 600;
	    width: 140px;
	    height: 41px;
	    line-height: 39px;
	    /* text-align : center; */
	    margin-left : 30px;
	    cursor : pointer;
	    color:#25a7b4;
	}
	.btn_wrap{
		padding-left : 80px;
		margin-top : 50px;
	}
	
	</style>

<body>
<div id="wrap">
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
		 			<table class="table" style="font-size :15px; margin-top:20px">
		 				<thead>
		 				</thead>
		 				<tbody>
		 					<tr>
		 						<td><label for="table_no" class="form-label">번호</label></td>
		 						<td colspan="2">
		 						${pageInfo.no}
		 						<%-- <input name="title" readonly="readonly" 
		 						class="form-control board-title" id="table_no"  
		 						value='<c:out value=""/>' > --%></td>
		 					</tr>
		 					<tr>
		 						<td><label for="table_question" class="form-label">질문</label></td>
	 							<td colspan="2">${pageInfo.title}
	 							<%-- <input name="title" readonly="readonly"
	 							 class="form-control board-title" id="table_question" 
	 							 value='<c:out value=""/>' > --%></td>
		 					</tr>
		 					<tr>
		 						<td><label for="title_answer" class="form-label">답변</label></td>
	 							<td colspan="2">${pageInfo.answer }
	 							<!-- <pre><textarea name="answer" class="form-control board-title" id="title_answer" 
	 							style="height: 300px" readonly="readonly"></textarea></pre> -->
	 							<%-- <input name="answer" readonly="readonly" 
	 							class="form-control board-title" id="title_answer" style="height: 300px"
	 							value = "${pageInfo.answer }"> --%></td>
		 					</tr>
		 					<tr>
		 					
		 						<td><a class="btn" id="list_btn" >게시판 목록</a></td>
		 					<% if (session.getAttribute("id").equals("admin")){%>
		 					
		 						<td><a class="btn" id="modify_btn">수정하기</a></td>
		 						<td><a class="btn" id="delete_btn">삭제하기</a></td>
		 					
		 					<%} %>
		 					</tr>					
		 				</tbody>
		 			</table>
		 		<form id="infoForm" action="/update" method="get">
					<input type="hidden" id="no" name="no" value='<c:out value="${pageInfo.no}"/>'>
				</form>
            </div>
</div>

<script>
/* $('document').ready(function(){
	var str = document.getElementById("title_answer").value;

	str = str.replace(/(?:\r\n|\r|\n)/g, '<br />');

	document.getElementById("title_answer").innerHTML = str;
}); */
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

</body>
</html>