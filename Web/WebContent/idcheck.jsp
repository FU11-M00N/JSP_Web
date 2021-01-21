<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="dao" class="sh.USER.UserDAO"/>
<%
	 int rst = 0;
	 String id = (String)request.getParameter("id");
	 rst = dao.idCheck(id);
%>
<html>
<head>
<link href="http://fonts.googleapis.com/earlyaccess/hanna.css" rel="stylesheet">
<script>
	function check(){
	    self.close();   //자기자신창을 닫습니다.
	}
</script>
</head>
<body>
<%
	if(rst == 1){
%>
<pre style="font-family: hanna;">

        존재하는 아이디 입니다
</pre>
<input type="button" value="확인" onClick="check()" style="margin-left: 80px;">
<!-- 아이디가 이미 존재할 때 -->
<%}	else{ %>
<pre style="font-family: hanna;">

       사용 가능한 아이디 입니다
</pre>
<input type="button" value="확인" onClick="check()" style="margin-left: 80px;">
<!-- 아이디가 존재하지 않을 때 -->
<%} %>
</body>
</html>