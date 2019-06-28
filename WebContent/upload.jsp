<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
    <%@ page import="java.lang.AbstractMethodError" %>
    <%@ page import="java.io.*" %>
    <%@ page import="javax.servlet.http.*" %>
    <%@ page import="javax.servlet.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
FileInputStream input=null;
	String img=request.getParameter("file");
	try
	{	
		File thefile=new File(img);
	input=new FileInputStream(thefile);
	System.out.println("the upload path="+thefile.getAbsolutePath());
		Class.forName("oracle.jdbc.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","2505");
		PreparedStatement ps=con.prepareStatement("insert into file1 values(?)");
		
		ps.setBinaryStream(1,input);
		System.out.println("the upload path="+thefile.getAbsolutePath());
		ps.executeUpdate();
		
	}
	
	catch(Exception e)
	{
		
		System.out.println(e);
	}
%>

</body>
</html>