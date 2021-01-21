<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*"%>
<% request.setCharacterEncoding("UTF-8");%>
<%
	String jdbcUrl="jdbc:mysql://localhost:3306/storage";
	String dbld="jspid";
	String dbPass="jsppass";
	String board_category = request.getParameter("board_category");
	String board_nick = (String)session.getAttribute("nickname");
	String board_subject = request.getParameter("board_subject");
	String board_content = request.getParameter("board_content");
	String board_file = request.getParameter("board_file");
	String board_num= request.getParameter("board_num");

	
	Connection conn = null;
	PreparedStatement pstmt = null;
	String str = "";

try {
	
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(jdbcUrl, dbld, dbPass);
	
	String sql = "update member_board set board_category=?, board_subject=?, board_content=?, board_file=? where board_num=?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, board_category);
	pstmt.setString(2, board_subject);
	pstmt.setString(3, board_content);
	pstmt.setString(4, board_file);
	pstmt.setString(5, board_num);

	pstmt.executeUpdate();
	
	out.println(sql);
	
}catch(Exception e){
	out.print("Error : "+e.getMessage());
	str = "게시글을 다시 작성해주세요.";
}finally{
	if(pstmt != null)
		try{
			pstmt.close();
		}catch(SQLException sqle){
			
		}
	if(conn != null)
		try{
			conn.close();
		}catch(SQLException sqle){
			
		}
}
%>
<html>
	<head>
	</head>
		<body>
			<script>
				alert("게시물이 작성되었습니다.");
				location.href="free_board.jsp?board_category="<%=board_category%>;
			</script>
		</body>	
</html>
