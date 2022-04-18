<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
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
		                            <h3 class="scrollpoint sp-effect3" style="font-size:40px; "><span>게시글 수정</span></h3>
		                            
                       			</div>
                           </div>
                        </div>
                    </div>
                </div>
            </div>
            </section>
       		<div class="container">
 			<form action ="/faq/update" method="post">
	 			<table class="table">
	 				<thead>
	 					<th></th>
	 					<th></th>
	 				</thead>
	 				<tbody>
	 				
						<input type ="hidden" name="no" value="${pageInfo.no}" />
	 					<tr>
	 						<td><label for="exampleFormControlInput1" class="form-label">질문</label></td>
	 						<td><input type="text" class="form-control board-title" placeholder="input question" 
	 						name="title" value="${pageInfo.title }"></td>
	 					</tr>
	 					<tr>
	 						<td><label for="exampleFormControlTextarea1" class="form-label">답변</label></td>
	 						<td><textarea class="form-control board-title" rows="10" placeholder="input answer" name="answer">${pageInfo.answer }</textarea></td>
	 					
	 					<tr>
		 					<td	colspan="2">
 								<div class="form-group has-feedback"  style="margin-right:200px;  margin-bottom:0">
                                	<a href="/faq/list">
	                                	<button class="form-control-feedback enrollBtn" type="button"
			                                	style="width:150px;">목록</button></a>
	                            	</div>
	                    
	                            <div class="form-group has-feedback" >
                                	<button class="form-control-feedback enrollBtn" style="width:150px;  margin-bottom:0" type="submit">등록</button>
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