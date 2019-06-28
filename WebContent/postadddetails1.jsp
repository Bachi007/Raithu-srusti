<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
<link rel="stylesheet"href="main.css">
<div>
<h1><center>Raithu Srusti</center></h1>
</head>
<body >
<style>
body
{
background-image:url('31.jpg');
}
</style>
<script>
function check()
{

if(document.getElementById('fid').value=="")
{
alert("pls enter farmer id");
document.getElementById('fid').style.bordercolor="red";
return false;
}

if(document.getElementById('fname').value=="")
{
alert("pls enter the former name");
document.getElementById('fname').style.bordercolor='red';
return false;
}

if(document.getElementById('cname').value=="")
{
alert("pls enter the crop name");
document.getElementById('cname').style.bordercolor='red';
return false;
}

if(document.getElementById('quant').value=="")
{
alert("pls enter the quantity");
document.getElementById('quant').style.bordercolor='red';
return false;
}

if(document.getElementById('price').value=="")
{
alert("pls enter the price ");
document.getElementById('price').style.bordercolor='red';
return false;
}


}
</script>
  <center>
   <h2>
<a href="1 main project.html">home</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="complaint.jsp">complaint</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="fcomplaintstatus.jsp">view complaint status</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="sellcrop.jsp">sell crop</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="farmtips.jsp">farming tips</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="contact.html">contact us</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="feedback.html">feddback</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="1 main project.html">logout</a><p>
</h2>
</center> </div>


<span align="center"> <h2><center>requirement crop details</h2></span>
<% 

try{
Class.forName("oracle.jdbc.driver.OracleDriver");


Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl1","scott","tiger");
//statement
Statement ps=con.createStatement();
ResultSet res=ps.executeQuery("select * from padd");
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
 <th width="127">Supplier id</th>
 <th width="127">Supplier name</th>
 <th width="127">cropname</th>
   <th width="127">quantity (per kg)</th>
   <th width="127">view details</th>
</tr>
<% while(res.next())
	{
	%>
<form action="postaddcropformerdetails.jsp" method="Post">
<tr>
     <td width="127 "><%=res.getString(1)%></td>
     <td width="127"> <center> <%=res.getString(2)%> </center></td>
    <td width="127"><center><%=res.getString(3)%></center></td>
     <td width="127 "><%=res.getString(4)%></td>
     <td width="127"> <input type="submit" value="view details"></td>
      </tr>
      <input type="hidden" name="sid" value="<%=res.getString(1) %>">
      
</form>
<%} %>

</table><br>
<%  

}
}catch(Exception e)
{
	System.out.println("Exception");
	response.sendRedirect("postadddetails.jsp?mes=no posted records..");
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