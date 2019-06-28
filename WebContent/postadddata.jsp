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
background-image:url('img14.jpg');
}
</style>
 <center><h1>
 <a href="1 main project.html">home</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="postadd.jsp">postadd</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="croprec.html">crop received</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="slogin.html">logout</a></h1><p>
   </center> </div>
   <%
 

   String sid= request.getParameter("sid");
   String sname=request.getParameter("sname");
   String cname=request.getParameter("cname");
   String rquant=request.getParameter("rquant");

   try
   {
   		Class.forName("oracle.jdbc.driver.OracleDriver");
   		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","2505");
   		String sqlQuery="insert into padd values(?,?,?,?)";
   		PreparedStatement pst = con.prepareStatement(sqlQuery);
   		pst.setString(1,sid);
   		pst.setString(2,sname);
   		pst.setString(3,cname);
   		pst.setString(4,rquant);
   		int uc=pst.executeUpdate();
   		System.out.println("the number of are inserted="+uc);
   		con.commit();
   		if(uc>0)
   		{
   			response.sendRedirect("postadd.jsp?mes=you are posted sucessfully.....");
   		}
   		else
   		{
   			response.sendRedirect("postadd.jsp?mes=you are posted failed.....");
   		}
   	
   		
   		con.close();
   		//Statement st=con.createStatement();
   		//ResultSet rs=st.executeQuery("select * from emp");	
   		//con.close();
   }
   catch(Exception e)
   {
	   response.sendRedirect("postadd.jsp?mes=you are posted failed.....");
   }
   %>

   </body>
   </html>



   
