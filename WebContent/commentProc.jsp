<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%@page import ="java.sql.*" %>
<%@page import="ch13.board.*" %>

<%
   request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="article" class="ch13.board.BoardDataBean">
   <jsp:setProperty name="article" property="*" />
</jsp:useBean>

<%
   // ch13.board.BoardDataBean article = new ch13.board.BoardDataBean();
   article.setReg_date(new Timestamp(System.currentTimeMillis()));
   
   
   BoardDBBean dbPro = BoardDBBean.getInstance();
   
   dbPro.insertArticle(article);

   String str="";
   str=str+"<script>location.href='comment.jsp?board_num="+article.getBoard_num()+"'</script>";
	out.println(str);
   
   
   
%>

<%-- <%

	String board_num = request.getParameter("board_num");
	String board_content = request.getParameter("board_content");
	String board_nick = (String)session.getAttribute("nickname");
	Timestamp reg_date = new Timestamp(System.currentTimeMillis());
	String jdbcUrl = "jdbc:mysql://localhost:3306/storage";
	String dbid = "jspid";
	String dbPass = "jsppass";
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String str="";
	
	try{
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection(jdbcUrl, dbid, dbPass);
		String sql ="insert into board_comment(board_nick,board_content,reg_date,board_num,ref,re_step,re_level) values(?,?,?,?,?,?,?)";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1,board_nick);
		pstmt.setString(2,board_content);
		pstmt.setTimestamp(3, reg_date);
		pstmt.setString(4,board_num);
		pstmt.setInt(5,1);
		pstmt.setInt(6,0);
		pstmt.setInt(7,0);
		pstmt.executeUpdate();
		str=str+"<script>location.href='comment.jsp?board_num="+board_num+"'</script>";
		out.println(str);
	}catch(Exception e){
		out.print("Error : "+e.getMessage());
	}finally{
		if(pstmt != null)
			try{
				pstmt.close();
			}catch(SQLException sqle){
				
			}
		if(con != null)
			try{
				con.close();
			}catch(SQLException sqle){
				
			}
	}
	
	%> --%>
	
	
