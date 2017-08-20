<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
function login(){
	var idObj = document.getElementById("id");
	alert(idObj.value);
	var pwdObj = document.getElementById("pwd");
	alert(pwdObj.value);
}
</script>
<body>
안녕하세요.<br>
 처음 만든 웹 프로젝트의 index.html 파일입니다.<br>
<form action ="login.jsp"> 
 아이디: <input type = "text" name = "id1" id="id"><br>
 비밀번호 : <input type="password" name ="pwd1" id="pwd"><br>
 <input type="submit" value="로그인" onclick="">
 </form>
</body>
</html>