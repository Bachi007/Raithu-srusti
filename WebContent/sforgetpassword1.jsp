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
<style>
body
{
background-image:url('img27.jpg');
}
</style>
<%
String sid=request.getParameter("sid");
String sname=request.getParameter("sname");
String pswd;
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","2505");
	String sqlQuery="select pswd from sreg where sid='"+sid+"' and sname='"+sname+"'";
Statement st=con.createStatement();
	ResultSet rs=st.executeQuery(sqlQuery);
	if(rs.next())

		{
		pswd=rs.getString(1);
		response.sendRedirect("sforgetpassword.jsp?mes=yout password is"+pswd);
		}
	else{
		response.sendRedirect("sforgetpassword.jsp?mes=please enter valid details");
	}
}
catch(Exception e)
{
	
}
%>

</body>
</html>