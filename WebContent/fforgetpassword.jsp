<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"href="main.css">
<div>
<h1><center>Raithu Srusti</center></h1>
<body >

<style>
body
{
background-image:url('img24.jpg');
}
</style>


<script>
function check()
{

	if(document.getElementById('sid').value=="")
	{
	alert("pls enter supplier id");
	document.getElementById('sid').style.bordercolor="red";
	return false;
	}

	if(document.getElementById('pswd').value=="")
	{
	alert("pls enter pswd");
	document.getElementById('pswd').style.bordercolor="red";
	return false;
	}
}
</script>


<center><h1>
<a href="1 main project.html">home</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="complaint.jsp">complaint</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="feedback.html">feed back</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="about us.html">about us</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="contact.html">contact</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</h1>
</center></div>

<form action="fforgetpassword1.jsp" method="Get"  onsubmit=" return check()">

<center>
<h1><u> get farmer  login details</u></h1><br></center><center>
<table><tr><td>
farmer - id:</td><td><input type="text box" id="sid" placeholder="enter farmer id" name="fid" ></input></td><br>
<tr><td>farmer name:</td><td><input type="tex box"  id="sname" placeholder=" enter farmer name" name="fname"></td>


</table>
</center>
<p>
<center>
<input type="submit" value="submit">&nbsp;&nbsp;
<input type="reset" value="cancel">
<p>

<%
String mes=request.getParameter("mes");
if( mes==null)
{
	
}
else
{
%>
<h1><%= mes %></h1><%} %></p>

<center>do you have account?&nbsp;<a href="flogin.jsp">click  here to login</a></center>
 </center>
<center>don't have account?&nbsp;<a href="farreg.html">register here</a></center>
</form>
</body>
</html>
