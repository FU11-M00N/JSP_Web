<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String name = request.getParameter("name");
	String nickname = request.getParameter("nickname");
	String email = request.getParameter("email");
	String area = request.getParameter("area");
	
	String jdbcUrl = "jdbc:mysql://localhost:3306/storage";
	String dbId = "jspid";
	String dbPass = "jsppass";
	
	Connection con = null;
	PreparedStatement p = null;
	
	try{
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
		String sql = "update member set password = ?, name = ?, nickname = ?, email = ?, area = ? where id = ?"; 
		p = con.prepareStatement(sql);
		p.setString(1, password);
		p.setString(2, name);
		p.setString(3, nickname);
		p.setString(4, email);
		p.setString(5, area);
		p.setString(6, id);
		p.executeUpdate();
		out.println("<script>");
		out.println("alert('회원 정보가 수정되었습니다');");
		out.println("</script>");
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
		response.sendRedirect("membermanage.jsp");
	}
%>