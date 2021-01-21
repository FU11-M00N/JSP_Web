<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String str="";
	
	str=str+"<script> var DEL;\n";
	str=str+ "DEL = confirm('탈퇴하시겠습니까 ?');\n";
	str=str+"if(DEL){ location.href='mypagedelete.jsp?id=";
	str=str+id;
	str=str+"&password=";
	str=str+password;
	str=str+"';}else{history.back();}</script>";
	out.println(str);
%>
