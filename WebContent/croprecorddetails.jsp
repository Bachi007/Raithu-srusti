<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="java.sql.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"href="main.css">
<div>
<h1><center>Raithu srusti</center></h1>
<body >
<style>
body
{
background-image:url('img31.jpg');
}
</style>
  <center><h1>
  <a href="1 main project.html">home</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="postadd.html">postad</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="croprec.jsp">crop received</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="slogin.html">logout</a></h1><p>
  </center>  </div>
	
<center>
<h1><u> farmer details</u></h1>
</center>

<center>

<span align="center"></span>
<% 
String fid=request.getParameter("fid");

try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","2505");
	
	String sqlQuery="select * from freg where fid=?";
	PreparedStatement pst = con.prepareStatement(sqlQuery);
	pst.setString(1,fid);
	ResultSet rs=pst.executeQuery();
		
	if(!rs.next())
{
	%>
	<font color='red' size='6'><center> no farmers recoreded</center></font>


<% 
}else{
	%>
	<center>
	<table width="757" border="0" align="center" cellpadding="2" cellspacing="2" bordercolor="black" bgcolor="#cc9988">
  <align="center"><b></b>
  </tr><br><br><br>
	 
<table border="4"><br>
 <th width="127">former id</th>
 <th width="127">formername</th>
   <th width="127">Address</th>
   <th width="127">Mobile no</th>
   <th width="127">email id</th> 
    
 </tr>
<% do
	{
	%>
	<tr>
     <td width="127"> <center> <%=rs.getString(1)%> </center></td>
    <td width="127"><center><%=rs.getString(2)%></center></td>
    <td width="127"><center><%=rs.getString(3)%></center></td>
    <td width="127"><center><%=rs.getString(4)%></center></td>
    <td width="127"><center><%=rs.getString(6)%></center></td>    
    
     </tr>
    
    

<%}while(rs.next()); %>
</table><br>
<%  

}
}catch(Exception e)
{
	System.out.println("Exception");
}

%>

<center>
<%
String mes=request.getParameter("mes");
if( mes==null)
{
}
else
{
%>
<h1><%= mes %></h1><%} %>

</body>
</html>