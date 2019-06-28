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
background-image:url('img/img26.jpg');
}
</style>
<%
String aid=request.getParameter("aid");
String pswd=request.getParameter("pswd");
String pswd1="bhaskar";
String aid1="007";
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","2505");
	String sqlQuery="select * from admin where aid='"+aid1+"' and pswd='"+pswd1+"'";
Statement st=con.createStatement();
	ResultSet rs=st.executeQuery(sqlQuery);
	if(rs.next())

		{
		response.sendRedirect("admin1.jsp");
		}
	else{
		response.sendRedirect("adminlog.jsp?mes=login failed please enter valid details");
	}
}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("adminlog.jsp?mes=login failed please enter valid detailsssssss");
}
%>

</body>
</html>