<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="footer.html"></jsp:include>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>gallery</title>
</head>

<style>

* {
  box-sizing: border-box;
}
body {
  background-color: #f1f1f1;
  padding: 20px;
  font-family: Arial;
}
/* Center website */
.main {
  max-width: 1000px;
  margin: auto;
}
h1 {
  font-size: 50px;
  word-break: break-all;
}
.row {
  margin: 8px -16px;
}
/* Add padding BETWEEN each column */
.row,
.row > .column {
  padding: 8px;
}
/* Create four equal columns that floats next to each other */
.column {
  float: left;
  width: 50%;
}
/* Clear floats after rows */ 
.row:after {
  content: "";
  display: table;
  clear: both;
}
/* Content */
.content {
  background-color: white;
  padding: 20px;
}
/* Responsive layout - makes a two column-layout instead of four columns */
@media screen and (max-width: 900px) {
  .column {
    width: 50%;
  }
}
/* Responsive layout - makes the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .column {
    width: 100%;
  }
}
</style>
</head>
<body >
 
<!-- MAIN (Center website) -->
<div class="main">
<h2>Property gallery</h2>
<hr>

<!-- Portfolio Gallery Grid -->
<div class="row">
  <div class="column">
    <div class="content">
      <img src="images/p4.jpg" alt="Property1" style="width:100%">
      <h3>Brigade Xanadu</h3>
      <p>2 BHK Flats</p>
      <p> <strong> 20 Lac </strong> onwards</p>
    </div>
  </div>
  <div class="column">
    <div class="content">
    <img src="images/p2.jpg" alt="Property2" style="width:100%">
      <h3>Jains WestMinister </h3>
 <p>2 BHK Flats</p>
      <p> <strong> 20 Lac </strong> onwards</p>    </div>
  </div>
  <div class="column">
    <div class="content">
    <img src="images/p3.jpg" alt="Property3" style="width:100%">
      <h3>Akshaya</h3>
      <p><strong> 20 Lac </strong> onwards</p>       </div>
  </div>
  <div class="column">
    <div class="content">
    <img src="images/p4.jpg" alt="Property4" style="width:100%">
       <h3>TVH Quadrant </h3>
 <p>2 BHK Flats</p>
      <p> <strong> 20 Lac </strong> onwards</p>    </div>
    </div>
  </div>
<!-- END GRID -->
<!-- END MAIN -->
</div>

</body>
</html>