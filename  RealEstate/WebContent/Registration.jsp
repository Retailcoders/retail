!DOCTYPE html>

<html>

<head>

<meta charset="ISO-8859-1">

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


background: url(images/living_3.png) no-repeat center center fixed; 

-webkit-background-size: cover;

-moz-background-size: cover;

-o-background-size: cover;

background-size: cover;

}
.submit

{
background: #0066A2;

color:orange;
}
.transbox
{
margin:auto;
width:200px;
height:300px;
box-shadow:20px 20px 20px 20px rgba(0,0,0,0.9);
padding:40px 40px;
margin-top:50px;
margin-bottom:100px;
margin-left:0px;
margin-right:450px

font-weight:bold;
font-family:verdana;
color:white;
background-color:purple;
border:3px solid black;
opacity:0.6;
filter:alpha(opacity=60);
}

</style>
</head>

<body>

<center>


<div class="test">

<form name="reg" onchange="myid()" action="Regservlet" method ="post">
<div class="transbox" align="center">

<table align="center" cellpadding="1" cellspacing="20">




<tr>




<td align="right">

Registration




</td>

</tr>




<tr>

<td align="left">

FirstName:</td>

<td>

<input type="text" name="fn" required>

</td>

</tr>




<tr>

<td align="left">

LastName:

</td>

<td>

<input type="text" name="ln" required>

</td>

</tr>

<tr>

<td align="left">

Mobile:

</td>

<td>

<input type="number" name="mob" required maxlength="10">

</td>

</tr>

<tr>

<td align="left">

Id-Proof

</td>

<td>

<select type="text" id="proof" name="proof" required>

<option >-Select-</option>

<option name="Aadhar" value="Aadhar">Aadhar</option>

<option name="Voter Id" value="Voter Id">Voter Id</option>

<option name="Pan card" value="Pan card">Pan card</option>

<option name="Driving Licence" value="Driving Licence">Driving Licence</option>
<input id="idproof"  name="idproof" style="visibility:hidden;">

</td>

<tr>

<td align="left">

DOB:

</td>

<td>

<input type="date" name="dob" required placeholder="dd/mm/yyyy">

</td>

</tr>

</tr>

 <tr>




<td align="right">

<input type="submit"  name="action" value="Register"  style="font-size:x-large;color:white;background-color:green ;padding:3px;font-family: cursive;

box-sizing:border-box ;border:none border-radius:8px;;

outline:none;" >

</td>

</tr> 







</table>
</div>

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

    

</form>

</div>








</center>

</body>

</html>