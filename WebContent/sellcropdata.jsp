<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Raithu Srusti</title>
</head>
<body>
<style>
body
{
background-image:url('img21.jpg');
}
</style>
<%
String fid=request.getParameter("fid");
String fname=request.getParameter("fname");
String cname= request.getParameter("cname");
String season=request.getParameter("season");
String quant=request.getParameter("quant");
String price=request.getParameter("price");
String file=request.getParameter("fimage");
try
{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:ORCL1","scott","tiger");
		String sqlQuery="insert into sellcrop values(?,?,?,?,?,?,?)";
		PreparedStatement pst = con.prepareStatement(sqlQuery);
		pst.setString(1,fid);
		pst.setString(2,fname);
		pst.setString(3,cname);
		pst.setString(4,season);
		pst.setString(5,quant);
		pst.setString(6, price);
		pst.setString(7,file);
		int uc=pst.executeUpdate();
		con.commit();
		con.close();
		if(uc>0)
		{
		response.sendRedirect("sellcrop.jsp?mes=your are uploaded successfully");
		}
		else
		{
			response.sendRedirect("sellcrop.jsp?mes=your are uploading failed");
		}
			
}
catch(Exception e)
{
System.out.println("error");	
response.sendRedirect("sellcrop.jsp?mes=your are uploading failed");	
}


%>






</body>
</html>