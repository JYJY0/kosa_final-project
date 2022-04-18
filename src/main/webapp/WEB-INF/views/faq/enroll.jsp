<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<style type="text/css">
label{
	font-size:20px;
}
</style>
<jsp:include page="../common/chatbot_header.jsp" />


<!-- Wrap all page content here -->
<div id="wrap">
	<jsp:include page="../common/chatbot_nav.jsp" />
		 <section id="team">
            <div class="container">
            
                <div id="carousel-team" class="carousel slide" data-ride="carousel">
                	
                    <div class="row" >
                        <div class="col-md-12">
                            <div class="section-heading scrollpoint sp-effect3" >
                                <div class="newsletter-wrapper">
		                            <h3 class="scrollpoint sp-effect3" style="font-size:40px; "><span>게시글 등록</span></h3>
		                            
                       			</div>
                           </div>
                        </div>
                    </div>
                </div>
            </div>
            </section>
       		<div class="container">
 			<form action ="/faq/result" method="post">
	 			<table class="table">
	 				<thead>
	 					<th></th>
	 					<th></th>
	 				</thead>
	 				<tbody>
	 					<tr>
	 						<td><label for="exampleFormControlInput1" class="form-label">질문</label></td>
	 						<td><input type="text" class="form-control board-title" placeholder="질문 입력" name="title"></td>
	 					</tr>
	 					<tr>
	 						<td><label for="exampleFormControlTextarea1" class="form-label">답변</label></td>
	 						<td><textarea class="form-control board-title" rows="10" placeholder="답변 입력" name="answer"></textarea></td>
	 					</tr>
	 					<tr>
	 						<td	colspan="2">
	 						
	 								<div class="form-group has-feedback"  style="margin-right:200px;  margin-bottom:0">
	                                	<a href="/faq/list">
	                                	<button class="form-control-feedback enrollBtn" type="button"
	                                	style="width:150px;">목록</button></a>
	                            	</div>
	                    
	                            
	                            <div class="form-group has-feedback" >
	                                	<button class="form-control-feedback enrollBtn" style="width:150px;  margin-bottom:0">등록</button>
	                            </div>
	 					        </td>
	 					</tr>					
	 				</tbody>
	 			</table>
	 		</form>
            </div>
		</div>
</body>
</html>