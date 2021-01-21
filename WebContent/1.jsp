<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-1.8.3.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAocSKbRkKZcp62idOMiqm25xleJiTQWOo&sensor=false&language=ko"></script> 
<script>
$(function(){
    $('.slideshow img:gt(0)').hide();
    setInterval(function(){
      $('.slideshow :first-child').fadeOut(1000)
         .next('img').fadeIn(1000)
         .end().appendTo('.slideshow');}, 
      3000);
});
</script>
<script type="text/javascript">
$(document).ready(function() {
	var myLatlng = new google.maps.LatLng(35.837143,128.558612); // 위치값 위도 경도
	var Y_point			= 35.837143;		// Y 좌표
	var X_point			= 128.558612;		// X 좌표
	var zoomLevel		= 18;				// 지도의 확대 레벨 : 숫자가 클수록 확대정도가 큼
	var markerTitle		= "대구광역시";		// 현재 위치 마커에 마우스를 오버을때 나타나는 정보
	var markerMaxWidth	= 300;				// 마커를 클릭했을때 나타나는 말풍선의 최대 크기
	
	//말풍선 내용
	var contentString	= '<div>' +
	'<h2>대구남구</h2>'+
	'<p>안녕하세요. 구글지도입니다.</p>' +
	
	'</div>';
	var myLatlng = new google.maps.LatLng(Y_point, X_point);
	var mapOptions = {
					zoom: zoomLevel,
					center: myLatlng,
					mapTypeId: google.maps.MapTypeId.ROADMAP
				}
	var map = new google.maps.Map(document.getElementById('map_ma'), mapOptions);
	var marker = new google.maps.Marker({
										position: myLatlng,
										map: map,
										title: markerTitle
	});
	var infowindow = new google.maps.InfoWindow(
											{
												content: contentString,
												maxWizzzdth: markerMaxWidth
											}
		);
	google.maps.event.addListener(marker, 'click', function() {
	infowindow.open(map, marker);
	});
});
</script>
<style>
	.slideshow { 
	    position: relative; 
	    margin-top: 30px;
	    width: 400px; 
	    height: 300px; 
	    padding: 10px; 
	    box-shadow: 0 0 5px rgba(0,0,0,0.4); 
	}
	.slideshow img { 
	    position: absolute; 
	    top: 10px; 
	    left: 10px; 
	    right: 10px; 
	    bottom: 10px; 
	}
	#map_ma {
	width:100%;
	height:400px;
	clear:both;
	border:solid 1px red;
	}

</style>
</head>
<body>
		<div class="slideshow">
		     <img src=".\img\1.jpg" width="400" height="300"/>
		     <img src=".\img\2.jpg" width="400" height="300"/>
		     <img src=".\img\3.jpg" width="400" height="300"/>
		</div>
		<div id="map_ma"></div>
</body>
</html>