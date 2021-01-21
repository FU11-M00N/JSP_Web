<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="http://fonts.googleapis.com/earlyaccess/hanna.css" rel="stylesheet">
<script>
		function gologin() {
			  var frm = document.IDfind;
			  frm.method = "post";
			  frm.action = "./login.jsp";
			  frm.submit();
			 }
			 function gohome() {
			  var frm = document.IDfind;
			  frm.method = "post";
			  frm.action = "./main.jsp"; //넘어간화면
			  frm.submit(); //등록이 될수 있는 조건이면, 정보를 보내겠다.
			 }
			 
			 function gojoin() {
			  var frm = document.IDfind;
			  frm.method = "post";
			  frm.action = "./SignUp.jsp";
			  frm.submit();
			 }
			 function goidfind(){
			  var frm = document.IDfind;
			  frm.method = "post";
			  frm.action = "./idfind.jsp";
			  frm.submit();
			 } 
			 function gopwfind(){
			  var frm = document.IDfind;
			  frm.method = "post";
			  frm.action = "./pwfind.jsp";
			  frm.submit();
			 }	 
			 function logout(){
			   var frm=document.IDfind;
			   frm.method="post";
			   frm.action="./logoutCtl.jsp";
			   frm.submit();  
			 }
			 function idfind() { //이름,이메일로 '찾기' 버튼
			  var frm = document.IDfind;
			  if (frm.name.value.length < 1) {
			   alert("이름를 입력해주세요");
			   return;
			  }
			  if (frm.email.value.length < 1) {
			   alert("이메일을 입력해주세요");
			   return;
			  }
			  frm.method = "post";
			  frm.action = "./idfindCtl.jsp"; //넘어간화면
			  frm.submit();
			 }
</script>
<style type="text/css">
		.button {
			  background-color: pink;
			  border: none;
			  color: white;
			  padding: 8px 13px;
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
		.list {
			list-style-type: none;
			border-bottom: 2px solid pink;
			text-align: right;
			padding: 5px 0;
			padding-bottom: 8px;
		}
		.login, .joinus {
			display: inline;
			text-align: right;
			letter-spacing : 3px;
			text-transform : uppercase;
			font-family: Hanna, sans-serif;
			color: pink;
		}
		.box {
			color: pink;
			border: 2px solid;
			padding: 10px;
			margin-top: 30px;
		}
		.css {
			text-align: center;
			font-size: 30px;
			font-family: Hanna, sans-serif;
			color: pink;
			}
		.css2 {
			text-align: left;
			font-family: Hanna, sans-serif;
			color: pink;
			}
		.textbox {
			border: 2px solid pink;
			border-radius: 2px;
			height: 25px;
			padding: 1px;
			font-family: Hanna, sans-serif;
			color: pink;
		}
		.aa {
			color: pink;
			text-decoration: none;
		}
		.form__group {
			font-family: Hanna, sans-serif;
			  position: relative;
			  padding: 15px 0 0;
			  margin-top: 10px;
			  width: 50%;
			}
			
		.form__field {
			  font-family: inherit;
			  width: 150%;
			  border: 0;
			  border-bottom: 2px solid pink;
			  outline: 0;
			  font-size: 1.3rem;
			  color: hotpink;
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
			  color: pink;
			}
			
		.form__field:focus {
			  padding-bottom: 6px;
			  font-weight: 700;
			  border-width: 3px;
			  border-image: linear-gradient(to right, hotpink, pink);
			  border-image-slice: 1;
			}
		.form__field:focus ~ .form__label {
			  position: absolute;
			  top: 0;
			  display: block;
			  transition: 0.2s;
			  font-size: 1rem;
			  color: hotpink;
			  font-weight: 700;
			}
			
		/* reset input */
		.form__field:required, .form__field:invalid {
			  box-shadow: none;
			}
</style>
</head>
<body>
	<div class="p1">
	<a href="main.jsp" class="aa">길나들이</a>
	<p class="p2">A moment Walking the Flower road</p>
	</div>
	<div>
		<ul class="list">
			<li class="login"><a href="login.jsp" class="aa">Login</a></li>
			<li class="login">│</li>
			<li class="joinus"><a href="SignUp.jsp" class="aa">Join us</a></li>
			<li class="joinus">│</li>
		</ul>
	</div>
	<div class="css">
	등록한 이메일로 아이디 찾기
	</div>
	<div> 
	  <form name="IDfind" method="post">
  	  <table class="box" align="center">
	  <tr align="center">
	    <td><div class="form__group field" style=" padding-right:25%;">
  		<input type="text" class="form__field" placeholder="NAME" name="name" required />
  		<label for="name" class="form__label">NAME</label></div>
	  </tr>
	  <tr align="center">
		<td><div class="form__group field" style=" padding-right:25%;">
  		<input type="text" class="form__field" placeholder="E-Mail" name="email" required />
  		<label for="name" class="form__label">E-Mail</label></div>
	  </tr>
	   <tr align="center">
	   <td colspan="2"><br><input type="submit" class="button" onClick="idfind()" value="확인"></td>
	  </tr>
	  </table>
	  </form>
	</div>
</body>
</html>