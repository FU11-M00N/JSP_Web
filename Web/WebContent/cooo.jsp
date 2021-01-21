<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	String board_num = request.getParameter("board_num");
	int num=0;
 	int ref=1;
 	int re_step = 0;
 	int re_level=0;
 	
 	if(request.getParameter("num")!=null){ //댓글이라면
 		num=Integer.parseInt(request.getParameter("num"));
 		ref = Integer.parseInt(request.getParameter("ref"));
 		re_step = Integer.parseInt(request.getParameter("re_step"));
 		re_level = Integer.parseInt(request.getParameter("re_level"));
 	}
%>
<form action="commentProc.jsp" action="get">
		<input type="hidden" name="board_nick" value="<%=session.getAttribute("nickname")%>">
		<input type="hidden" name="board_num" value="<%=board_num%>">
		<input type="hidden" name="num" value="<%=num%>">
		<input type="hidden" name="ref" value="<%=ref%>">
		<input type="hidden" name="re_step" value="<%=re_step%>">
		<input type="hidden" name="re_level" value="<%=re_level%>">
		<textarea name="board_content" class="text1"></textarea>
		<input type="submit" value="등록">
		</form>