<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String board_num=request.getParameter("board_num");
	String board_category=request.getParameter("board_category");
	String str="";
	str=str+"<script> var DEL;\n";
	str=str+ "DEL = confirm('게시물을 삭제하시겠습니까?');\n";
	str=str+"if(DEL){alert('삭제되었습니다.');\nlocation.href='boardDelete.jsp?board_num=";
	
	str=str+board_num;
	str=str+"&board_category=";
	str=str+board_category;
	str=str+"';}else{history.back();}</script>";
	out.println(str);
%>
