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
background-image:url('img24.jpg');
}
</style>
<center><h1>
<a href="1 main project.html">home</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="admin.jsp">view complaints</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="admin1.jsp">user details</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="farmtips.jsp">farming tips</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="1 main project.html">logout</a></h1><p>
</center>
</div>

<center>
<h1><u> farmer details</u></h1>
</center>

<center>

<span align="center"></span>
<% 

try{
Class.forName("oracle.jdbc.driver.OracleDriver");


Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","2505");
//statement
Statement ps=con.createStatement();
ResultSet res=ps.executeQuery("select * from sreg");
if(!res.next())
{
	%>
	<font color='red' size='6'><center> no farmers recoreded</center></font>


<% 
}else{
	%>
	<center>
	<table width="757" border="0" align="center" cellpadding="2" cellspacing="2" bordercolor="black" bgcolor="#cc9988">
  <align="center"><b></b>
  </tr><br><br><br>
	 
<table border="4"><br>
 <th width="127">sid</th>
    <th width="127">suppliername</th>
    <th width="127">address</th>
    <th width="127">mobile no</th>
    <th width="127">pswd</th>
    <th width="127">email id</th>
</tr>
<% do
	{
	%>
<tr>
     <td width="127 "><%=res.getString(1)%></td>
     <td width="127"> <center> <%=res.getString(2)%> </center></td>
    <td width="127"><center><%=res.getString(3)%></center></td>
    <td width="127 "><%=res.getString(4)%></td>
    <td width="127 "><%=res.getString(5)%></td>
    <td width="127 "><%=res.getString(6)%></td>
       
     
    </tr>
    
    

<%}while(res.next()); %>
</table><br>
<%  

}
}catch(Exception e){
	out.println("<font color='red' size='7'><center> check your details</center></font>");
	System.out.println("Exception");
}

%>

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

<center>don't rise a complaint?&nbsp;<a href="complaint.html">click here</a>to complaint</center>
</body>
</html>


