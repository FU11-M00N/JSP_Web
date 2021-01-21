<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="http://fonts.googleapis.com/earlyaccess/hanna.css" rel="stylesheet">
<script>
	function logout(){
	     var frm=document.login;
	     frm.method="post";
	     frm.action="./logoutCtl.jsp";
	     frm.submit();  
	}
</script>
<style type="text/css">
		.next-button{
			margin-top:5%;
		}
		.next-button a {
		  text-decoration: none;
		  display: inline-block;
		  padding: 8px 16px;
		}
		.num-button{
			background-color:#FFE4E1;
			border-radius: 40%;
		}

		
		.previous {
		  background-color: pink;
		  color: white;
		}
		
		.next {
		  background-color: pink;
		  color: white;
		}
		.
		.round {
		  border-radius: 50%;
		}
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
			margin-right:2%;
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
		#board{
			padding-left:20%;
			margin:3%;
		}
		#subject{
			font-size:40px;
			font-family: Hanna, sans-serif;
			color:hotpink;
		}
		.board_etc{
			font-family: Hanna, sans-serif;
			line-height: 60px;
		}
		.board_etc_1{
			margin-right:2%;
		}
		.board_etc_2{
			margin-left:2%;
		}
		.board_etc2{
			float:right;
			font-family: Hanna, sans-serif;
			line-height: 60px;
		}
		.board_etc_3{
			
		}
		.board_etc_4{
			
		}
		.hr{
			
		}
		.text-box{
			margin-top:2%;
			margin-bottom:2%;
			padding:1%;
			float:left;
			border: 1px solid black;
			width:98%;
			height:40vh;
			font-size: 1vw;
		}
		li a{
			text-decoration: none;
		}
		a:visited{
			color:pink;
		}
		.like img{
			width:5%;
			margin-left: 3%;
		}
		.like{
			text-align: center;
		}
		.img_like{
			margin-right: 3%;
		}
		.img_dislike{
			margin-left: 3%;
		}
		table.type09 {
			margin-left:13%;
			color:gray;
			margin-right:2%;
			font-family: Hanna, sans-serif;
		    border-collapse: collapse;
		    text-align: center;
		    line-height: 1.5;
		
		}
		table.type09 thead th {
		    padding: 10px;
		    font-weight: bold;
		    vertical-align: top;
		    color: hotpink;

		}
		
		

		table.type09 tbody th {
			width:5%;
		    padding: 10px;
		    font-weight: bold;
		    vertical-align: top;
		    border-bottom: 1px solid #ccc;
		    background: #FFE4E1;
		}
		table.type09 td {
		    width: 10%;
		    padding: 10px;
		    vertical-align: top;
		    border-bottom: 1px solid #ccc;
		}
		table.type09 th .num{
		    width:3%;
		}
		table.type09 tbody .num{
			width:3%;
		}
		td a{
			text-decoration: none;
			color:hotpink;
		}
		iframe{
			margin-left:22.5%;
			width:100%;
			height:100vh;
			border-style:none;
			
		}
		.board2 a{
			color: pink;
		}
		.and{
			margin-left:20%;
		}
		input[type=button]{
		background-color: hotpink;
		border: none;
	 	color: white;
		padding: 16px 32px;
		text-decoration: none;
		margin-left:4%;
	}
		
		
</style>
</head>
<body>
<% 
   String jdbcUrl = "jdbc:mysql://localhost:3306/storage";
   String dbid = "root";
   String dbPass = "wjdqhqhdks";
   Connection con = null;
   PreparedStatement pstmt = null;
   PreparedStatement pstmt2 = null;
   ResultSet rs = null;
   ResultSet rs2 = null;
   
   
%>

	
<% 
	if (session.getAttribute("id") == null) {

   	try{
   		Class.forName("com.mysql.jdbc.Driver");
	      con = DriverManager.getConnection(jdbcUrl, dbid, dbPass);
	      
	      String board_num=request.getParameter("board_num");
	      
	      String sql = "select * from member_board where board_num="+board_num;
	      pstmt = con.prepareStatement(sql);
	      rs =pstmt.executeQuery();
      
%>
	<form name="login">
	<div class="p1">
	<a href="main.jsp" class="aa">길나들이</a>
	<p class="p2">A moment Walking the Flower road</p>
	</div>
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

</div>
<div id="board">
		

<%
	while(rs.next()){
%>
		<span id="subject"><%=rs.getString("board_subject")%></span><br>
		<span class="board_etc">
			<span class="board_etc_1"><%=rs.getString("board_nick")%></span>
        |  <span class="board_etc_2"> <%=rs.getString("Board_date")%></span>
        </span>
        <span class="board_etc2">
        	<span class="board_etc_3">조회 : <%=rs.getString("Board_count")%></span>
        	<span class="board_etc_4">추천 : <%=rs.getString("Board_like")%></span>
        	</span>
        	<hr class="hr">
        <br>
        <div class="text-box">
        <%=rs.getString("board_content")%></div><br><br>
    	<div class="like">
    		<a href="boardLikeProc.jsp?board_num=<%=rs.getString("board_num")%>&Board_like=<%=rs.getString("Board_like")%>"><img src="like.png" class="img_like"></a><a href="boardDislikeProc.jsp?board_num=<%=rs.getString("board_num")%>&Board_like=<%=rs.getString("Board_like")%>"><img src="dislike.png" class="img_dislike"></a></div>
    	<br><br>
    	<hr class="hr">
    	
    

<%		
	
}
%></div>
<iframe src="comment.jsp?board_num=<%=board_num%>"></iframe>


		</form>
</body>
</html>
<% 
   }
   catch(Exception e){
         
   }
   finally{
      if(rs != null ){
         try{
            rs.close();
         }
         catch(Exception e){
            out.println("SQLException : " + e.getMessage());
         }
      }
      if(pstmt!=null){
          try{
          pstmt.close();
          }
          catch(SQLException e){
             out.println("SQLException : " + e.getMessage());
          }
       }
       if(con!=null){
          try{
             con.close();
          }
          catch(SQLException e){
             out.println("SQLException : " + e.getMessage());
          }
          
       }
   }
   
%>   
		<% 
		}else if (session.getAttribute("flag").equals("1")){
			try{
			      Class.forName("com.mysql.jdbc.Driver");
			      con = DriverManager.getConnection(jdbcUrl, dbid, dbPass);
			      
			      String board_num=request.getParameter("board_num");
			      
			      String sql = "select * from member_board where board_num="+board_num;
			      pstmt = con.prepareStatement(sql);
			      rs =pstmt.executeQuery();
			      
		%>
		
		
	<form name="login">
	<div class="p1">
	
	<a href="main.jsp" class="aa">길나들이</a>
	<p class="p2">A moment Walking the Flower road</p>
	</div>
		<div>
		<ul class="list4">
			<li class="login"><%=session.getAttribute("nickname") %>님 </li>
			<li class="login"><input type="submit" onClick="logout()" class="button" value="로그아웃"></li>
			<li class="login">│</li>
			<li class="joinus"><a href="adminmain.jsp" class="aa">Admin Page</a></li>
			<li class="joinus">│</li>
			
			<div class="board">
			<ul class="list2">
				<br><br>
				<li class="board2"><a href="free_board.jsp?board_category=1">이달의 HOT<p class="board2">PlACE</p></li><br>
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
</div>
<div id="board">
		

<%
	while(rs.next()){
%>
		<span id="subject"><%=rs.getString("board_subject")%></span><br>
		<span class="board_etc">
			<span class="board_etc_1"><%=rs.getString("board_nick")%></span>
        |  <span class="board_etc_2"> <%=rs.getString("Board_date")%></span>
        </span>
        <span class="board_etc2">
        	<span class="board_etc_3">조회 : <%=rs.getString("Board_count")%></span>
        	<span class="board_etc_4">추천 : <%=rs.getString("Board_like")%></span>
        	</span>
        	<hr class="hr">
        <br>
        <div class="text-box">
        <%=rs.getString("board_content")%></div><br><br>
        <%=rs.getString("board_file")%></div><br><br>
    	<div class="like">
    		<a href="boardLikeProc.jsp?board_num=<%=rs.getString("board_num")%>&Board_like=<%=rs.getString("Board_like")%>"><img src="like.png" class="img_like"></a><a href="boardDislikeProc.jsp?board_num=<%=rs.getString("board_num")%>&Board_like=<%=rs.getString("Board_like")%>"><img src="dislike.png" class="img_dislike"></a></div>
    	<br><br>
    	
    
<%
if(session.getAttribute("nickname").equals(rs.getString("board_nick")) || session.getAttribute("flag").equals("1")){
%><div class="and">
	<input type="button" value="수정" onclick="location.href='boardUpdate.jsp?board_num=<%=rs.getString("board_num")%>&board_category=<%=rs.getString("board_category")%>'">
	<input type="button" value="삭제" onclick="location.href='boardDeleteJS.jsp?board_num=<%=rs.getString("board_num")%>&board_category=<%=rs.getString("board_category")%>'">
</div>
<%
}
	}
%></div>
<iframe src="comment.jsp?board_num=<%=board_num%>"></iframe>

</tbody>
</table>

		</form>
</body>
</html>
<% 
   }
   catch(Exception e){
         
   }
   finally{
      if(rs != null ){
         try{
            rs.close();
         }
         catch(Exception e){
            out.println("SQLException : " + e.getMessage());
         }
      }
      if(pstmt!=null){
          try{
          pstmt.close();
          }
          catch(SQLException e){
             out.println("SQLException : " + e.getMessage());
          }
       }
       if(con!=null){
          try{
             con.close();
          }
          catch(SQLException e){
             out.println("SQLException : " + e.getMessage());
          }
          
       }
   }
   
%>   

 

<% 
	}else if(session.getAttribute("id") != null){
	try{
	      Class.forName("com.mysql.jdbc.Driver");
	      con = DriverManager.getConnection(jdbcUrl, dbid, dbPass);
	      
	      String board_num=request.getParameter("board_num");
	      
	      String sql = "select * from member_board where board_num="+board_num;
	      pstmt = con.prepareStatement(sql);
	      rs =pstmt.executeQuery();
	      
%>

	<form name="login">
	<div class="p1">
	
	<a href="main.jsp" class="aa">길나들이</a>
	<p class="p2">A moment Walking the Flower road</p>
	</div>
		<div>
		<ul class="list4">
			<li class="login"><%=session.getAttribute("nickname") %>님 </li>
			<li class="login"><input type="submit" onClick="logout()" class="button" value="로그아웃"></li>
			<li class="login">│</li>
			<li class="joinus"><a href="mypageadmin.jsp" class="aa">My Page</a></li>
			<li class="joinus">│</li>
			
			<div class="board">
			<ul class="list2">
				<br><br>
				<li class="board2"><a href="free_board.jsp?board_category=1">이달의 HOT<p class="board2">PlACE</p></li><br>
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
</div>
<div id="board">
		

<%
	while(rs.next()){
%>
		<span id="subject"><%=rs.getString("board_subject")%></span><br>
		<span class="board_etc">
			<span class="board_etc_1"><%=rs.getString("board_nick")%></span>
        |  <span class="board_etc_2"> <%=rs.getString("Board_date")%></span>
        </span>
        <span class="board_etc2">
        	<span class="board_etc_3">조회 : <%=rs.getString("Board_count")%></span>
        	<span class="board_etc_4">추천 : <%=rs.getString("Board_like")%></span>
        	</span>
        	<hr class="hr">
        <br>
        <div class="text-box">
        <%=rs.getString("board_content")%></div><br><br>
        <%=rs.getString("board_file")%></div><br><br>
    	<div class="like">
    		<a href="boardLikeProc.jsp?board_num=<%=rs.getString("board_num")%>&Board_like=<%=rs.getString("Board_like")%>"><img src="like.png" class="img_like"></a><a href="boardDislikeProc.jsp?board_num=<%=rs.getString("board_num")%>&Board_like=<%=rs.getString("Board_like")%>"><img src="dislike.png" class="img_dislike"></a></div>
    	<br><br>
    	
    
<%
if(session.getAttribute("nickname").equals(rs.getString("board_nick")) || session.getAttribute("flag").equals("1")){
%><div class="and">
	<input type="button" value="수정" onclick="location.href='boardUpdate.jsp?board_num=<%=rs.getString("board_num")%>&board_category=<%=rs.getString("board_category")%>'">
	<input type="button" value="삭제" onclick="location.href='boardDeleteJS.jsp?board_num=<%=rs.getString("board_num")%>&board_category=<%=rs.getString("board_category")%>'">
</div>
<%
}
	}
%></div>
<iframe src="comment.jsp?board_num=<%=board_num%>"></iframe>

</tbody>
</table>

		</form>
</body>
</html>
<% 
   }
   catch(Exception e){
         
   }
   finally{
      if(rs != null ){
         try{
            rs.close();
         }
         catch(Exception e){
            out.println("SQLException : " + e.getMessage());
         }
      }
      if(pstmt!=null){
          try{
          pstmt.close();
          }
          catch(SQLException e){
             out.println("SQLException : " + e.getMessage());
          }
       }
       if(con!=null){
          try{
             con.close();
          }
          catch(SQLException e){
             out.println("SQLException : " + e.getMessage());
          }
          
       }
   }}
   
%>   

		