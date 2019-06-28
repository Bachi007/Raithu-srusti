<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
 <center><h1>
 <a href="1 main project.html">home</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="postadd.jsp">postadd</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="croprec.html">crop received</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="slogin.html">logout</a></h1><p>
   </center> </div>
<%
String fid=request.getParameter("fid");
String status=request.getParameter("status");


try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl1","scott","tiger");
PreparedStatement ps=con.prepareStatement("update fcomplaint set status=? where fid=?");
ps.setString(1,status);
ps.setString(2,fid);
int uc=ps.executeUpdate();
if(uc>0)
{
response.sendRedirect("admin.jsp?mes="+uc+"record is updated");
}
else
{
	response.sendRedirect("admin.jsp?mes=update faile....");
}
}
catch(Exception e)
{

}

%>
