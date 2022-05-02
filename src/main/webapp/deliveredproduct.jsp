<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
      form{
            color:blue;
          }
</style>
<meta charset="ISO-8859-1">
<title>DELIVERED PRODUCT DETAILS</title>
</head>
<body bgcolor="pink">
	<h1 style="color: red; background-color: yellow">DELIVERED PRODUCT
		DETAILS</h1>
	<form action="deliveredproduct" method="get">
		ENTER PRODUCT ID NUMBER:<br> <input type="text" name="id"><br>
        ENTER QUANTITY TO DELIVERED : <br> <input type="text" name="quantity"><br>
		<input type="submit" style="background-color:#1c1b68;color:#e11715;padding:10px;margin:10px;" value="DELIVERED PRODUCT">
	</form>
	<br>
	</body>
</html>