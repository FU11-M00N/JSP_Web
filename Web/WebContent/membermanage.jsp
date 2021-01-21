<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*"%>
<% request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
</style>
</head>
<body>
		<% 
		  	if (session.getAttribute("flag").equals("1")){
      	%>
      	<form name="login">
      	<div class="p1">
		<a href="main.jsp" class="aa">길나들이</a>
		<p class="p2">A moment Walking the Flower road</p>
		</div>
		<ul class="list4">
			<li class="login"><%=session.getAttribute("nickname") %>님</li>
			<li class="login"><input type="submit" onClick="logout()" class="button" value="로그아웃"></li>
			<li class="login">│</li>
			<li class="joinus"><a href="adminmain.jsp" class="aa">Admin Page</a></li>
			<li class="joinus">│</li>
			
			<div class="board">
			<ul class="list3">
				<br><br>
				<li class="board2"><a href="membermanage.jsp" class="aa">회원정보 관리</a></li>
				<br><br>
			</ul>
		</div>
		</ul>
		</form>	
			<%
      			}
			%>
			<%
				String jdbcUrl="jdbc:mysql://localhost:3306/storage";
				String dbld="jspid";
				String dbPass="jsppass";
				Connection con = null;
				PreparedStatement p = null;
				ResultSet rs = null;
			
			try {
				Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection(jdbcUrl, dbld, dbPass);
				String sql = "select * from member";
				p = con.prepareStatement(sql);
				rs = p.executeQuery();
			%>
		<div class="full">
			<table align="center">
				<tr>
					<td width="100">아이디</td>
					<td width="100">비밀번호</td>
					<td width="100">이름</td>
					<td width="100">닉네임</td>
					<td width="200">이메일</td>
					<td width="200">지역</td>
					<td width="200">만든 날짜</td>
				</tr>
			<%
			while(rs.next()){
				String id = rs.getString("id");
				String password = rs.getString("password");
				String name = rs.getString("name");
				String nickname = rs.getString("nickname");
				String email = rs.getString("email");
				String area = rs.getString("area");
				Timestamp createtime = rs.getTimestamp("createtime");
			%>
				<tr>
					<td><%=id %></td>
					<td><%=password %></td>
					<td><%=name %></td>
					<td><%=nickname %></td>
					<td><%=email %></td>
					<td><%=area %></td>
					<td><%=createtime %></td>
					<td><input type="button" class="button" value="수정" onClick="location.href='memberupdate.jsp?id=<%=rs.getString("id") %>'">
						<input type="button"class="button"  value="삭제" onClick="location.href='memberdelete.jsp?id=<%=rs.getString("id") %>&password=<%=rs.getString("password") %>'"></td>
				</tr>
			<%	}	
			}catch(Exception e){
					out.print("Error : "+e.getMessage());
				}finally{
					if(rs != null){
					try{
						rs.close();
					}catch(SQLException s){
						
					}
				}
				if(p != null){
					try{
						p.close();
					}catch(SQLException s){
						
					}
				}
				if(con != null){
					try{
						con.close();
					}catch(SQLException s){
						
					}
				}
			}%>
		</table>
		</div>
</body>
</html>