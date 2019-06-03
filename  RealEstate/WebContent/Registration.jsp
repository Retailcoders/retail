<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<center><h1><i>Register</i></h1>
<h2><i>Please fill in this form to create an account.</i></h2></center>

</head>
<body>
<div class="register">

<form name="reg" onchange="myid()" action="Regservlet" method ="post">
<link type="text/css" rel="stylesheet" href="Style.css">
<script type="text/javascript" src="validation.js"></script>

<center>

 <table border="0" cellpadding="10" cellspacing="1" class="table">
<tr><td><b>First Name:</b> </td><td><input type="text" name="fn" id="fn" required></td></tr>
<tr><td><b>Last Name:</b> </td><td><input type="text" name="ln" id="ln" required></td></tr>
<tr><td><b>Mobile Number:</b></td><td><input type="number" name="mob" id="mob" required maxlength="10"></td></tr>

<tr><td><b>ID Proof Type:<b></b></td><td><select name="proof" id="proof" required>
<option>Select</option>
<option name="Aadhar" value="Aadhar">Aadhar</option>
<optionname="Pan card" value="Pan card">Pan card</option>
<option name="Voter Id" value="Voter Id">Voter Id</option>
</select><input id="idproof"  name="idproof" style="visibility:hidden;"></td></tr>


<!-- <tr><td><b>ID Proof Number:</b></td><td><input type="text" maxlength="12" name="idno" id="idn" required></td></tr> -->

<tr><td><b>Date Of Birth</b></td><td><select name="mon" id="dob" required>

<option>Month</option>

<option value="Jan">January</option>
<option value="Feb">February</option>
<option value="March">March</option>
<option value="April">April</option>
<option value="May">May</option>
<option value="June">June</option>
<option value="July">July</option>
<option value="Aug">August</option>
<option value="Sept">September</option>
<option value="Oct">October</option>
<option value="Nov">November</option>
<option value="Dec">December</option></select>

<select name="days">
<option>Day</option>

<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>
<option value="8">8</option>
<option value="9">9</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
<option value="13">13</option>
<option value="14">14</option>
<option value="15">15</option>
<option value="16">16</option>
<option value="17">17</option>
<option value="18">18</option>
<option value="19">19</option>
<option value="20">20</option>
<option value="21">21</option>
<option value="22">22</option>
<option value="23">23</option>
<option value="24">24</option>
<option value="25">25</option>
<option value="26">26</option>
<option value="27">27</option>
<option value="28">28</option>
<option value="29">29</option>
<option value="30">30</option>
<option value="31">31</option>



</select>

<select name="year">
<option>Year</option>
<option value="1990">1990</option>
<option value="1991">1991</option>
<option value="1992">1992</option>
<option value="1993">1993</option>
<option value="1994">1994</option>
<option value="1995">1995</option>
<option value="1996">1996</option>
<option value="1997">1997</option>
<option value="1998">1998</option>
<option value="1999">1999</option>
<option value="2000">2000</option>
<option value="2001">2001</option>
<option value="2002">2002</option>
<option value="2003">2003</option>
<option value="2004">2004</option>
<option value="2005">2005</option>
<option value="2006">2006</option>
<option value="2007">2007</option>
<option value="2008">2008</option>
<option value="2009">2009</option>
</select>


</td>


<tr><td><input type="submit" class="button"  name="action" value="Register" ></td>
<td><a href="Login.jsp"> Registered Users</a></td></tr>

</table>
</form>
</div>
</body>
</center>
<script type="text/javascript">

function myid()
{
	if(document.getElementById("proof").value=="Aadhar")
		{
		document.getElementById("idproof").style.visibility="visible";
		document.getElementById("idproof").setAttribute("maxlength","12");
		}
	if(document.getElementById("proof").value=="Voter Id")
	{
	document.getElementById("idproof").style.visibility="visible";
	document.getElementById("idproof").setAttribute("maxlength","15");
	}
	if(document.getElementById("proof").value=="Pan card")
	{
	document.getElementById("idproof").style.visibility="visible";
	document.getElementById("idproof").setAttribute("maxlength","12");
	}
	if(document.getElementById("proof").value=="Driving Licence")
	{
	document.getElementById("idproof").style.visibility="visible";
	document.getElementById("idproof").setAttribute("maxlength","17");
	}
	}


	</script>
</html>