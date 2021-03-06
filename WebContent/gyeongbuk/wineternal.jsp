<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="http://fonts.googleapis.com/earlyaccess/hanna.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAocSKbRkKZcp62idOMiqm25xleJiTQWOo&sensor=false&language=ko"></script> 
<script type="text/javascript">
	function logout(){
	     var frm=document.login;
	     frm.method="post";
	     frm.action="./../logoutCtl.jsp";
	     frm.submit();  
	}
</script>
<script type="text/javascript">
$(document).ready(function() {
	var myLatlng = new google.maps.LatLng(35.715094,128.720288); // 위치값 위도 경도
	var Y_point			= 35.715094;		// Y 좌표
	var X_point			= 128.720288;		// X 좌표
	var zoomLevel		= 18;				// 지도의 확대 레벨 : 숫자가 클수록 확대정도가 큼
	var markerTitle		= "청도 와인터널";		// 현재 위치 마커에 마우스를 오버을때 나타나는 정보
	var markerMaxWidth	= 300;				// 마커를 클릭했을때 나타나는 말풍선의 최대 크기
	
	//말풍선 내용
	var contentString	= '<div>' +
	'<h2>청도 와인터널</h2>'+
	'<p>경상북도 청도군 화양읍 송금리 252-2</p>' +
	
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
<style type="text/css">
		.button {
			background-color: pink;
		 	border: none;
		  	color: white;
			padding: 6px 10px;
			text-align: center;
			text-decoration: none;
			display: inline-block;
			font-size: 15px;
			font-family: Hanna, sans-serif;
		}
		.p1 {
			color: pink;
			font-size: 50px;
			font-family: Hanna, sans-serif;
		}
		.p2 {
			color: pink;
			font-size: 15px;
		}
		.land {
			fill: white;
			fill-opacity: 1;
			stroke:pink;
			stroke-opacity: 1;
			stroke-width: 2;
		}
		.land:hover {
			fill: pink;
		}
		.TEXT {
			fill: black;
			font-size: 10;
			font-family: Hanna, sans-serif;
			text-anchor: middle;
			alignment-baseline: middle;
		}
		.list {
			list-style-type: none;
			text-align: right;
			padding: 5px 0;
			padding-bottom: 8px;
			border-bottom: 2px solid pink;
		}
		.list2 {
			list-style-type: none;
			text-align: center;
			padding: 5px 0;
			border-bottom: 2px solid pink;
		}
		.list3 {
			list-style-type: none;
			text-align: center;
			padding: 5px 0;
		}
		.list4 {
			list-style-type: none;
			text-align: right;
			padding: 5px 0;
			padding-bottom: 3px;
			border-bottom: 2px solid pink;
		}
		.login, .joinus {
			display : inline;
			text-align: right;
			letter-spacing : 3px;
			font-family: Hanna, sans-serif;
			text-transform : uppercase;
			color: pink;
		}
		.aa {
		color: pink;
		text-decoration: none;
		}
		.aaa {
		color: black;
		text-decoration: none;
		}
		.board2 {
			font-family: Hanna, sans-serif;
		}
		.full {
			width: 80%;
			padding: 10px;
			height: 100%;
			float: left;
		}
		.board {
			color: pink;
			display : inline;
			letter-spacing : 3px;
			text-transform : uppercase;
			border: 2px solid pink;
			padding: 10px;
			margin-top: 30px;
			width: 15%;
			float: left;
			text-align: center;
		}
		.board3 {
			color: pink;
			text-transform : uppercase;
			border: 2px solid pink;
			text-align: center;
		}
		.tg {
			border-collapse:collapse;
			border-spacing:0;
		}
		.tg td {
			border-color:black;
			border-style:solid;
			border-width:1px;
			font-family:Arial, sans-serif;
			font-size:14px;
		    overflow:hidden;
		    padding:9px 5px;
		    word-break:normal;
			border-bottom:none;
			border-left:none;
			text-align: center;
		}
		.tg th {
			border-color:black;
			border-style:solid;
			border-width:1px;
			font-family:Arial, sans-serif;
			font-size:14px;
		    font-weight:normal;
		    overflow:hidden;
		    padding:9px 5px;
		    word-break:normal;
			border-left:none;
			border-top:none;
			text-align: center;
		}
		.tg .top {
			text-align:right;
			vertical-align:top;
			text-align: center;
		}
		.tg .top2 {
			text-align:right;
			vertical-align:top;
			text-align: center;
			border-right:none;
		}
		.tg .bottom {
			text-align:left;
			vertical-align:top;
			text-align: center;
		}
		.tg .bottom2 {
			text-align:left;
			vertical-align:top;
			text-align: center;
			border-right:none;
		}
		.tg .bottom3 {
			text-align:left;
			vertical-align:top;
			text-align: center;
		}
		.admin {
			border-color:black;
			border-style:solid;
			border-width:1px;
			font-family:Arial, sans-serif;
			font-size:14px;
		    overflow:hidden;
		    padding:9px 5px;
		    word-break:normal;
			border-left:none;
			border-top:none;
			border-right:none;
			text-align: center;
			width: 100%;
		}
		.admin2 {
			border-color:black;
			border-style:solid;
			border-width:1px;
			font-family:Arial, sans-serif;
			font-size:30px;
		    overflow:hidden;
		    padding:9px 5px;
		    word-break:normal;
			border-left:none;
			border-top:none;
			border-right:none;
			border-bottom:none;
			text-align: center;
			width: 100%;
		}
		#map_ma {
			width: 35%;
			height: 250px;
			clear: both;
			float: right;
			border:solid 1px black;
			margin-top: 30px;
			margin-right: 150px;
		}
		.slideshow { 
		    position: relative; 
		    margin-top: 30px;
		    width: 500px; 
		    height: 250px; 
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
		.board2 a{
			color: pink;
			text-decoration: none;
		}
</style>

</head>
<body>
		<%
      		 if (session.getAttribute("id") == null) {
      	%>
	<form name="login">
	<div class="p1">
		<a href=".\..\main.jsp" class="aa">길나들이</a>
		<p class="p2">A moment Walking the Flower road</p>
		</div>
		<div>
	<div>
		<ul class="list">
			<li class="login"><a href=".\..\login.jsp" class="aa">Login</a></li>
			<li class="login">│</li>
			<li class="joinus"><a href=".\..\SignUp.jsp" class="aa">Join us</a></li>
			<li class="joinus">│</li>
			
			<div class="board">
			<ul class="list2">
				<br><br>
				<li class="board2"><a href=".\..\free_board.jsp?board_category=1">이달의 HOT<p class="board2">PlACE</p></a></li><br>
			</ul>
			<ul class="line">
			</ul>
			<ul class="list2">
				<br><br>
				<li class="board2"><a href=".\..\free_board.jsp?board_category=2">여행지 추천</a></li>
				<br><br>
			</ul>
			<ul class="list2">
				<br><br>
				<li class="board2"><a href=".\..\free_board.jsp?board_category=3">후기 게시판</a></li>
				<br><br>
			</ul>
			<ul class="list2">
				<br><br>
				<li class="board2"><a href=".\..\free_board.jsp?board_category=4">자유 게시판</a></li>
				<br><br>
			</ul>
			<ul class="list3">
				<br><br>
				<li class="board2"><a href=".\..\random.jsp" class="aa">랜덤 추천 여행</a></li>
				<br><br>
			</ul>
		</div>
		</ul>
		</form>
		<% 
		}else if (session.getAttribute("flag").equals("1")){
      	%>
      	<form name="login">
      	<div class="p1">
		<a href=".\..\main.jsp" class="aa">길나들이</a>
		<p class="p2">A moment Walking the Flower road</p>
		</div>
		<div>
		<ul class="list4">
			<li class="login"><%=session.getAttribute("nickname") %>님</li>
			<li class="login"><input type="submit" onClick="logout()" class="button" value="로그아웃"></li>
			<li class="login">│</li>
			<li class="joinus"><a href=".\..\adminmain.jsp" class="aa">Admin Page</a></li>
			<li class="joinus">│</li>
			
			<div class="board">
			<ul class="list2">
				<br><br>
				<li class="board2"><a href=".\..\free_board.jsp?board_category=1">이달의 HOT<p class="board2">PlACE</p></a></li><br>
			</ul>
			<ul class="line">
			</ul>
			<ul class="list2">
				<br><br>
				<li class="board2"><a href=".\..\free_board.jsp?board_category=2">여행지 추천</a></li>
				<br><br>
			</ul>
			<ul class="list2">
				<br><br>
				<li class="board2"><a href=".\..\free_board.jsp?board_category=3">후기 게시판</a></li>
				<br><br>
			</ul>
			<ul class="list2">
				<br><br>
				<li class="board2"><a href=".\..\free_board.jsp?board_category=4">자유 게시판</a></li>
				<br><br>
			</ul>
			<ul class="list3">
				<br><br>
				<li class="board2"><a href=".\..\random.jsp" class="aa">랜덤 추천 여행</a></li>
				<br><br>
			</ul>
		</div>
		</ul>
		</form>
		<% 
		}else if (session.getAttribute("id") != null){
      	%>
      	<form name="login">
      	<div class="p1">
		<a href=".\..\main.jsp" class="aa">길나들이</a>
		<p class="p2">A moment Walking the Flower road</p>
		</div>
		<div>
		<ul class="list4">
			<li class="login"><%=session.getAttribute("nickname") %>님</li>
			<li class="login"><input type="submit" onClick="logout()" class="button" value="로그아웃"></li>
			<li class="login">│</li>
			<li class="joinus"><a href=".\..\mypagemain.jsp" class="aa">My Page</a></li>
			<li class="joinus">│</li>
			
			<div class="board">
			<ul class="list2">
				<br><br>
				<li class="board2"><a href=".\..\free_board.jsp?board_category=1">이달의 HOT<p class="board2">PlACE</p></a></li><br>
			</ul>
			<ul class="line">
			</ul>
			<ul class="list2">
				<br><br>
				<li class="board2"><a href=".\..\free_board.jsp?board_category=2">여행지 추천</a></li>
				<br><br>
			</ul>
			<ul class="list2">
				<br><br>
				<li class="board2"><a href=".\..\free_board.jsp?board_category=3">후기 게시판</a></li>
				<br><br>
			</ul>
			<ul class="list2">
				<br><br>
				<li class="board2"><a href=".\..\free_board.jsp?board_category=4">자유 게시판</a></li>
				<br><br>
			</ul>
			<ul class="list3">
				<br><br>
				<li class="board2"><a href=".\..\random.jsp" class="aa">랜덤 추천 여행</a></li>
				<br><br>
			</ul>
		</div>
		</ul>
		</form>
			<%
      			}
			%>
		<div class="full">
		<table class="tg" style="undefined; table-layout: fixed; width: 319px">
		<colgroup>
		<col style="width: 150px">
		<col style="width: 150px">
		<col style="width: 150px">
		<col style="width: 150px">
		<col style="width: 150px">
		<col style="width: 150px">
		<col style="width: 150px">
		<col style="width: 150px">
		</colgroup>
		<thead>
		  <tr>
		    <th class="top" ><a href=".\..\gyeongbuk\pohanglist.jsp" class="aaa">포항시</a></th>
		    <th class="top2"><a href=".\..\gyeongbuk\kyungjulist.jsp" class="aaa">경주시</a></th>
		  </tr>
		</thead>
		<tbody>
		  <tr>
		    <td class="bottom" ><a href=".\..\gyeongbuk\gumilist.jsp" class="aaa">구미시</a></td>
		    <td class="bottom2"style="font-weight:bold"><a href=".\..\gyeongbuk\chungdolist.jsp" class="aaa">청도군</a></td>
		  </tr>
		</tbody>
		<div>
		<table class="admin2">
			<tr>
				<td align="left" class="board2">청도 와인터널</td>
			</tr>
		</table>
		<table class="admin">
			<tr>
				<td align="left">Admin &nbsp&nbsp │ 2020.06.16</td>
			</tr>
		</table>
		</table>
		<div id="map_ma">
		</div>
		<div class="slideshow">
		     <img src=".\..\img\청도와인터널.jpg" width="500" height="250"/>	     
		</div>
		<div class="board2"><br>
			터널 속 와인의 모든 것<br><br>

			청도의 이미 유명한 관광지인 와인터널은 가족은 물론 사랑하는 연인의 데이트 코스로 사랑받고 있는 장소입니다. <br>
			열차의 터널을 이용하여 와인을 맛보고 즐길 수 있는 경험과 볼거리가 주어집니다.<br>
			와인터널은 가족이나 사랑하는 연인들 데이트 코스로 사랑받고 있는 장소입니다. 1905년에 개통된 옛 경부선 열차 터널을 정비하여 <br>
			2006년 3월에 개장하면서 와인터널로 명명하여 현재 와인 숙성고로 활용하고 있습니다.<br><br>





			
			위치: 경상북도 청도군 화양읍 송금리 252-2<br>
		</div>
		</div>
		</div>
</body>
</html>