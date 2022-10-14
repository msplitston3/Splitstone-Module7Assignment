<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form name="deleteItemForm" action="deleteditem.jsp" method="">
		<tbody>
			<tr>
				<td>Please enter the task name to delete: </td>
				<td><input type="text" name = "task" value="" size="50">
			</tr>
		</tbody>
		<input type="reset" value="clear" name="clear"/>
		<input type="submit" value ="Submit" name="submit"/>
	</form>

<h4><a href="index.jsp">Return Home</a></h4>
</body>
</html>