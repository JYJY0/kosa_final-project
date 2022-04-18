$(document).ready(function() {
	var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
	var options = { //지도를 생성할 때 필요한 기본 옵션
		center: new kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
		level: 3
		//지도의 레벨(확대, 축소 정도)
	};
	var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
	// 지도를 재설정할 범위정보를 가지고 있을 LatLngBounds 객체를 생성합니다
	
	// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
	function makeClickListener(map, marker, infowindow) {
	    return function() {
	        infowindow.open(map, marker);
	    };
	}
	// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
	function makeOverListener(map, marker, infowindow) {
	    return function() {
	        infowindow.open(map, marker);
	    };
	}
	
	// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
	function makeOutListener(infowindow) {
	    return function() {
	        infowindow.close();
	    };
	}



	$('#searchBtn').click(function() {
		var district = $(".district option:selected").val();
		var type =$(".type option:selected").val();
		
		$("select[name=type]").change(function(){
  			type = $("select[name=type] option:selected").text();
		});
		var postdata = {
			"district": district,
			"type": type
		}

		$.ajax({
			type: 'POST',
			url: '/facility/search',
			/*data: postdata,*/
			data: JSON.stringify(postdata),
			dataType:'JSON',
			//        async: false,
			contentType: "application/json; charset=utf-8",
			success: function(data) {
				//map
				var facilityList = data.facilityList;
				
				var points = []
				var positions = []
				for(var i = 0; i<facilityList.length;i++){
				// 마커를 표시할 위치와 title 객체 배열입니다 
				positions.push({
						title: facilityList[i].place_name,
						latlng: new kakao.maps.LatLng(facilityList[i].lat, facilityList[i].lon),
						address : facilityList[i].address
					});
				}
				
				
				
				
				// 마커 이미지의 이미지 주소입니다
				var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png";
				// 마커를 클릭했을 때 마커 위에 표시할 인포윈도우를 생성합니다
				var iwContent = '<div style="padding:5px;">Hello World!</div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
				    iwRemoveable = true; // removeable 속성을 ture 로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됩니다
				
				for (var i = 0; i < positions.length; i++) {
					// 마커 이미지의 이미지 크기 입니다
					var imageSize = new kakao.maps.Size(24, 35);
					// 마커 이미지를 생성합니다    
					var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);
					// 마커를 생성합니다
					var marker = new kakao.maps.Marker({
						map: map, // 마커를 표시할 지도
						position: positions[i].latlng, // 마커를 표시할 위치
						//title: positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
						image: markerImage // 마커 이미지 
					});
					
					// 인포윈도우를 생성합니다
					var infotitle = new kakao.maps.InfoWindow({
					    content : '<div style="padding-left: 10px;">'+positions[i].title+'</div>',
					    removable : true
					});	
					// 인포윈도우를 생성합니다
					var infocontent = new kakao.maps.InfoWindow({
					    content : '<div style="font-size:15px; padding-left: 10px;">'+positions[i].address+'</div>',
					    removable : true
					});	
				    // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
				    // 이벤트 리스너로는 클로저를 만들어 등록합니다 
				    // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
				    
				    //클릭하면 상세정보, 마우스 오버하면 제목 
				    kakao.maps.event.addListener(marker, 'click', makeClickListener(map, marker, infocontent));
				    kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infotitle));
				    kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infotitle));		 
				}
				
				// 버튼을 클릭하면 아래 배열의 좌표들이 모두 보이게 지도 범위를 재설정합니다 
				for(var i = 0; i<facilityList.length;i++){
				// 마커를 표시할 위치와 title 객체 배열입니다 
					points.push(new kakao.maps.LatLng(facilityList[i].lat, facilityList[i].lon));
					
				}
				
				
				// 지도를 재설정할 범위정보를 가지고 있을 LatLngBounds 객체를 생성합니다
				var bounds = new kakao.maps.LatLngBounds();
					
					
				var i, marker;
				for (i = 0; i < points.length; i++) {
					
					// LatLngBounds 객체에 좌표를 추가합니다
					bounds.extend(points[i]);
				}
				
				
				 	map.setBounds(bounds);
				
			},
			error: function(xtr, status, error) {
				alert(xtr + ":" + status + ":" + error);
			}
		});
		
	})

})
