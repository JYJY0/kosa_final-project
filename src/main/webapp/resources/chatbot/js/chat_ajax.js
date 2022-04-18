var product = []
$(document).ready(function() {
	
	$('.sendBtn').click(function() {
		var member_code = "<input type=";
		alert(member_code)
		var user = $('.chat-text').val();
		var postdata = {
			"user": user,
			/*"member_code"*/
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
				
				//챗봇
				$( '#chat' ).append( '<li class="me"> <div class="entete"><h3>'+today.toLocaleTimeString()+'</h3></div><div class="message">'+user+'</div></li>' )
				$( '#chat' ).append( '<li class="you"> <div class="entete"><h3>'+today.toLocaleTimeString()+'</h3></div><div class="message">'+data.text+'</div></li>' )
				$('.chat-text').val('');
				
				for (var i = 0; i<data.productList.length; i++){
					product.push(data.productList[i]);
					
				}
				
			var data = {
				"product_name":product
			};	
			alert(product.length);
			if(product .length != 0){
				$.ajax({
				
	             url :"../product/search",
	             data :JSON.stringify(data),
	             dataType : "JSON",
	             type : "post",
	             contentType: "application/json; charset=utf-8",
	             
	             success:function(data){
					var innerHTMLCode = "";
	            	for (var i = 0; i < 4; i++){
		
						innerHTMLCode += '<div class="card">'+
						'<div class="card-header"><div class = "card-header-is_closed" ></div >'+
						'<img src="'+data.imageResult[i]+'" alt=""></div>'+
						'<div class="card-body"> <div class="card-body-header">'+
						'<h1>'+ data.nameResult[i]+'</h1>'+
						'<p class = "card-body-nickname">가격:'+data.priceResult[i]+' </p></div>'+
						'<div class="card-body-footer"> <hr style="margin-bottom: 8px; opacity: 0.5; border-color: #EF5A31">'+
						'</div></div></div>'
						
	                        
					
	            	}
	            	$(".card-wrap").empty().append(innerHTMLCode);
	            	product = [];
	               
	             }
	         });
	         }else{
				$(".card-wrap").empty()
	}
			
				},
				error: function(xtr, status, error) {
					alert(xtr + ":" + status + ":" + error);
				}
			});
			
				     
		});
	
})