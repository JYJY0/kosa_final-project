<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" class="no-js">
<jsp:include page="../common/chatbot_header.jsp" />
<body>

	<!-- Wrap all page content here -->
	<div id="wrap">
		<jsp:include page="../common/chatbot_nav.jsp" />
		
        <section id="team">
            <div class="container">
            
                <div id="carousel-team" class="carousel slide" data-ride="carousel">
                	
                    <div class="row">
                        <div class="col-md-12">
                            <div class="section-heading scrollpoint sp-effect3" >
                                <div class="newsletter-wrapper">
		                            <h3 class="scrollpoint sp-effect3" style="font-size:40px; "><span>제품</span>검색</h3>
		                            <span class="divider scrollpoint sp-effect3"style="margin-bottom:50px;">
		                            </span>
		                            <div class="form-group has-feedback">
		                                <input type="text" class="form-control" placeholder="product" id="product_name" name="product_name">
		                                <button class="form-control-feedback" id="product-search">Search</button>
		                            </div>
                       			</div>
                           </div>
                        </div>
                    </div>
                
                    <div class="carousel-inner2">
						<!-- ajax 데이터 통신 받는 곳 -->                        
                    </div>
                    
                </div>
            </div>
        </section>
		<%-- <jsp:include page="../common/chatbot_footer.jsp" /> --%>		   
	</div>

</body>
<script type="text/javascript">
     $("#product-search").click(function(){
    	 var data = {
    		'product_name' : [$("#product_name").val()]
    	 };
         $.ajax({
             url :"product/search",
             data : JSON.stringify(data),
             dataType : "JSON",
             type : "post",
             contentType: "application/json; charset=utf-8",
             success:function(data){
            	for (var i = 0; i < 4; i++){
            		
            			var innerHTMLCode = '<div class="item active">'+
                        '<div class="col-md-6">'+
                            '<div class="row">'+
                                '<div class="col-md-12">'+
                                    '<div class="member">'+
                                        '<div class="media">'+
                                            '<a class="pull-left" href="#">'+
                                                '<img class="media-object" src="'+data.imageResult[i]+'" alt="">'+
                                            '</a>'+
                                            '<div class="media-body">'+
                                                '<h4 class="media-heading">'+
                                                	data.nameResult[i]+
                                                   '<ul><li>' + data.priceResult[i] +'원</li></ul></h4>'+ 
                                                   '</div></div></div></div></div></div>';
                           $(".carousel-inner2").append(innerHTMLCode);
                        
            	
				
            	}
               
             }
         })
     })
 </script>
</html>
