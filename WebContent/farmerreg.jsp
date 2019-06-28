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
background-image:url('img/img24.jpg');
}
</style>
<%
String fid= request.getParameter("fid");
String fname=request.getParameter("fssname");
String pa=request.getParameter("pa");
String mbno=request.getParameter("mbno");
String pswd=request.getParameter("pswd");
String eid=request.getParameter("eid");
try
{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:ORCL1","scott","tiger");
		String sqlQuery="insert into freg values(?,?,?,?,?,?)";
		PreparedStatement pst = con.prepareStatement(sqlQuery);
		System.out.println("ji");
		double mbno1=Double.parseDouble(mbno);
		System.out.println("ji");
		pst.setString(1,fid);
		pst.setString(2,fname);
		pst.setString(3, pa);
		pst.setDouble(4,mbno1);
		pst.setString(5,pswd);
		pst.setString(6,eid);
		int uc=pst.executeUpdate();
		System.out.println("the number of are inserted="+uc);
		con.commit();
		System.out.println("hi11");
		
		con.close();
		response.sendRedirect("addlogin.html");
}
catch(Exception e)
{
System.out.println("error");	
response.sendRedirect("farreg.jsp?mes=registration failed..");
	
}


%>

</body>
</html>