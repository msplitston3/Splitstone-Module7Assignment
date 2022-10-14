<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<%
	String taskName = request.getParameter("task");
%>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
		String url = "jdbc:mysql://localhost:3306/neon";
		String username = "root";
		String password = "1234";
		String sql = "DELETE FROM item where name='" + taskName + "'";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(url, username, password);
		Statement st = con.createStatement();
		
		st.executeUpdate(sql);
		
	%>
	<h3>Item Has Been Deleted</h3>
	<h4><a href="index.jsp">Return Home</a></h4>
</body>
</html>