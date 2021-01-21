<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="http://fonts.googleapis.com/earlyaccess/hanna.css" rel="stylesheet">

<script>
	function logout(){
	     var frm=document.login;
	     frm.method="post";
	     frm.action="./logoutCtl.jsp";
	     frm.submit();  
	}
</script>
<style type="text/css">

		.button {
			background-color: pink;
		 	border: none;
		  	color: white;
			padding: 6px 10px;
			text-align: center;
			text-decoration: none;
			display: inline-block;
			font-size: 15px;
			font-family: Hanna, sans-serif;
		}
		.p1 {
			color: pink;
			font-size: 50px;
			font-family: Hanna, sans-serif;
		}
		.p2 {
			color: pink;
			font-size: 15px;
		}
		.land {
			fill: white;
			fill-opacity: 1;
			stroke:pink;
			stroke-opacity: 1;
			stroke-width: 2;
		}
		.land:hover {
			fill: pink;
		}
		.TEXT {
			fill: black;
			font-size: 10;
			font-family: Hanna, sans-serif;
			text-anchor: middle;
			alignment-baseline: middle;
		}
		.list {
			list-style-type: none;
			text-align: right;
			padding: 5px 0;
			padding-bottom: 8px;
			border-bottom: 2px solid pink;
		}
		.list2 {
			list-style-type: none;
			text-align: center;
			padding: 5px 0;
			border-bottom: 2px solid pink;
		}
		.list3 {
			list-style-type: none;
			text-align: center;
			padding: 5px 0;
		}
		.list4 {
			list-style-type: none;
			text-align: right;
			padding: 5px 0;
			padding-bottom: 3px;
			border-bottom: 2px solid pink;
		}
		table.type09 {
			color:gray;
			margin-right:2%;
			font-family: Hanna, sans-serif;
		    border-collapse: collapse;
		    line-height: 1.5;
		
		}
		table {
		    padding: 10px;
		    font-weight: bold;
		    vertical-align: top;
		    color: hotpink;
		    border: 3px solid pink;
		}

		.login, .joinus {
			display : inline;
			text-align: right;
			letter-spacing : 3px;
			font-family: Hanna, sans-serif;
			text-transform : uppercase;
			color: pink;
		}
		.aa {
		color: pink;
		text-decoration: none;
		}
		.board2 {
			font-family: Hanna, sans-serif;
		}
		.full {
			width: 60%;
			padding: 10px;
			height: 100%;
			float: left;
		}
		.board {
			color: pink;
			display : inline;
			letter-spacing : 3px;
			text-transform : uppercase;
			border: 2px solid pink;
			padding: 10px;
			margin-top: 30px;
			width: 15%;
			float: left;
			text-align: center;
		}
		.board2 a:visited{
			
			color: inherit;
			text-decoration: none;
			
		}
		.form__group {
  position: relative;
  padding: 15px 0 0;
  margin-top: 10px;
  width: 50%;
}

.form__field {
  font-family: inherit;
  width: 100%;
  border: 0;
  border-bottom: 2px solid #9b9b9b;
  outline: 0;
  font-size: 1.3rem;
  color: #fff;
  padding: 7px 0;
  background: transparent;
  transition: border-color 0.2s;
}
.form__field::placeholder {
  color: transparent;
}
.form__field:placeholder-shown ~ .form__label {
  font-size: 1.3rem;
  cursor: text;
  top: 20px;
}

.form__label {
  position: absolute;
  top: 0;
  display: block;
  transition: 0.2s;
  font-size: 1rem;
  color: #9b9b9b;
}

.form__field:focus {
  padding-bottom: 6px;
  font-weight: 700;
  border-width: 3px;
  border-image: linear-gradient(to right, #11998e, #38ef7d);
  border-image-slice: 1;
}
.form__field:focus ~ .form__label {
  position: absolute;
  top: 0;
  display: block;
  transition: 0.2s;
  font-size: 1rem;
  color: #11998e;
  font-weight: 700;
}

/* reset input */
.form__field:required, .form__field:invalid {
  box-shadow: none;
}
	.board2 a{
		color:pink;
		text-decoration: none;
	}
table.type09 {
			margin-left:35%;
			color:gray;
			font-family: Hanna, sans-serif;
		    border-collapse: collapse;
		    line-height: 1.5;
		
		}
		table.type09 thead th {
		    padding: 10px;
		    font-weight: bold;
		    vertical-align: top;
		    color: hotpink;
		    border-bottom: 3px solid pink;
		}

		table.type09 tbody th {
			width:5%;
		    padding: 10px;
		    font-weight: bold;
		    vertical-align: top;
		    border-bottom: 1px solid #ccc;
		    background: #FFE4E1;
		}
		table.type09 td {
		    width: 10%;
		    padding: 10px;
		    vertical-align: top;
		    border-bottom: 1px solid #ccc;
		}
		textarea{
			width:100%;
			height: 70%;
		}
		.box select {
		border:3px solid pink;
	  color: black;
	  padding: 12px;
	  width: 250px;
	  font-size: 20px;
	  box-shadow: 0 5px 25px rgba(0, 0, 0, 0.2);
	  -webkit-appearance: button;
	  appearance: button;
	  outline: none;
	}
	
	.box::before {
	  content: "\f13a";
	  position: absolute;
	  top: 0;
	  right: 0;
	  width: 20%;
	  height: 100%;
	  text-align: center;
	  font-size: 28px;
	  line-height: 45px;
	  color: rgba(255, 255, 255, 0.5);
	  background-color: rgba(255, 255, 255, 0.1);
	  pointer-events: none;
	}
	
	.box:hover::before {
	  color: rgba(255, 255, 255, 0.6);
	  background-color: rgba(255, 255, 255, 0.2);
	}
	
	.box select option {
	  padding: 10px;
	}
</style>
    
</head>
<body>
	<% 
	if (session.getAttribute("id") == null) {
	%>	
	<script>alert('로그인이 필요한 서비스 입니다.');history.back();</script>
	<% }%>
	<form method="post" action="boardWriteProc.jsp" >
	<div class="p1">
	<a href="main.jsp" class="aa">길나들이</a>
	<p class="p2">A moment Walking the Flower road</p>
	</div>
	<div>
		<ul class="list4">
			<li class="login"><%=session.getAttribute("nickname") %>님 </li>
			<li class="login"><input type="submit" onClick="logout()" class="button" value="로그아웃"></li>
			<li class="login">│</li>
			<li class="joinus"><a href="SignUp.jsp" class="aa">My Page</a></li>
			<li class="joinus">│</li>
			
			<div class="board">
			<ul class="list2">
				<br><br>
				<li class="board2"><a href="free_board.jsp?board_category=1">이달의 HOT<p class="board2">PlACE</p></a></li><br>
			</ul>
			<ul class="line">
			</ul>
			<ul class="list2">
				<br><br>
				<li class="board2"><a href="free_board.jsp?board_category=2">여행지 추천</a></li>
				<br><br>
			</ul>
			<ul class="list2">
				<br><br>
				<li class="board2"><a href="free_board.jsp?board_category=3">후기 게시판</a></li>
				<br><br>
			</ul>
			<ul class="list2">
				<br><br>
				<li class="board2"><a href="free_board.jsp?board_category=4">자유 게시판</a></li>
				<br><br>
			</ul>
			<ul class="list3">
				<br><br>
				<li class="board2"><a href="random.jsp" class="aa">랜덤 추천 여행</a></li>
				<br><br>
			</ul>
		</div>
		</ul>
		<table width="700" border="3"  align="center" class="type09">
		<tr>
		 <td id="title">작성자</td>
            <td><%=session.getAttribute("nickname") %></td>
		</tr>
        <tr>
        	<td id="title">게시판 </td>
            <td>
            <div class="box">
            	<select name="board_category" >
            		<option value="1">이달의 HOT PLACE
            		</option>
            		<option value="2">여행지 추천
            		</option>
            		<option value="3">후기 게시판
            		</option>
            		<option value="4">자유게시판
            		</option>
            	</select>
            	</div>
            </td>
           
        </tr>
            <tr>
            <td id="title">
                제 목
            </td>
            <td>
                <input name="board_subject" type="text" size="70" maxlength="100" value=""/>
            </td>        
        </tr>
        <tr>
            <td id="title">
                내 용
            </td>
            <td>	
                <textarea name="board_content"></textarea>                      
            </td>        
        </tr>
        <tr>
            <td id="title">
                파일첨부
            </td>
            <td>
                <input type="file" name="board_file" />
            </td>    
        </tr>
 
        <tr>
            <td colspan="5"><center>
                <input type="reset" value="작성취소" onclick="history.back()">
                <input type="submit" value="등록" >
                <input type="button" value="목록" onclick="history.back()">   </center>         
            </td>
        </tr>
    </table>    
		
		</form>

    
</body>
</html>
