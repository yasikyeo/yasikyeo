<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>다음지도</title>
</head>
<body>
<br>

<style type="text/css">
@font-face{
   font-family:'BMJUA';
   src:url('../font/BMJUA_ttf.ttf') format('truetype');
}

#daummap{
	width: 100%;
	height: 680px;
	background: #f7f7f7;
	font-family: BMJUA;
}

#btn{
	width: 120px;
	height: 30px;
	color: #ffffff;
	cursor: pointer;
	background: #05d6b7;
	font-family: BMJUA;
}

#addr{
	width: 200px;
	height: 30px;
	color: black;
	background: #ffffff;
	font-family: BMJUA;
}

</style>
<form id="daummap">

<p style="margin-top:-12px">
    <em class="link">
        <a href="javascript:void(0);" onclick="window.open('http://fiy.daum.net/fiy/map/CsGeneral.daum', '_blank', 'width=981, height=650')">
        	혹시 주소 결과가 잘못 나오는 경우에는 여기에 제보해주세요.
        </a>
    </em> 
</p>
<div id="map" style="width:100%;height:350px;"></div>
<script type="text/javascript" src="http://jsgetip.appspot.com"></script>
<script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=6f995e4b8ec39bdf0eea2ce1adc5a2e7&libraries=services"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery/jquery-3.1.0.min.js"></script>
<script type="text/javascript">

$(document).ready(function(){
	var getaddr = "";
	$("#btn").click(function(){
		getaddr = $("#addr").val();
		geocoder.addr2coord("'"+getaddr+"'",function abc(status, result) {
			// 정상적으로 검색이 완료됐으면 
			if (status === daum.maps.services.Status.OK) {
				var coords = new daum.maps.LatLng(result.addr[0].lat, result.addr[0].lng);
				//생성된 마커를 이동
				marker.setPosition(coords);
							       
				// 인포윈도우로 장소에 대한 설명을 표시합니다
				infowindow.open(map, marker);
				
				// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
				map.setCenter(coords);
							       
				//메세지
				//console.log(coords); coords가 경도 위도 다 찍어줌
							       
				message = '검색한 위치의 위도는 ' + coords.getLat() + ' 이고, ';
				message += '경도는 ' + coords.getLng() + ' 입니다';
							       
				var resultDiv = document.getElementById('Latlng'); 
				resultDiv.innerHTML = message;
							       
				//변수에 위도 경도값 저장
				lat = coords.getLat();
				lng = coords.getLng();
				var resultDiv2 = document.getElementById('Latlng2');
				resultDiv2.innerHTML = lat;
							       
				var resultDiv3 = document.getElementById('Latlng3');
				resultDiv3.innerHTML = lng;
				
			}
		});
	});
	
	// 지도를 표시할 div 
	var mapContainer = document.getElementById('map'),mapOption = {
		center: new daum.maps.LatLng(37.535221769634354, 126.9026321580659), // 지도 생성 시 처음에 나타나는 좌표
        level: 3 // 지도의 확대 레벨
    };  
    
	// 지도를 생성합니다    
	var map = new daum.maps.Map(mapContainer, mapOption);
	
	// HTML5의 geolocation으로 사용할 수 있는지 확인합니다 
	if (navigator.geolocation) {
	    // GeoLocation을 이용해서 접속 위치를 얻어옵니다
	    navigator.geolocation.getCurrentPosition(function(position) {
	    	var lat = position.coords.latitude,  // 위도
	            lon = position.coords.longitude; // 경도
	        
	        var locPosition = new daum.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
	            message = '<div style="width:150px;text-align:center;padding:10px 0;">우리회사</div>'; // 인포윈도우에 표시될 내용입니다
	        
	        // 마커와 인포윈도우를 표시합니다
	        displayMarker(locPosition, message);
	            
	        //GPS의 위도 경도값을 표시
	        message = 'GPS 위치의 위도는 ' + lat + ' 이고, ';
			message += '경도는 ' + lon + ' 입니다';
					       
			var resultDiv = document.getElementById('Latlng'); 
			resultDiv.innerHTML = message;
					       
			//변수에 위도 경도값 저장
			var resultDiv2 = document.getElementById('Latlng2');
			resultDiv2.innerHTML = lat;
					       
			var resultDiv3 = document.getElementById('Latlng3');
			resultDiv3.innerHTML = lon;
			
	        console.log('geolocation 실행 완료');
	        
	});
	}else{ // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다
		
		var locPosition = new daum.maps.LatLng(33.450701, 126.570667);    
	    displayMarker(locPosition);
		console.log('geolocation을 사용할수 없어요..');
	}
	
	// 지도에 마커와 인포윈도우를 표시하는 함수입니다
	function displayMarker(locPosition, message) {

	    // 마커를 생성합니다
	    marker = new daum.maps.Marker({  
	    map: map, 
	    position: locPosition
	    }); 
	    
	    var iwContent = message, // 인포윈도우에 표시할 내용
	        iwRemoveable = true;

	    // 인포윈도우를 생성합니다
	    infowindow = new daum.maps.InfoWindow({
	    content : iwContent,
	    removable : iwRemoveable
	    });
	    
	    // 인포윈도우를 마커위에 표시합니다 
	    infowindow.open(map, marker);
	    
	    // 지도 중심좌표를 접속위치로 변경합니다
	    map.setCenter(locPosition);
	}    
	
	
	
	//지도에 확대 축소 컨트롤을 생성한다
	var zoomControl = new daum.maps.ZoomControl();

	//지도의 우측에 확대 축소 컨트롤을 추가한다
	map.addControl(zoomControl, daum.maps.ControlPosition.RIGHT);

	// 주소-좌표 변환 객체를 생성합니다
	var geocoder = new daum.maps.services.Geocoder();

	//마커 생성
	var marker = new daum.maps.Marker({ 
    	map: map
	}); 

	//경도 위도 값을 담을 변수 생성
	var lat, lng;

	//인포 윈도우 추가
	var infowindow = new daum.maps.InfoWindow({
		content: '<div style="width:150px;text-align:center;padding:10px 0;">우리회사</div>'
	});

	//위도 경도 찍을 메세지 추가
	var message = '';

	//주소값을 확인할 수 있는 기능
	function searchDetailAddrFromCoords(coords, callback) {
    	// 좌표로 법정동 상세 주소 정보를 요청합니다
    	geocoder.coord2detailaddr(coords, callback);
	}

	//클릭 시 마커가 생성되게 해줌
	daum.maps.event.addListener(map, 'click', function a(mouseEvent) {
		searchDetailAddrFromCoords(mouseEvent.latLng, function(status, result) {
	
			//주소값을 저장하는 변수 선언
			//도로명주소, 지번주소가 따로있음
			var detailAddr = !!result[0].roadAddress.name ? '<div>도로명주소 : ' + result[0].roadAddress.name + '</div>' : '';
        	detailAddr += '<div>지번 주소 : ' + result[0].jibunAddress.name + '</div>';
        
        	console.log(detailAddr);
		
	    	// 클릭한 위도, 경도 정보를 가져옵니다 
	    	var latlng = mouseEvent.latLng;
	    
	    	console.log(latlng);

	    	// 마커 위치를 클릭한 위치로 옮깁니다
	    	marker.setPosition(latlng);
	    
	    	//인포 윈도우 추가
	    	infowindow.open(map, marker);
	    
	    	message = '클릭한 위치의 위도는 ' + latlng.getLat() + ' 이고, ';
	    	message += '경도는 ' + latlng.getLng() + ' 입니다';
	     
	    	//위도 경도값을 웹상에 같이 출력
	    	var resultDiv = document.getElementById('Latlng'); 
	    	resultDiv.innerHTML = message;
	    
	  		//위도 경도값을 웹상에 따로 출력하기 위한 변수 선언
	    	lat = latlng.getLat();
	    	lng = latlng.getLng();
	    	var resultDiv2 = document.getElementById('Latlng2');
	    	resultDiv2.innerHTML = lat;
	    
	    	var resultDiv3 = document.getElementById('Latlng3');
	    	resultDiv3.innerHTML = lng;
	    
	    	//클릭 시 주소값이 웹상에 나타나도록 변수 선언
	    	var resultDiv4 = document.getElementById('chaddr');
	    	resultDiv4.innerHTML = detailAddr;
		});
	});
});


</script>

<input type="text" id="addr" name="addr">
<input type="button" id="btn" value="주소로 검색" name="address">

<div id="Latlng"></div>
<br>

<b>DB저장용 위도값</b>
<div id="Latlng2"></div>

<b>DB저장용 경도값</b>
<div id="Latlng3"></div>

<b>클릭한 주소값</b>
<div id="chaddr"></div>
<br>

<input type="submit" value="확인" id="btn">
</form>


</body>
</html>