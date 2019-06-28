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

	if(document.getElementById('sname').value=="")
	{
	alert("pls supplier name");
	document.getElementById('sname').style.bordercolor="red";
	return false;
	}
	
	if(document.getElementById('cname').value=="")
	{
	alert("pls crop name");
	document.getElementById('cname').style.bordercolor="red";
	return false;
	}
	
	if(document.getElementById('rquant').value=="")
	{
	alert("pls supplier name");
	document.getElementById('rquant').style.bordercolor="red";
	return false;
	}
}
</script>



 <center><h1>
 <a href="1 main project.html">home</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="postadd.jsp">postadd</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="croprec.jsp">crop received</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="slogin.html">logout</a></h1><p>
   </center> </div>
	
	<form action="postadddata.jsp"method="Get" onsubmit=" return check()">
<center>
<h1><u>post ad</u></h1>
<table>
<tr>
<tr>

<td>supplier id:</td><td><input type="textbox" name="sid" id="sid" placeholder="enter the supplier id"></input></td></tr>
<tr>
<td>supplier name:</td><td><input type="textbox" name="sname" id="sname" placeholder=" enter the supplier name"></input></td></tr>
<tr>
<td>crop name:</td><td><input type="textbox" name="cname" id="cname" placeholder="enter the crop name"></input></td></tr>
<td>req quantity:</td><td><input type="textbox" name="rquant" id="rquant" placeholder="enter required quantity"></input></td><td>in kgs.</td></tr>


<tr><td><input type="submit" value="submit"></td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<td><input type="reset" value="reset"></td></tr>
</table>
</center>
</center>
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
<h1><%= mes %></h1><%} %>


</center>

</body>
</html>