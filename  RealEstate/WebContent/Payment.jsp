<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payment Form</title>

<link type="text/css" rel="stylesheet" href="PaymentStyle.css">
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

<div class="card space icon-relative">
<label class="label">Amount</label>
<input type="text" class="input" name="amt" placeholder="Enter the amount"  onblur="return amt_validation();">
<i class="fas fa-user"></i>
</div>



<div class="card space icon-relative">
<label class="label">Card Holder:</label>
<input type="text" class="input" name="card_holder" placeholder="Card Holder Name" onblur="namevalidation()">
<i class="fas fa-user"></i>
</div>

<div class="card space icon-relative">
<label class="label">Card Number:</label>
<input type="text" class="input" name="cardNo" maxlength="16" placeholder="Card Number" onblur="cardno_validation()">
<i class="far fa-credit-card"></i>
</div>

<div class="card-grp space">
<div class="card-item icon-relative">
<label class="label">Expiry Date:</label>
<input type="text" class="input" name="expiry_date" placeholder="MM/YY" required>
<i class="far fa-calendar-alt"></i>
</div>

<!--  <div class="card-grp">
<div class="card-item">
<label class="label">Expiry Date:</label>
<input type="text" class="input" name="expiry_date" placeholder="00 / 00">
</div>-->

<div class="card-item icon-relative">
<label class="label">CVV:</label>
<input type="text" class="input" name="cvv" placeholder="000" maxlength="3" onblur="cvv_validation()">
<i class="fas fa-lock"></i>
</div>
</div>


<div><input type="submit" value="Pay" class="btn"></div>


</div>

</div>
</div>
</form>
</body>


<script>
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
 
function cardno_validation()
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
function name_validation()
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

</script>

</html>