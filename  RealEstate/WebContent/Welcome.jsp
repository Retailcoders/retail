<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.test

{

text-indent:-50px;

font-family:cursive;

color:orange;

font-size:small;

min-height: 100%;

min-width: 1024px;

width: 100%;

height: auto;

position: fixed;

top: 0;

left: 0;


-webkit-background-size: cover;

-moz-background-size: cover;

-o-background-size: cover;

background-size: cover;

}
</style>
</head>
<body>
<form class="test" action="Regservlet" method="post">
<table align="center">
<tr>
<td>
Username:
</td>
<td>
<input type="text" id="uname" name="uname">
</td>
</tr>
<tr>
<td>
Password:
</td>
<td>
<input type="text" id="pass" name="pass">
</td>
</tr>
<tr>
<td>
ConfirmPassword:
</td>
<td>
<input type="text" id="cpass" name="cpass">
</td>
</tr>
<tr>
<td>
<input type="submit" id="ChangePassWord" name="action" value="ChangePassword">
</td>
<td>
</td>
</table>
</form>

</body>
</html>