<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="Searchservlet" method="post">
<center>
<div>
<table >
<tr>
<td>
<input type="text" name="locality" id="loc" >
</td>
<td>
<input type="text" name="proptype" id="ptype" >
</td>
<td>
<input type="text" name="price" id="budget" >
</td>
<td>
<input type="submit" name="action" value="search">
</td>
</tr>
</table>
</div>
</center>
</form>

</body>
</html>