<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"href="main.css">
<div>
<h1><center>Raithu Srusti</center></h1>
</head>
<body>
<style>
body
{
background-image:url('img24.jpg');
}
</style>

<script>
function check()
{

if(document.getElementById('fid').value=="")
{
alert("pls enter farmer id");
document.getElementById('fid').style.bordercolor="red";
return false;
}


if(document.getElementById('sid').value=="")
{
alert("pls enter supplier id");
document.getElementById('sid').style.bordercolor="red";
return false;
}

if(document.getElementById('complaint').value=="")
{
alert("pls enter farmer complaint");
document.getElementById('complaint').style.bordercolor="red";
return false;
}
}
</script>



 <center>
   <h2>
<a href="1 main project.html">home</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="complaint.jsp">complaint</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="fcomplaintstatus.jsp">view complaint status</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="sellcrop.jsp">sell crop</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="farmtips.jsp">farming tips</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="1 main project.html">logout</a><p>
</h2>
</center>
</div>
<form action="fcomplaint.jsp" method="Get"  onsubmit=" return check()">
<center>
<h1><u>farmer complaint form</u></h1><br><font size="4">
farmerid:<input type="text box" name="fid" id="fid" placeholder="enter the farmer id"></input><br>
suplier id:<input type="text box" name="sid" id="sid" placeholder="enter the suplier id"></font></br> 
complaint:<input type="text box" name="complaint" id="complaint" placeholder="enter the farmer complaint"></input><br>
</center>
<p>
<center>
<input type="submit" value="submit">&nbsp;&nbsp;
<input type="reset" value="reset">
<%
String mes=request.getParameter("mes");
if( mes==null)
{
}
else
{
%>
<h1><%= mes %></h1><%} %>


</center><p>
</font>
</form>
<center>already rise complaint?&nbsp;<a href="complaintstatus.html">click here</a>to check status</center>
</body>
</html>
