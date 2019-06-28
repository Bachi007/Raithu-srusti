<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"href="main.css">
<div>
<h1><center>Raithu Srusti</center></h1>

<title>Insert title here</title>
</head>

<body >
<style>
body
{
background-image:url('img/img31.jpg');
}
</style>
<center><h1>
<a href="1 main project.html">home</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="admin.jsp">view complaints</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="admin1.jsp">user details</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="formingtips1.jsp">farming tips</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="1 main project.html">logout</a></h1><p>
</center>
</div>

<center>
<h1><u> tips for farmer</u></h1>

</center>
<form action="farmingtips2.jsp" method="Get">
<center>
<table>
<tr><th>tips for farmer</th><th>:</th><td><input type="text box" name="tips" placeholder="enter tips name"></td></tr>
<tr><th>tip description</th><th>:</th><td><textarea name="desc" rows="5" cols="60">enter description</textarea></td></tr>
<tr><th></th><th></th><td> <input type="submit" value="update tips"> </td></tr>
</table></center>
</form>
<center>

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

</center>
</body>




