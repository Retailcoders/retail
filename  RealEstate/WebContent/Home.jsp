
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Insert title here</title>

<style>

* {

    margin: 0;

    padding: 0;

    font-family: Century Gothic;

}


body {

    background: url('images/p3.png'); 

    background-repeat: no-repeat; 

    background-position: center; 

    background-attachment: fixed; 


    -webkit-background-size: cover;

    -moz-background-size: cover;

    -o-background-size: cover;

    background-size: cover;

}

.container{

margin-top: 10px;


}

.links {

    

    height: 10px;

    color:#000;

}


ul {

    float: right;

    list-style-type: none;

}


ul li {

    display: inline-block;

}


ul li a {

    font-size:medium; 

    font-weight: bold;

    text-decoration: none;

    color: #fff;

    padding: 10px 10px;

    border: 1px solid transparent;

    transition: 0.6s ease;

    display: block;

}

ul li a:hover {

    background-color: red;

    color: #000;

}

ul li ul li {

    display: none;

    margin-left:0;

}

ul li:hover ul li {

    display: block;

}

.logo {

    float:left;

}

.logo img{

    width:300px;

    height:150px;

}

.aboutus {

    background: url(images/p2.png) no-repeat center center fixed;

    -webkit-background-size: cover;

    -moz-background-size: cover;

    -o-background-size: cover;

    background-size: cover;

}

.form-box {

    margin-left: 40px;

    width:300px;

    height:275px;

    margin-top: 200px;

    background: rgba(0, 0, 0, 0.5);

    padding: 30px;

    border-radius:10px;

}


 .search-field {

    height: 50px;

    padding: 10px;

    border: none;

    border-radius: 20px;

    outline: none;

} 


.location {

    width: 275px;

    height: 20px;

}

.search-btn {

    text-align:center;

    height: 40px;

    width: 100px;

    background: red;

    border: none;

    color: #000;

    border-radius: 20px;

}


.search-btn:hover {

    background: #ffc107;

}


h3 {

text-align:center;

    color: red;

    font-family: fantasy;

    font-style: normal;

    font-size: 20px;

    letter-spacing: 2px;

    margin-bottom:20px;

    border-radius:5px;

}

</style>



</head>

<body>


    

    <div class="container">

        <div class="logo">

            <img src="images/logo.png">

        </div>

        <div class="links">

            <ul>

                <li><a href="#">Home</a></li>

                <li><a href="#">Buy</a>

                    <ul>

                        <li><a>Flats</a></li>

                        <li><a>Apartments</a></li>

                        <li><a>Villas</a></li>

                        <li><a>Luxury Homes</a></li>

                        <li><a>Plots</a></li>

                        <li><a>Commercial Spaces</a></li>

                    </ul>

                <li><a href="#">Sell</a>

                    <ul>

                        <li><a>Flats</a></li>

                        <li><a>Apartments</a></li>

                        <li><a>Villas</a></li>

                        <li><a>Luxury Homes</a></li>

                        <li><a>Plots</a></li>

                        <li><a>Commercial Spaces</a></li>

                    </ul>

                    <li><a href="#">Rent</a>

                    <ul>

                        <li><a>Flats</a></li>

                        <li><a>Apartments</a></li>

                        <li><a>Villas</a></li>

                        <li><a>Luxury Homes</a></li>

                        <li><a>Plots</a></li>

                        <li><a>Commercial Spaces</a></li>

                    </ul>

                <li><a href="AboutUs.html">About Us</a></li>

                <li><a href="Login.jsp">LogIn</a></li>

                <li><a href="Registration.jsp">Register</a></li>

            </ul>

        </div>

        </div>
		<form action="Searchservlet" method="post">
         <div class="form-box">

            <h3>Find Properties Near You</h3>

            <input type="text"  name="locality" class="search-field location" placeholder="Location" required> 

            <br><br>

            <input type="text" name="proptype"  class="search-field location" placeholder="Property Type">

            <br><br>

            <input type="text"  name="price"  class="search-field location" placeholder="Budget">

            <br><br>

           <input type="submit" name="action" value="search" class="search-btn"> 
	
        </div> 
		</form>
        



    

</body>

</html>


