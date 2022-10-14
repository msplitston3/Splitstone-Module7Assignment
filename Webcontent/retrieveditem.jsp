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
		String sql = "select * from item where name='" + taskName + "'";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(url, username, password);
		Statement st = con.createStatement();
		
		ResultSet rs = st.executeQuery(sql);
		rs.next();
	%>
	
	<h3>Retrieved Task: <%= rs.getString(1) %><br>
	Retrieved Task Due Date: <%= rs.getString(2) %></h3></h3>
	
	<h4><a href="index.jsp">Return Home</a></h4>
</body>
</html>