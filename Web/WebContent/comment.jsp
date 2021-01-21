<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<style>
body{
	margin-right:30%;
}
table.type09 {

			color:gray;
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
			
		    width: 3%;
		    padding: 10px;
		    vertical-align: top;
		    border-bottom: 1px solid #ccc;
		}

</style>
<%
	String board_num = request.getParameter("board_num");
	int num=0;
 	int ref=1;
 	int re_step = 0;
 	int re_level=0;
 	
 	if(request.getParameter("num")!=null){ //댓글이라면
 		num=Integer.parseInt(request.getParameter("num"));
 		ref = Integer.parseInt(request.getParameter("ref"));
 		re_step = Integer.parseInt(request.getParameter("re_step"));
 		re_level = Integer.parseInt(request.getParameter("re_level"));
 	}
%>
<% 
	if (session.getAttribute("id") == null) {
	String str="<script type='text/javascript' src='https://code.jquery.com/jquery-3.2.0.min.js' ></script>";
	str=str+"<script>$(function(){ var text1 = $('.text1');";
	str=str+"text1.focus(function(){";
	str=str+"alert('로그인이 필요한 서비스입니다.'); $('.text1').blur();";
	str=str+"  });});</script>";
	out.println(str);
	}
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<style>
	textarea{
		width:85%;
		float:left;
	}
	input[type=submit]{
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

	<form action="commentProc.jsp" action="post">
		<input type="hidden" name="board_nick" value="<%=session.getAttribute("nickname")%>">
		<input type="hidden" name="board_num" value="<%=board_num%>">
		<input type="hidden" name="num" value="<%=num%>">
		<input type="hidden" name="ref" value="<%=ref%>">
		<input type="hidden" name="re_step" value="<%=re_step%>">
		<input type="hidden" name="re_level" value="<%=re_level%>">
		<textarea name="board_content" class="text1"></textarea>
		<input type="submit" value="등록">
		</form>
		<hr>
		<% 
   String jdbcUrl = "jdbc:mysql://localhost:3306/storage";
   String dbid = "root";
   String dbPass = "wjdqhqhdks";
   Connection con = null;
   PreparedStatement pstmt = null;
   ResultSet rs = null;
   String board_category=request.getParameter("board_category");
   Class.forName("com.mysql.jdbc.Driver");
   con = DriverManager.getConnection(jdbcUrl, dbid, dbPass);
   String sql = "select * from board_comment where board_num="+board_num;
   pstmt = con.prepareStatement(sql);
   rs =pstmt.executeQuery();
%><div>
	<table class="type09">
    <thead>
   <tr>
        <th scope="cols">글쓴이</th>
        <th scope="cols">댓글</th>
        <th scope="cols">날짜</th>

    </tr>
    </thead>
    <tbody>
<%
	while(rs.next()){
%>
    <tr>
        <td><%=rs.getString("board_nick")%></td>
        <td><%=rs.getString("board_content")%></td>
        <td class="num"><%=rs.getString("reg_date")%></td>
        <%-- <td><a href="cooo.jsp?board_num="<%=board_num%>>답글쓰기</a></td> --%>

    </tr>
<%
	}
%>
</tbody>
</table></div>
	


</body>
</html>