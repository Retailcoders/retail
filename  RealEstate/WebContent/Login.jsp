<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body{

background-image:url('images/living_3.png');
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
.login{

margin:auto;
width:250px;
box-shadow:40px 40px 40px 40px rgba(0,0,0,0.9);
padding:80px 40px;
margin-top:85px;
margin-bottom:85px;
background:linear-gradient(top, red 0%, red 100%);
color:black;
}

h2{
margin:0 0 30px 0;
padding:5px;
color:white;
text-align:center;
}

input{
width:100%;
margin-bottom:30px;
}
input[type=text],input[type=password]
{
border:none;
outline:none;
border:2px red dotted;
background:color-pink;
border-radius:30px;
box-sizing:border-box;
color:green;
font-size:16px;
padding:20px;
text-align:center;
}

::placeholder{
color:rgba(255,255,255,0.5);
text-align:center;
}

input[type=submit]
{
border:none;
outline:none;
padding:10px;
color:red;
font-size:16px;
font-family:Cursive;
background:#F08080;
cursor:pointer;
border-radius:20px;
}

input[type=submit]:hover
{
background:#efed40;
color:#262626;
}
a
{
color:#fff;
font-size:14px;
font-weight:cursive;
text-decoration:none;
}

a:hover{
text-decoration:underline;
}


.footer
{
position:absolute;
bottom:0;
width:100%;
height:60px;

}


</style>
</head>


<body>

<div class="login">
      <h2>
      Log In Here
      </h2>
      
      
     <form name="Loginform" action="Loginservlet" onsubmit=" return myvalidation()"  method="post">
      <input type="text" name="username" placeholder="Enter Email" ><!--  pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title="Enter a valid emailid" required>-->
      <input type="password" name="password" placeholder="Enter password" > <!-- pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
      title = "Must contain at least one number and one uppercase and lowercase letter, 
      and at least 8 or more charcters" required>-->
      <input type="submit" name="action" value="LogIn" >
      <a href="Registration.jsp" > Sign Up</a>
      </form>
      
   
<script type="text/javascript">




function myvalidation()

{

	

	

	var email=document.forms["Loginform"]["email"];

	

	var password=document.forms["Loginform"]["password"];




		

	

	

	if(email.value== "")

	{

	window.alert("please enter your email id");

	email.focus();

	return false;

		

	}

	

	if(email.value.indexOf("@",0)<0)

	{

	window.alert("please enter valid email add");

	email.focus();

	return false;

		

	}

	

	if(email.value.indexOf(".",0)<0)

	{

	window.alert("please enter valid email add");

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

	      if(password.value == email.value)

	      {

	        alert("Error: Password must be different from Username!");

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
</div>
<div class="footer">
<footer>
<p>
&#169;copyrightCoolCoders;
</p>
</footer>
</div>
</head>
</body>
</html>