<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="http://fonts.googleapis.com/earlyaccess/hanna.css" rel="stylesheet">
<script type="text/javascript">
	function logout(){
	     var frm=document.login;
	     frm.method="post";
	     frm.action="./logoutCtl.jsp";
	     frm.submit();  
	}
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
			width: 60%;
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
		<a href="main.jsp" class="aa">길나들이</a>
		<p class="p2">A moment Walking the Flower road</p>
		</div>
		<div>
	<div>
		<ul class="list">
			<li class="login"><a href="login.jsp" class="aa">Login</a></li>
			<li class="login">│</li>
			<li class="joinus"><a href="SignUp.jsp" class="aa">Join us</a></li>
			<li class="joinus">│</li>
			
			<div class="board">
			<ul class="list2">
				<br><br>
				<li class="board2"><a href="free_board.jsp?board_category=1">이달의 HOT<p class="board2">PlACE</p></a></li><br>
			</ul>
			<ul class="line">
			</ul>
			<ul class="list2">
				<br><br>
				<li class="board2"><a href="free_board.jsp?board_category=2">여행지 추천</a></li>
				<br><br>
			</ul>
			<ul class="list2">
				<br><br>
				<li class="board2"><a href="free_board.jsp?board_category=3">후기 게시판</a></li>
				<br><br>
			</ul>
			<ul class="list2">
				<br><br>
				<li class="board2"><a href="free_board.jsp?board_category=4">자유 게시판</a></li>
				<br><br>
			</ul>
			<ul class="list3">
				<br><br>
				<li class="board2"><a href="random.jsp" class="aa">랜덤 추천 여행</a></li>
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
		<a href="main.jsp" class="aa">길나들이</a>
		<p class="p2">A moment Walking the Flower road</p>
		</div>
		<div>
		<ul class="list4">
			<li class="login"><%=session.getAttribute("nickname") %>님</li>
			<li class="login"><input type="submit" onClick="logout()" class="button" value="로그아웃"></li>
			<li class="login">│</li>
			<li class="joinus"><a href="adminmain.jsp" class="aa">Admin Page</a></li>
			<li class="joinus">│</li>
			
			<div class="board">
			<ul class="list2">
				<br><br>
				<li class="board2"><a href="free_board.jsp?board_category=1">이달의 HOT<p class="board2">PlACE</p></a></li><br>
			</ul>
			<ul class="line">
			</ul>
			<ul class="list2">
				<br><br>
				<li class="board2"><a href="free_board.jsp?board_category=2">여행지 추천</a></li>
				<br><br>
			</ul>
			<ul class="list2">
				<br><br>
				<li class="board2"><a href="free_board.jsp?board_category=3">후기 게시판</a></li>
				<br><br>
			</ul>
			<ul class="list2">
				<br><br>
				<li class="board2"><a href="free_board.jsp?board_category=4">자유 게시판</a></li>
				<br><br>
			</ul>
			<ul class="list3">
				<br><br>
				<li class="board2"><a href="random.jsp" class="aa">랜덤 추천 여행</a></li>
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
		<a href="main.jsp" class="aa">길나들이</a>
		<p class="p2">A moment Walking the Flower road</p>
		</div>
		<div>
		<ul class="list4">
			<li class="login"><%=session.getAttribute("nickname") %>님</li>
			<li class="login"><input type="submit" onClick="logout()" class="button" value="로그아웃"></li>
			<li class="login">│</li>
			<li class="joinus"><a href="mypagemain.jsp" class="aa">My Page</a></li>
			<li class="joinus">│</li>
			
			<div class="board">
			<ul class="list2">
				<br><br>
				<li class="board2"><a href="free_board.jsp?board_category=1">이달의 HOT<p class="board2">PlACE</p></a></li><br>
			</ul>
			<ul class="line">
			</ul>
			<ul class="list2">
				<br><br>
				<li class="board2"><a href="free_board.jsp?board_category=2">여행지 추천</a></li>
				<br><br>
			</ul>
			<ul class="list2">
				<br><br>
				<li class="board2"><a href="free_board.jsp?board_category=3">후기 게시판</a></li>
				<br><br>
			</ul>
			<ul class="list2">
				<br><br>
				<li class="board2"><a href="free_board.jsp?board_category=4">자유 게시판</a></li>
				<br><br>
			</ul>
			<ul class="list3">
				<br><br>
				<li class="board2"><a href="random.jsp" class="aa">랜덤 추천 여행</a></li>
				<br><br>
			</ul>
		</div>
		</ul>
		</form>
      	
			<%
      			}
			%>
	</div>
		<div class="full">
		<table class="tg" style="undefined; table-layout: fixed; width: 319px">
		<colgroup>
		<col style="width: 150px">
		<col style="width: 150px">
		</colgroup>
		<thead>
		  <tr>
		    <th class="top"><a href=".\sejong\sejonglist.jsp" class="aaa">세종</a></th>
		    <th class="top2">추가예정</th>
		  </tr>
		</thead>
		<tbody>
		  <tr>
		    <td class="bottom">추가예정</td>
		    <td class="bottom2">추가예정</td>
		  </tr>
		</tbody>
		</table>
		</div>
</body>
</html>