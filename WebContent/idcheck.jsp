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
	    self.close();   //�ڱ��ڽ�â�� �ݽ��ϴ�.
	}
</script>
</head>
<body>
<%
	if(rst == 1){
%>
<pre style="font-family: hanna;">

        �����ϴ� ���̵� �Դϴ�
</pre>
<input type="button" value="Ȯ��" onClick="check()" style="margin-left: 80px;">
<!-- ���̵� �̹� ������ �� -->
<%}	else{ %>
<pre style="font-family: hanna;">

       ��� ������ ���̵� �Դϴ�
</pre>
<input type="button" value="Ȯ��" onClick="check()" style="margin-left: 80px;">
<!-- ���̵� �������� ���� �� -->
<%} %>
</body>
</html>