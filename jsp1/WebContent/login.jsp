<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%=request.getParameter("id") %>
<%
String login ="false";
if(session.getAttribute("login")!=null){
	login = (String)session.getAttribute("login");
%>
<form action="login_ok.jsp"> 
 아이디: <input type = "text" name = "id" id="id"><br>
 비밀번호 : <input type="password" name ="pwd" id="pwd"><br>
 </form>
 <%
 }else if(login.equals("true")){
 out.println(session.getAttribute("id")+"님 환영합니다.");
 }
%>
</body>
</html>