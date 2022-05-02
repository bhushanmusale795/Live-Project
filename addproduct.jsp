<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADD PRODUCT DETAILS</title>
<style>
      form{
            color:blue;
          }
</style>
</head>
<body bgcolor="pink">
	<h1 style="color: red; background-color: yellow">ADD PRODUCT DETAILS</h1>
	<form action="addproduct" method="get">
		ENTER ID NUMBER:<br> <input type="text" name="id"><br>
		ENTER PRODUCT NAME:<br> <input type="text" name="name"><br>
		ENTER  PRICE: <br> <input type="text" name="price"><br>
        ENTER QUANTITY: <br> <input type="text" name="quantity"><br>
       
     <input type="submit" style="background-color:#1c1b68;color:#e11715;padding:10px;margin:10px;" value="ADD PRODUCT"><br>
	</form>
	</body>
</html>