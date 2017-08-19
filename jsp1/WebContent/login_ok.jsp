<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.sql.Statement"%>

<%
String id = request.getParameter("id");
String pwd = request.getParameter("pwd");

Connection con;
PreparedStatement ps;
String result = id +"는 없는 아이디 입니다.";
try {
		Class.forName("org.mariadb.jdbc.Driver");
		con =  DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp_study" , "root" , "123456");
		System.out.println("연결성공");
		String sql = "select * from user where id =? and pwd= ?";
		
		ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery(sql);
		ps = con.prepareStatement(sql);
		ps.setString(1, id);
		while(rs.next()) {
			if(pwd.equals (rs.getString("password"))){
					out.println("로그인 성공하셨네요");
			}
			else{
                    out.println("비밀번호를 틀리셨습니다.");
                    session.setAttribute("login", "true");
                    session.setAttribute("id", "id");
            }
		}
}catch(ClassNotFoundException e){
			e.printStackTrace();
}catch(SQLException e){
			 e.printStackTrace();
}
%>

<script>
	alert("<%=result%>");
	location.href="/login.jsp";
</script>
