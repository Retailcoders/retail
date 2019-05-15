<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body{

background-image:url('images/house2.gif');
background-size:cover;
background-repeat:no-repeat;
margin:0;
padding:0;
font-family:Cursive;
-webkit-background-size: cover;
-moz-background-size: cover;
-o-background-size: cover;
background-size: cover;
}
.submit
{
 background:aqua;
 color:black;
}

.transbox
{
margin:auto;
width:250px;
height:120px;
box-shadow:5px 5px 5px 5px rgba(0,0,0,0.9);
padding:55px 30px;
margin-top:350px;
margin-bottom:auto;
margin-right:0px;
margin-left:600px;
font-weight:bold;
font-family:cursive;
color:green;

background-color:#ffffff;
border:3px solid black;
opacity:0.7;
filter:alpha(opacity=40);
}
</style>
</head>
<body>

<form action="Loginservlet" method="post">
<center>
<div class=transbox>
<table>
<tr>
<td>UserName</td>
<td><input type="text" name="uname"></td></tr>
<tr><td>New Password</td>
<td><input type="password" name="newPwd"></td>
</tr>
<tr><td>Confirm Password</td>
<td><input type="password" name="confrmPwd"></td>
</tr>
<tr><td></td>
<td><input class="submit" name="action" type="submit" value="Update"></td>
</tr>
</table>
</div>
</center>
</form>
</body>
</html>