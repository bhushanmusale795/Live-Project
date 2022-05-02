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
<title>VIEW PRODUCT DETAILS</title>
</head>
<body bgcolor="pink">
	<h1 style="color: red; background-color: yellow">VIEW PRODUCT DETAILS</h1>
	<form action="viewproduct" method="get">
		ENTER ID NUMBER:<br> <input type="text" name="id"><br>
		<input type="submit" style="background-color:#1c1b68;color:#e11715;padding:10px;margin:10px;" value="VIEW PRODUCT">
	</form>
	<br>
	<br>
	<form action="viewallproduct" method="get">
		<input type="submit" style="background-color:#1c1b68;color:#e11715;padding:10px;margin:10px;"  value="VIEW ALL PRODUCTS">
	</form>
	</body>
</html>