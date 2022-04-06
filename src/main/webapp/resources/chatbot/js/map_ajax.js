$(document).ready(function() {
	var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
	var options = { //지도를 생성할 때 필요한 기본 옵션
		center: new kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
		level: 3
		//지도의 레벨(확대, 축소 정도)
	};
	var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴

	$('#searchBtn').click(function() {
		var district = $('#district').val();
		var type = $('#type').val();

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
				/*var positions = []*/
				var points = []
				// 버튼을 클릭하면 아래 배열의 좌표들이 모두 보이게 지도 범위를 재설정합니다 
				for(var i = 0; i<facilityList.length;i++){
				// 마커를 표시할 위치와 title 객체 배열입니다 
					points.push(new kakao.maps.LatLng(facilityList[i].lat, facilityList[i].lon));
				}
				
				// 지도를 재설정할 범위정보를 가지고 있을 LatLngBounds 객체를 생성합니다
				var bounds = new kakao.maps.LatLngBounds();

				var i, marker;
				for (i = 0; i < points.length; i++) {
					// 배열의 좌표들이 잘 보이게 마커를 지도에 추가합니다
					marker = new kakao.maps.Marker({ position: points[i] });
					marker.setMap(map);

					// LatLngBounds 객체에 좌표를 추가합니다
					bounds.extend(points[i]);
				}
				
				/*for(var i = 0; i<facilityList.length;i++){
				// 마커를 표시할 위치와 title 객체 배열입니다 
				positions.push({
						title: facilityList[i].place_name,
						latlng: new kakao.maps.LatLng(facilityList[i].lat, facilityList[i].lon)
					});
					
				}
				
				// 마커 이미지의 이미지 주소입니다
				var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png";

				for (var i = 0; i < positions.length; i++) {

					// 마커 이미지의 이미지 크기 입니다
					var imageSize = new kakao.maps.Size(24, 35);

					// 마커 이미지를 생성합니다    
					var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);

					// 마커를 생성합니다
					var marker = new kakao.maps.Marker({
						map: map, // 마커를 표시할 지도
						position: positions[i].latlng, // 마커를 표시할 위치
						title: positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
						image: markerImage // 마커 이미지 
					});
				}*/
				
				//챗봇
			},
			error: function(xtr, status, error) {
				alert(xtr + ":" + status + ":" + error);
			}
		});
		map.setBounds(bounds);
	})
})