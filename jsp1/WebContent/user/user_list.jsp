<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.Connection" %>
    <%@ page import="java.sql.DriverManager" %>
    <%@ page import="java.sql.ResultSet" %>
    <%@ page import="java.sql.SQLException" %>
    <%@ page import="java.sql.Statement" %>

<%
String url = "jdbc:mysql://localhost:3306/jsp_study";
String id = "root";
String pwd = "123456";
Connection con;
Statement st;
try {
	Class.forName("org.mariadb.jdbc.Driver");
		con= DriverManager.getConnection(url,id,pwd);
		System.out.println("연결성공");
		st= con.createStatement();
		ResultSet rs = st.executeQuery("select * from user");
	   out.println("<table border=1>");
		while(rs.next()) {
			out.println("<tr>");
			out.println("<td>");
			out.write(rs.getString("user_no"));
			out.println("<td>");
			out.println("<td>");
			out.write(rs.getString("id"));
			out.println("<td>");
			out.println("<td>");
			out.write(rs.getString("password"));
			out.println("<td>");
			out.println("<td>");
			out.write(rs.getString("name")+"<br>");
			out.println("<td>");
			out.println("<tr>");
		}
	    out.println("</table>");

} catch (ClassNotFoundException e) {
	e.printStackTrace();
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}


%>