<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*"%>
<% request.setCharacterEncoding("UTF-8");%>
<%
	String Board_count = request.getParameter("Board_count");
	String board_num = request.getParameter("board_num");
	int hit = Integer.parseInt(Board_count);
	hit++;
	Connection conn = null;
	PreparedStatement pstmt = null;
	String str = "";

try {
	String jdbcUrl="jdbc:mysql://localhost:3306/storage";
	String dbld="root";
	String dbPass="wjdqhqhdks";
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(jdbcUrl, dbld, dbPass);
	
	String sql = "update member_board set Board_count= ? where board_num= ?";
	   pstmt = conn.prepareStatement(sql);
	   pstmt.setInt(1,hit);
	   pstmt.setString(2,board_num);
	   pstmt.executeUpdate();
	   response.sendRedirect("free_board1.jsp?board_num="+board_num);
}catch(Exception e){
	out.print("Error : "+e.getMessage());
	
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
</html>