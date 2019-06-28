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
background-image:url('img18.jpg');
}
</style>
<%
String fid= request.getParameter("fid");
String sid=request.getParameter("sid");
String complaint=request.getParameter("complaint");
try
{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","2505");
		String sqlQuery="insert into fcomplaint values(?,?,?,?)";
		PreparedStatement pst = con.prepareStatement(sqlQuery);
		pst.setString(1,fid);
		pst.setString(2,sid);
		pst.setString(3, complaint);
		pst.setString(4,"notverified");
		int uc=pst.executeUpdate();
		System.out.println("the number of are inserted="+uc);
		con.commit();
		System.out.println("hi11");
		
		con.close();
		response.sendRedirect("complaint.jsp?mes=complaint uploaded sucessfully....");
}
catch(Exception e)
{
System.out.println("error");	
response.sendRedirect("complaint.jsp?mes=commplaint upload is fail....");	
}


%>

</body>
</html>