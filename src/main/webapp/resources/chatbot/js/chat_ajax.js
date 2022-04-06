$(document).ready(function() {
/*	var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
	var options = { //지도를 생성할 때 필요한 기본 옵션
		center: new kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
		level: 3
		//지도의 레벨(확대, 축소 정도)
	};
	var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
*/
	$('.sendBtn').click(function() {
		/*var bbbot = $('.chatincoming').val();*/
		var user = $('.chat-text').val();
		var postdata = {
			"user": user
		}
		let today = new Date();   

		$.ajax({
			type: 'POST',
			url: '/chatbot/chat',
			/*data: postdata,*/
			data: JSON.stringify(postdata),
			dataType:'JSON',
			//        async: false,
			contentType: "application/json; charset=utf-8",
			success: function(data) {
				
				//챗봇
				$( '#chat' ).append( '<li class="me"> <div class="entete"><h3>'+today.toLocaleTimeString()+'</h3></div><div class="message">'+user+'</div></li>' )
				$( '#chat' ).append( '<li class="you"> <div class="entete"><h3>'+today.toLocaleTimeString()+'</h3></div><div class="message">'+data.bbbot+'</div></li>' )
				$('.chat-text').val('');
				/*$( '#chat' ).append( '<li class="you">' )
				$( '#chat' ).append( '<div class="entete">' )
				$( '#chat' ).append( '<h3>'+today.toLocaleTimeString()+'</h3>' )
				$( '#chat' ).append( '<div class="message">'+data.bbbot+'</div>' )
				$( '#chat' ).append( '</div>' )
				$( '#chat' ).append( '</li>' )*/
				
			},
			error: function(xtr, status, error) {
				alert(xtr + ":" + status + ":" + error);
			}
		});
	})
})