<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="java.sql.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"href="main.css">
<div>
<h1><center>Raithu Srusti</center></h1>
<body >
<style>
body
{
background-image:url('31.jpg');
}
</style>
  <center><h1>
  <a href="1 main project.html">home</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="postadd.html">postad</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="croprec.jsp">crop received</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="slogin.html">logout</a></h1><p>
  </center>  </div>
	
<center>
<h1><u>crop received details</u></h1>
</center>

<center>

<span align="center"></span>
<% 

try{
Class.forName("oracle.jdbc.driver.OracleDriver");


Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","2505");
//statement
Statement ps=con.createStatement();
ResultSet res=ps.executeQuery("select * from sellcrop");
if(!res.next())
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
 <th width="127">fid</th>
 <th width="127">cropname</th>
     <th width="127">crop season</th>
     <th width="127">quantity (in kg)</th>
    <th width="127">rupees (per kg)</th>
    <%//<th width="127">crop image</th> %>
    <th width="127">for view details</th>
    
</tr>
<%do 
	{
	%>
	<form action="croprecorddetails.jsp" methos="Get">
<tr>
     <td width="127 "><%=res.getString(1)%></td>
     <td width="127"> <center> <%=res.getString(3)%> </center></td>
    <td width="127"><center><%=res.getString(4)%></center></td>
    <td width="127"><center><%=res.getString(5)%></center></td>
    <td width="127"><center><%=res.getString(6)%></center></td>
    <%//<td width="127"><center><%=res.getString(7)%></center></td>
     <td width="127"><center><input type="submit" value="view details"></center></td>
     
     
     </tr>
      <input type="hidden" name="fid" value="<%=res.getString(1) %>" >
    </form>
    

<%}while(res.next()); %>
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