<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"href="main.css">
<div>
<h1><center>Raithu Srusti</center></h1>
</head>
<body >
<style>
body
{
background-image:url('img25.jpg');
}
</style>

<script>
function check()
{

if(document.getElementById('aid').value=="")
{
alert("pls enter admin id");
document.getElementById('aid').style.bordercolor="red";
return false;
}

if(document.getElementById('pswd').value=="")
{
alert("pls enter password");
document.getElementById('pswd').style.bordercolor='red';
return false;
}
}
</script>

<center><h1>
<a href="1 main project.html">home</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="farmerlogin.html">complaint</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="feedback.html">feed back</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="about us.html">about us</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="contact.html">contact</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</h1>
</center></div>

<form action="adminvalidation.jsp" method="Get" onsubmit=" return check()">
<center>
<h1><u>admin login</u></h1><br>
</center>
<center>
<table >
<tr><td>
admin - id:</td><td><input type="text box" id="aid" name="aid" placeholder="admin id"></input></td><br><p>
<tr><td>pass word:</td><td><input type="password" name="pswd" id="pswd" placeholder="password"></td></input>
</table>
</center>
<p>
<center>
<input type="submit" value="submit"></a>&nbsp;&nbsp;
<input type="reset" value="cancel"></a>
</center><p>
</form>
<center>
<%
String mes=request.getParameter("mes");
if( mes==null)
{
	
}
else
{
%>
<h1><%= mes %></h1><%} %></p>
</center>
</body>
</html>
