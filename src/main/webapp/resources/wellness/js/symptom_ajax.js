$(document).ready(function() {
var area = "";
$('.select-area img').click(function(){
	area = $(this).attr('id');
		var postdata={
				'area': area
		};
		$.ajax({
			type: 'POST',
			url: '/wellness/symptom',
			/*data: postdata,*/
			data: JSON.stringify(postdata),
			dataType:'JSON',
			//        async: false,
			contentType: "application/json; charset=utf-8",
			success: function(data) {
				
				var inHTML = '<option value="" selected disabled hidden>증상</option>';
				
				for (var i = 0; i< data.symptomList.length; i++){
					inHTML += '<option value="'+data.symptomList[i].descript+'" class="op">'+data.symptomList[i].descript+'</option>';
				}
				
				inHTML += '</select>';
				$('.information-name .symptom').empty().append(inHTML);
				
				
				
			},
			error: function(xtr, status, error) {
				alert(xtr + ":" + status + ":" + error);
			}
		});
		
		$('.container2').css("visibility","visible");
		$('.area-detail').css("visibility","hidden");
		
	});
	$('.symptom').on('change',function(){
		$('.information-name .symptom').removeClass('op');
		var selectedDescript = $('.symptom option:selected').val();
		var postdata = {
			'descript':selectedDescript,
			'area' : area
		};
		
		$.ajax({
				type: 'POST',
				url: '/wellness/symptom',
				/*data: postdata,*/
				data: JSON.stringify(postdata),
				dataType:'JSON',
				//        async: false,
				contentType: "application/json; charset=utf-8",
				success: function(data) {
					
					var inHTML = '<option value="" selected disabled hidden>병명</option>';
					
					for (var i = 0; i< data.labelList.length; i++){
						inHTML += '<option value="'+data.labelList[i].label+'" class="op">'+data.labelList[i].label+'</option>';
					}
					
					inHTML += '</select>';
					$('.information-email .label').empty().append(inHTML);
					
					
					
				},
				error: function(xtr, status, error) {
					alert(xtr + ":" + status + ":" + error);
				}
			});
			
		$('.information-email').css("visibility","visible");	
	});

});

