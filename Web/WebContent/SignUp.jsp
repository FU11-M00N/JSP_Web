<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<?
session_cache_limiter('private');
session_start();
?>
<html>
<head>
<meta charset="UTF-8">
<link href="http://fonts.googleapis.com/earlyaccess/hanna.css" rel="stylesheet">
<script>
		function idcheck(){
		 var id = document.signup.id.value;
		 if(id.length<1 || id==null){
		  alert("중복체크할 아이디를 입력하십시오");
		  return false;
		 }
		 var url = "idcheck.jsp?id=" + id;
		 window.open(url, "get", "height = 5, width = 220");
		}
		function check()
		{
		  if(signup.id.value== "")
		{
		  alert("아이디를 입력하세요");
			 return false;
		}
		 if(signup.password.value.length <8 || signup.password.value.length >16)
		 {
		   alert("비밀번호는 8~16자리 사이로 입력해주세요");
		   signup.password.value="";
		   signup.password.focus();
		   return false;
		 }
		 if(signup.password.value != signup.reconfirm.value)
		 {
		   alert("비밀번호가 일치하지 않습니다 \n비밀번호를 다시 입력해주세요");
		   signup.password.value="";
		   signup.reconfirm.value="";
		   signup.password.focus();
		   return false;
		 }
		 if(signup.nikname.value == "")
		 {
		   alert("닉네임을 입력하세요");
		   return false;
		 }
		 if(signup.name.value == "")
		 {
		   alert("이름을 입력하세요");
		   return false;
		 }
		 if(signup.email.value == "")
		{
	  		alert("이메일을 입력하세요");
			 return false;
		}
		if(signup.area.value == "")
		{
	  		alert("지역을 입력하세요");
			 return false;
		}
	}
</script>
<style type="text/css">
		.button {
			  background-color: pink;
			  border: none;
			  color: white;
			  padding: 7px 13px;
			  text-align: center;
			  text-decoration: none;
			  display: inline-block;
			  font-size: 15px;
			  font-family: Hanna, sans-serif;
		}
		.button2 {
			  background-color: pink;
			  border: none;
			  color: white;
			  padding: 5px 7px;
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
			font-size: 35px;
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
		</ul>
	</div>
	<div class="css">
	Sign Up
	</div>
	<div> 
	  <form name="signup" onsubmit="return check()" action="SignUpJSP.jsp" method="post">
  	  <table class="box" style="align: center;" align="center" >
	  <tr align="center">
	    <td><div class="form__group field" style=" padding-right:25%;">
  		<input type="text" class="form__field" placeholder="ID" name="id" required />
  		<label for="name" class="form__label">ID</label> <br><input type="button" onClick="idcheck()" class="button" value="ID 중복확인" style="float:left;"></div></td> 
	  </tr>
	  <tr align="center">
		<td><div class="form__group field" style="padding-right:25%;" >
  		<input type="password" class="form__field" placeholder="PW" name="password" required />
  		<label for="name" class="form__label">PW</label></div></td>
	  </tr>
	    <tr align="center">
		<td><div class="form__group field" style="padding-right:25%;">
  		<input type="password" class="form__field" placeholder="PW 재확인" name="reconfirm" required size="50" maxlength="15"/>
  		<label for="name" class="form__label">PW 재확인</label></div></td>
	  </tr>
	    <tr align="center">
		<td><div class="form__group field" style="padding-right:25%;">
  		<input type="text" class="form__field" placeholder="NAME" name="name" required />
  		<label for="name" class="form__label">NAME</label></div></td>
	  </tr>
	  <tr align="center">
		<td><div class="form__group field" style="padding-right:25%;">
  		<input type="text" class="form__field" placeholder="NICKNAME" name="nickname" required />
  		<label for="name" class="form__label">NICKNAME</label></div></td>
	  </tr>
	  <tr align="center">
		<td><div class="form__group field" style="padding-right:25%;">
  		<input type="text" class="form__field" placeholder="E-Mail" name="email" required />
  		<label for="name" class="form__label">E-Mail</label></div></td>
	  </tr>
	  <tr align="center">
		<td><div class="form__group field" style="padding-right:25%;">
  		<input type="text" class="form__field" placeholder="지역" name="area" required />
  		<label for="name" class="form__label">지역</label></div>
			<input type="hidden" name="flag" class="textbox" size="21" value="0"></td>
	  </tr>
	   <tr align="center">
	   <td colspan="2"><br><input type="submit" class="button" value="가입하기"></td>
	  </tr>
	  </table>
	  </form>
	</div>
</body>
</html>
