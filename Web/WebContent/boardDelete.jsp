<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*"%>

<%
	request.setCharacterEncoding("utf-8");
	String jdbcUrl = "jdbc:mysql://localhost:3306/storage";
	String dbId="jspid";
	String dbPass="jsppass";
	String board_num=request.getParameter("board_num");
	String board_category=request.getParameter("board_category");
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	try{
		
		conn = DriverManager.getConnection(jdbcUrl,dbId,dbPass);
		String sql ="delete from member_board where board_num=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,board_num);
		pstmt.executeUpdate();
		response.sendRedirect("free_board.jsp?board_category="+board_category);
	}catch(Exception e){
		out.println("Exception : "+e.getMessage());
	}finally{
		System.out.println("finally block is called");
		try{
			if(pstmt!=null){
				pstmt.close();
			}
		}catch(SQLException e){
			out.println("SQLException : "+e.getMessage());
		}
		try{
			if(conn!=null){
				conn.close();
			}
		}catch(SQLException e){
			out.println("SQLException : "+e.getMessage());
		}
	}
%>

