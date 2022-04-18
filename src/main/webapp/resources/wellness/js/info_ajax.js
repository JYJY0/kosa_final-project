
$(document).ready(function() {

	var lists = "";
	$('.property-check').click(function() {
		/*$('.property-check').change(function(){*/
			if($('.property-check').is(':checked')){
				$("input[name='property-check']:checked").each(function(i) {   //jQuery로 for문 돌면서 check 된값 배열에 담는다
					lists = $(this).val();
		});
			}else{
				//$('.property-check').prop('checked',false);
				$( '.descript' ).empty()
				lists='';
			}
		var postdata = {
			"property": lists
		};
		$.ajax({
			type: 'POST',
			url: '/wellness/info',
			//data: postdata,
			data: JSON.stringify(postdata),
			dataType: 'json',
			//        async: false,
			contentType: "application/json; charset=utf-8",
			success: function(data) {
				$( '.descript' ).append( '<textarea rows="" cols=""> '+data.descript+'</textarea>' )	
				var textarea = $('.descript textarea');
				textarea.style.height = 'auto';
    			let height = textarea.scrollHeight; // 높이
    			textarea.style.height = `${height + 8}px`;
			}/*,
			error: function(xtr, status, error) {
				alert(xtr + ":" + status + ":" + error);
			}*/
		
		});
	});
	 
});

