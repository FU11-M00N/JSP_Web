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
	var myLatlng = new google.maps.LatLng(38.211900,128.601484); // 위치값 위도 경도
	var Y_point			= 38.211900;		// Y 좌표
	var X_point			= 128.601484;		// X 좌표
	var zoomLevel		= 17;				// 지도의 확대 레벨 : 숫자가 클수록 확대정도가 큼
	var markerTitle		= "동명항, 영금정";		// 현재 위치 마커에 마우스를 오버을때 나타나는 정보
	var markerMaxWidth	= 300;				// 마커를 클릭했을때 나타나는 말풍선의 최대 크기
	
	//말풍선 내용
	var contentString	= '<div>' +
	'<h2>동명항, 영금정</h2>'+
	'<p>속초시 동명동 영금정로 43</p>' +
	
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
		</colgroup>
		<thead>
		  <tr>
		    <th class="top"><a href=".\..\gangwondo\chuncheonlist.jsp" class="aaa">춘천</a></th>
		    <th class="top2"><a href=".\..\gangwondo\gangneunglist.jsp" class="aaa">강릉</a></th>
		  </tr>
		</thead>
		<tbody>
		  <tr>
		    <td class="bottom" style="font-weight:bold"><a href=".\..\gangwondo\sokcholist.jsp" class="aaa">속초</a></td>
		    <td class="bottom2"><a href=".\..\gangwondo\jeongseonlist.jsp" class="aaa">정선</a></td>
		  </tr>
		</tbody>
		<div>
		<table class="admin2">
			<tr>
				<td align="left" class="board2">동명항, 영금정</td>
			</tr>
		</table>
		<table class="admin">
			<tr>
				<td align="left">Admin &nbsp&nbsp │ 2020.06.24</td>
			</tr>
		</table>
		</table>
		<div id="map_ma">
		</div>
		<div class="slideshow">
		     <img src=".\..\img\동명항,영금정.jpg" width="500" height="250"/>	     
		</div>
		<div class="board2"><br>
			파도를 조율하는 아름다운 소리 <br>
			죽기 전 꼭 가봐야 할 국내 여행지 100에 꼽히는 속초 영금정은 동명항 끝자락에 위치해있으며 바다와 마주하는 구름다리 위에서 힐링을 즐겨볼 수 있습니다 <br>
			동명항 부근에 영금정과 활어판매장이 위치해있기 때문에 많은 사람들의 발길이 끊이지 않고 있는데요, 속초하면 떠오르는 영금정을 시원하고 푸른 바다와 함께 느껴보시기 바랍니다 <br><br>


			위치: 강원 속초시 동명동 영금정로 43
		</div>
		</div>
		</div>
</body>
</html>