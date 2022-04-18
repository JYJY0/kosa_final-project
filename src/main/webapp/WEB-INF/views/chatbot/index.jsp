<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko" class="no-js">
<jsp:include page="../common/chatbot_header.jsp" />
<script type="text/javascript">
var product = []
$(document).ready(function() {
	var member_code = '${member_code}';
	$('.sendBtn').click(function() {
		var user = $('.chat-text').val();
		var postdata = {
			"user": user,
			"member_code" : member_code
		}
		
		let today = new Date(); 
		
		$.ajax({
			type: 'POST',
			url: 'http://localhost:5000/chat',
			/*data: postdata,*/
			data: JSON.stringify(postdata),
			dataType:'JSON',
			//        async: false,
			contentType: "application/json; charset=utf-8",
			success: function(data) {
				
				$( '#chat' ).append( '<li class="me"> <div class="entete"><h3>'+today.toLocaleTimeString()+'</h3></div><div class="message">'+user+'</div></li>' )
				if (data.text.includes('/')){
					var txt1 = data.text.substr(0,(data.text.indexOf('/')-1))
					var txt2 = data.text.substr(data.text.indexOf('/')+1,data.text.length)
					$( '#chat' ).append( '<li class="you"> <div class="entete"><h3>'+today.toLocaleTimeString()+'</h3></div><div class="message"><ul><li>'+txt1+'</li><li>'+txt2+'</li><ul></div></li>' )
				}else{
					$( '#chat' ).append( '<li class="you"> <div class="entete"><h3>'+today.toLocaleTimeString()+'</h3></div><div class="message">'+data.text+'</div></li>' )	
				} 
				
				$('.chat-text').val('');
				
				for (var i = 0; i<data.productList.length; i++){
					product.push(data.productList[i]);
				}
				
			var data = { "product_name":product };
			
			
			//product 검색 
			if(product .length != 0){
				$.ajax({
	             url :"../product/search",
	             data :JSON.stringify(data),
	             dataType : "JSON",
	             type : "post",
	             contentType: "application/json; charset=utf-8",
	             
	             success:function(data){
					var innerHTMLCode = "";
					$('.side-images').empty();
				
	            	for (var i = 0; i < 4; i++){
		
						innerHTMLCode += '<div class="card">'+
						'<div class="card-header"><div class = "card-header-is_closed" ></div >'+
						'<img src="'+data.imageResult[i]+'" alt=""></div>'+
						'<div class="card-body"> <div class="card-body-header">'+
						'<h4 >'+ data.nameResult[i]+'</h4>'+
						'<p class = "card-body-nickname">가격:'+data.priceResult[i]+'원</p></div>'+
						'<div class="card-body-footer"> <hr style="margin-bottom: 8px; opacity: 0.5; border-color: #EF5A31">'+
						'</div></div></div>'
	            	}
					
	            	$(".card-wrap").empty().append(innerHTMLCode);
	            	product = [];
	             }
	         });
	         }else{
				 $(".card-wrap").empty();
				 
	        	 
				}
			
				},
				error: function(xtr, status, error) {
					alert(xtr + ":" + status + ":" + error);
				}
			});
			
				     
		});
	
});
</script>

<body>

	<!-- Wrap all page content here -->
	<div id="wrap">
		<jsp:include page="../common/chatbot_nav.jsp" />
		<section id="packages">
			<!-- <div class="container"> -->
				
				<div class="container">
					<div class="col-md-5 chat-container">
						<div id="container2">
							<main> <div class="chat-header">
									 <img src="<c:url value="/resources/chatbot/img/logo3.png"/>" alt="" >
									<div>
									</div>
								</div>
								<ul id="chat">
									<!-- 챗봇내용 -->
								</ul>
								<div class="chat-footer">
									<!-- <div class="row"> -->
										<div class="col-md-10 chat-textarea">
											<textarea placeholder="Type your message" class="chat-text"></textarea>
										</div>
										<div class="chat-foot">
											<button type="submit" class="sendBtn" >
												<svg xmlns="http://www.w3.org/2000/svg" width="30"
													fill="currentColor" class="bi bi-send"
													viewBox="0 0 16 16" style="color:white;">
  											<path d="M15.854.146a.5.5 0 0 1 .11.54l-5.819 14.547a.75.75 0 0 1-1.329.124l-3.178-4.995L.643 7.184a.75.75 0 0 1 .124-1.33L15.314.037a.5.5 0 0 1 .54.11ZM6.636 10.07l2.761 4.338L14.13 2.576 6.636 10.07Zm6.787-8.201L1.591 6.602l4.339 2.76 7.494-7.493Z" />
												</svg>
											</button>
										</div>
									<!-- </div> -->
								</div>
							</main>
						</div>
												
					</div>
					
					<!-- 챗봇 질문결과 카드 -->
					<div class="side-images">	
						<img src="<c:url value="/resources/chatbot/img/chat_side1.png"/>" alt=""  class="chat-side">
						<img src="<c:url value="/resources/chatbot/img/chat_side2.png"/>" alt=""  style="margin-bottom:100px" class="chat-side">
						</div>		
					<div class="col-md-7 card-wrap">
						
						<!-- 챗봇 결과 데이터 넣을 때 결과 개수에 따라 반복될 코드 -->
					<%-- 	<div class="card">
						
							<!-- 카드 헤더(상품이미지 -> style.css에서 background-image) -->
							<div class="card-header">
								<div class = "card-header-is_closed" ></div >
							    <img src="<c:url value="/resources/chatbot/img/pregnant.jpg"/>" alt="" >
							</div>
					
							<!--  카드 바디 -->
							<div class="card-body">
					
								<div class="card-body-header">
									<h1>(제품명)</h1>
									 <p class = "card-body-nickname">가격: </p>
								</div>
					
								<div class="card-body-footer">
									<hr style="margin-bottom: 8px; opacity: 0.5; border-color: #EF5A31">
								</div>
							</div>
						</div>
						<!-- 여기까지 반복될 코드  -->


					</div>
 --%>					<!-- 카드 끝 -->	
									
				</div>
		</section>


	</div>




</body>

</html>

