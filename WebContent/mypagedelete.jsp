<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	String jdbcUrl = "jdbc:mysql://localhost:3306/storage";
	String dbId = "jspid";
	String dbPass = "jsppass";
	String str="";
	
	Connection con = null;
	PreparedStatement p = null;

	try{
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
		String sql = "delete from member where id = ? and password = ?";
		p = con.prepareStatement(sql);
		p.setString(1, id);
		p.setString(2, password);
		p.executeUpdate();
		session.invalidate(); //세션자체를 없애줌
		str += "<script>";
		str += "alert('탈퇴 되었습니다.');";
		str += "location.href='./main.jsp';";
		str += "</script>";
		out.println(str);
		
	}catch(Exception e){
		out.println("Exception : " + e.getMessage());
	}finally{
		if(con != null){
			try{
				con.close();
			}catch(SQLException s){
				out.println("SQLException : " + s.getMessage());
			}
		}
		if(p != null){
			try{
				p.close();
			}catch(SQLException s){
				out.println("SQLException : " + s.getMessage());
			}
		}
		System.out.println("Finally block is called");
	}
		
%>