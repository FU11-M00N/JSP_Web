<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*"%>
<% request.setCharacterEncoding("UTF-8");%>
<%
	String Board_like = request.getParameter("Board_like");
	String board_num = request.getParameter("board_num");
	int like = Integer.parseInt(Board_like);
	like--;
	Connection conn = null;
	PreparedStatement pstmt = null;
	String str = "";

try {
	String jdbcUrl="jdbc:mysql://localhost:3306/storage";
	String dbld="jspid";
	String dbPass="jsppass";
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(jdbcUrl, dbld, dbPass);
	
	String sql = "update member_board set Board_like= ? where board_num= ?";
	   pstmt = conn.prepareStatement(sql);
	   pstmt.setInt(1,like);
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