<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payment Form</title>
<link type="text/css" rel="stylesheet" href="CSS/PaymentStyle.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
</head>
<body>
<form  name="myForm" action="PayServlet" method="post" onsubmit="return validate();">
<div class="wrapper">
<div class="payment">
<div class="payment-logo"><p></p>
</div>
<h2>Payment Gateway</h2>



<div class="form">

Amount:<input type="number" class="input" name="amt" onblur="return amt_validation();">






<div class="card space icon-relative">
<label class="label">Card Holder:</label>
<input type="text" class="input" name="card_holder" onblur="return namevalidation();" placeholder="Card Holder Name">
<i class="fas fa-user"></i>
</div>

<div class="card space icon-relative">
<label class="label">Card Number:</label>
<input type="text" class="input"  maxlength="16" name="cardNo" placeholder="Card Number" onblur="return cardvalidation()" >
<i class="far fa-credit-card"></i>
</div>

<div class="card-grp space">
<div class="card-item icon-relative">
<label class="label">Expiry Date:</label>
<input type="text" class="input" name="expiry_date" placeholder="MM /YY">
<i class="far fa-calendar-alt"></i>
</div>



<div class="card-item icon-relative">
<label class="label">CVV:</label>
<input type="text" class="input" name="cvv" placeholder="000" maxlength="3" onblur="cvv_validation()">
<i class="fas fa-lock"></i>
</div>
</div>

<div class="btn">
Pay
</div>

</div>

</div>
</div>
</form>
</body>
<script>
function cardvalidation()
{
	var cardNo=document.myForm.cardNo.value;
	if(cardNo==""||cardNo==null)
	 {
	 alert ("Card Number Mandatory");
	 return false;
	 }

if(cardNo.length<16)
	 {
	 alert("Card Number Minimum digits should be 16");
	 return false;
	 }
	 
if(isNaN(cardNo))
	{
	alert("enter valid card Number ")
	 }

}
function namevalidation()
{
	var name=document.myForm.card_holder.value;
	if(name==""||name==null)
	 {
	 alert ("Name mandatory");
	 return false;
	 }
	if(!isNaN(name))
	{
	alert("Enter valid Name ")
	 }
	
}
function cvv_validation()
{
	var cvv=document.myForm.cvv.value;
	if(cvv==""||cvv==null)
	 {
	 alert ("CVV mandatory ");
	 return false;
	 }
	if(isNaN(cvv))
	{
	alert("Enter valid cvv ")
	}
	if(cvv.length<3)
	{
	alert("cvv must be 3digits");
	}
	
}
function amt_validation()
{
	 var amt=document.myForm.amt.value;
 
if(amt==""||amt==null)
	 {
	 alert ("Amount mandatory ");
	 return false;
	 }
if(isNaN(amt))
	 {
	 alert("Amount should be Number");
	 return false;
	 }
if(amt<5000)
	 {
	 alert("Minimum amount should be 5000");
	 return false;
	 }
 }
 
</script>

</html>