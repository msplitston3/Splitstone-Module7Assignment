<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<% 
String taskName = request.getParameter("task");
String dueDate = request.getParameter("dueDate");
%>
<body>
<h1>Task submitted</h1>
<table>
	<tbody>
		<tr>
			<td>Task:</td>
			<td><h3><%= taskName %></h3></td>
		</tr>
		<tr>
			<td>Due Date:</td>
			<td><h3><%= dueDate %></h3></td>
		</tr>
	</tbody>
		<%
		String url = "jdbc:mysql://localhost:3306/neon";
		String username = "root";
		String password = "1234";
		String sql = "INSERT INTO item (name, duedate) VALUES('" + taskName + "','" + dueDate + "')";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(url, username, password);
		Statement st = con.createStatement();
		
		st.executeUpdate(sql);
		
	%>
		<h4><a href="index.jsp">Return Home</a></h4>
</table>
</body>
</html>