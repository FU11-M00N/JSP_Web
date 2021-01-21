\<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*"%>
<% request.setCharacterEncoding("UTF-8");%>
<%
	String board_category = request.getParameter("board_category");
	String board_nick = (String)session.getAttribute("nickname");
	String board_subject = request.getParameter("board_subject");
	String board_content = request.getParameter("board_content");
	String board_file = request.getParameter("board_file");
	Timestamp Board_date = new Timestamp(System.currentTimeMillis());
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	String str = "";

try {
	String jdbcUrl="jdbc:mysql://localhost:3306/storage";
	String dbld="jspid";
	String dbPass="jsppass";
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(jdbcUrl, dbld, dbPass);
	
	String sql = "insert into member_board(board_category,board_nick,board_subject,board_content,board_file,Board_date,Board_count) values(?, ?, ?, ?, ?, ?,?)";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, board_category);
	pstmt.setString(2, board_nick);
	pstmt.setString(3, board_subject);
	pstmt.setString(4, board_content);
	pstmt.setString(5, board_file);
	pstmt.setTimestamp(6, Board_date);
	pstmt.setInt(7,0);
	
	pstmt.executeUpdate();

	str += "<script type='text/javascript'>";
	str += "alert('게시글이 작성되었습니다.');";
	str += "history.go(-2);";
	str += "</script>";
	
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
			<%=str %>
		</body>	
</html>