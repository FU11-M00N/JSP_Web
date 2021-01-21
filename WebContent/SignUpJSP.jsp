<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*"%>
<% request.setCharacterEncoding("UTF-8");%>
<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String name = request.getParameter("name");
	String nickname = request.getParameter("nickname");
	String email = request.getParameter("email");
	String area = request.getParameter("area");
	String flag = request.getParameter("flag");
	Timestamp register = new Timestamp(System.currentTimeMillis());
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	String str = "";

try {
	String jdbcUrl="jdbc:mysql://localhost:3306/storage";
	String dbld="jspid";
	String dbPass="jsppass";
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(jdbcUrl, dbld, dbPass);
	
	String sql = "insert into member values(?, ?, ?, ?, ?, ?, ?, ?)";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	pstmt.setString(2, password);
	pstmt.setString(3, name);
	pstmt.setString(4, nickname);
	pstmt.setString(5, email);
	pstmt.setString(6, area);
	pstmt.setString(7, flag);
	pstmt.setTimestamp(8, register);
	pstmt.executeUpdate();
	
	str += "<script type='text/javascript'>";
	str += "alert('정상적으로 회원가입이 되었습니다');";	
	str += "location.href='main.jsp';";
	str += "</script>";
}catch(Exception e){
	out.print("Error : "+e.getMessage());
	str += "<script type='text/javascript'>";
	str += "alert('다시 회원가입을 해주세요');";	
	str += "</script>";
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