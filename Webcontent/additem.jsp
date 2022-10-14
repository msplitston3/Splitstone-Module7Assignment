<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<h1>Please Enter the Task and Due Date Below: </h1>
	<form name="myTaskForm" action="results.jsp" method="post">
		<table>
			<tbody>
				<tr>
					<td>Task:</td>
					<td><input type="text" name="task" value"" size="50"/></td>
				</tr>
				<tr>
					<td>Due Date:</td>
					<td><input type="date" name="dueDate" value"" size="50"/></td>
				</tr>
			</tbody>
		</table>
		<input type="reset" value="clear" name="clear"/>
		<input type="submit" value ="Submit" name="submit"/>
	</form>

</body>
</html>