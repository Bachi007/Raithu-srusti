<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String tips=request.getParameter("tips");
String desc=request.getParameter("desc");
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","2505");
	PreparedStatement ps=con.prepareStatement("insert into ftips values(?,?)");
	ps.setString(1,tips);
	ps.setString(2,desc);
	int uc=ps.executeUpdate();
	if(uc>0)
	{
		response.sendRedirect("farmingtips1.jsp?mes=tips uploaded  sucessfully....");
	}
	else
	{
		response.sendRedirect("farmingtips1.jsp?mes=tips uploaded  failed...");
	}
} 
catch(Exception e)
{
	response.sendRedirect("farmingtips1.jsp?mes=tips uploaded  sucessfully....");
}
%>

</body>
</html>