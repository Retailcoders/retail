<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<center><h1>Log In Here</h1></center>
<style>
.body
{
	background:url(images/kitchen.png)no-repeat center center fixed;
	-webkit-background-size:cover;
	-moz-background-size:cover;
	-o-background-size:cover;
	background-size:cover;
}
</style>
</head>
<body class="body">

<center>
<form name="Loginform" 
action="RegServlet" method="post" onsubmit=" return myvalidation()"></form>
 <table border="0" cellpadding="10" cellspacing="1" class="table">
<tr><td>User Id:</td><td><input type="text" name="username" required></td></tr>
<tr><td>Password:</td><td><input type="password" name="password" required></td></tr>
<tr><td><input type="submit"  name="action" value="LogIn"></td></tr>

<tr><td> <a href="Registration.jsp" > Sign Up</a></td></tr>
</table> 
</center>

</body>
<script type="text/javascript">

function myvalidation()
{
	var username=document.forms["Loginform"]["email"];
	var password=document.forms["Loginform"]["password"];
    if(username.value== "")
	{
	window.alert("please enter your username");
	email.focus();
	return false;
	}
    if(password.value== "")
	{
	window.alert("please enter your password");
	password.focus();
	return false;
	}
    if(password.value.length < 6) 
    {
     alert("Error: Password must contain at least six characters!");
	 password.focus();
	 return false;
      }
     else {
     alert("Error: Please enter valid username or password");
     password.focus();
     return false;
    }
    alert("You entered a valid password: " + Password.value);
    return true;
	}

</script>
</html>