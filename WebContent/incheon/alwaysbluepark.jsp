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
	var myLatlng = new google.maps.LatLng(37.385849,126.717044); // 위치값 위도 경도
	var Y_point			= 37.385849;		// Y 좌표
	var X_point			= 126.717044;		// X 좌표
	var zoomLevel		= 16;				// 지도의 확대 레벨 : 숫자가 클수록 확대정도가 큼
	var markerTitle		= "늘솔길공원";		// 현재 위치 마커에 마우스를 오버을때 나타나는 정보
	var markerMaxWidth	= 300;				// 마커를 클릭했을때 나타나는 말풍선의 최대 크기
	
	//말풍선 내용
	var contentString	= '<div>' +
	'<h2>늘솔길공원</h2>'+
	'<p>인천광역시 논현고잔동</p>' +
	
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
		    <th class="top" ><a href=".\..\incheon\incheonjunggulist.jsp" class="aaa">중구</a></th>
		    <th class="top2"style="font-weight:bold"><a href=".\..\incheon\incheondonggulist.jsp" class="aaa">동구</a></th>
		  </tr>
		</thead>
		<tbody>
		  <tr>
		    <td class="bottom" ><a href=".\..\incheon\incheonysgulist.jsp" class="aaa">연수구</a></td>
		    <td class="bottom2"><a href=".\..\incheon\incheonseogulist.jsp" class="aaa">서구</a></td>
		  </tr>
		</tbody>
		<div>
		<table class="admin2">
			<tr>
				<td align="left" class="board2">늘솔길공원</td>
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
		     <img src=".\..\img\늘솔길공원.jpg" width="500" height="250"/>	     
		</div>
		<div class="board2"><br>
			양떼가 이는 특별한 공원<br><br>

			인천 도심속 작은 양떼목장으로 유명한 늘솔길공원은 남녀노소 할 것 없이 즐기기 좋은 체험장으로 <br>
			가족과의 나들이는 물론 연인들의 데이트 장소로 유익한 곳입니다. 넓은 잔디밭과 편백나무 숲, 메타쉐콰이어 숲,<br>
			그리고 호수로 이루어져 쾌적한 환경을 지니고있는데요. 산책로도 잘돼있어서 가을 분위기 물씬 풍기는 늘솔길공원에서<br>
			바스락거리는 낙엽을 밟으며 산책하기에도 좋습니다.<br><br>
			
			위치: 인천광역시 논현고잔동<br>
			
		</div>
		</div>
		</div>
</body>
</html>