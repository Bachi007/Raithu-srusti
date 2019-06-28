<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"href="main.css">
<div>
<h1><center>Raithu Srusti</center></h1>

<title>Insert title here</title>
</head>

<body >
<style>
body
{
background-image:url('img/img24.jpg');
}
</style>
<center><h1>
<h2>
<a href="1 main project.html">home</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="complaint.jsp">complaint</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="fcomplaintstatus.jsp">view complaint status</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="sellcrop.jsp">sell crop</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="farmtips.jsp">farming tips</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="contact.html">contact us</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="feedback.html">feddback</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="1 main project.html">logout</a>
</h2>

</h1>
</center></div>

<% 
String fid=request.getParameter("fid");
String sid=request.getParameter("sid");



try{
	
Class.forName("oracle.jdbc.driver.OracleDriver");


Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","2505");
//statement
String squery="select * from fcomplaint where fid=? and sid=?";
PreparedStatement ps=con.prepareStatement(squery);
ps.setString(1,fid);
ps.setString(2,sid);
ResultSet res=ps.executeQuery();

if(!res.next())
{
	

%>
<center>
<h1> no complaints</h1>
</center>
<% 
}else{
	%>
	<center>
	<table width="757" border="0" align="center" cellpadding="2" cellspacing="2" bordercolor="black" bgcolor="#cc9988">
  
    <align="center"><b><u><h1>complaint status</h1></u></b>
  <br><br><br>
	 
<table border="4"><br>
 <th width="127">fid</th>
    <th width="127">sid</th>
    <th width="127">complaint</th>
    <th width="127">status</th>
</tr>
<% 
do
	{
	%>
<tr>

     <td width="127 "><%=res.getString(1)%></td>
     <td width="127"> <center> <%=res.getString(2)%> </center></td>
    <td width="127"><center><%=res.getString(3)%></center></td>
    <td width="127"><center><%=res.getString(4)%></center></td>
    
    </tr>
    <%}while(res.next()); %>
</table><br>

<%  

}
}catch(Exception e){

	System.out.println("Exception");
}



%>
<br><br><center><input type="button" value="print" onClick="window.print()"> </center>
<center>

<center>don't rise a complaint?&nbsp;<a href="complaint.html">click here</a>to complaint</center>
</body>
</html>
