<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ page import="com.bhushan.ProjectManagement.entity.Product"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<style>
body{
        background-color : #f376f4;
    }
 h1 {
       color:#2e45e4;
    } 
    th{
               color:#2e45e4;
            }  
     td{
               color:#ed2710;
            } 
      table 
             {
               border-color:#c7c94c;
              }   
</style>

<meta charset="ISO-8859-1">
<title>DISPLAY PRODUCT</title>
</head>
<body>
	<div align="center">
		<h1>PRODUCT DETAILS</h1>
		<%
	String opt = (String)request.getAttribute("option");
	if(opt.equals("view"))
	{
		boolean flag = (Boolean)request.getAttribute("flag");
		if(flag)
		{
			Product p = (Product)request.getAttribute("result");
			out.println("<table border="+1+"px> <tr> <th> ID</th> <th> Product Name</th> <th>Price</th><th>Quantity</th></tr>");
			out.println("<tr><td>"+p.getId()+"</td><td>"+p.getName()+"</td><td>"+p.getPrice()+"</td><td>"+p.getQuantity()+"</td></tr></table>");	
		}
		else
		{
			out.println("<p>Stock Not Available</p>");
		}
	}
	else if(opt.equals("viewall"))
	{
		List<Product> pl = (List<Product>)request.getAttribute("productlist");
                                out.println("<table border="+1+"px> <tr> <th> ID</th> <th> Product Name</th> <th>Price</th><th>Quantity</th></tr>");
		for(Product p:pl)
		{
		       out.println("<tr><td>"+p.getId()+"</td><td>"+p.getName()+"</td><td>"+p.getPrice()+"</td><td>"+p.getQuantity()+"</td></tr>");		
		}
		 out.println("</table>");
	}
	%>
	</div>
</body>
</html>