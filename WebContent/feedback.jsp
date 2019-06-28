<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String id=request.getParameter("id");
String type=request.getParameter("usertype");
String feedback=request.getParameter("feedback");
String des=request.getParameter("des");
String rating=request.getParameter("rating");

try
{
Class.forName("oracle.jdbc.driver.OracleDriver");


Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","2505");
//statement
String squery="insert into feedback values(?,?,?,?,?)";
PreparedStatement ps=con.prepareStatement(squery);
ps.setString(1,id);
ps.setString(2,type);
ps.setString(3,feedback);
ps.setString(4,des);
ps.setString(5,rating);
int uc=ps.executeUpdate();
if(uc>0)
{
	response.sendRedirect("feedthank.html");
}
else
{
	response.sendRedirect("feedback1.jsp?mes= feddbck upload file....");
}
}
catch(Exception e)
{
	System.out.println("exception");
}
%>
</body>
</html>