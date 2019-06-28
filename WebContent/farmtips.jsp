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
background-image:url('img/31.jpg');
}
</style>
   <center>
   <h2>
<a href="1 main project.html">home</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="complaint.jsp">complaint</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="fcomplaintstatus.jsp">view complaint status</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="sellcrop.jsp">sell crop</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="farmtips.jsp">farming tips</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="1 main project.html">logout</a><p>
</h2>
</center>
</h2>
</center>   
	</div></hr>
	
	<center><h1><u>farming tips</u></h1></center><p>
	<%
	try
	{

		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl1","scott","tiger");
		//PreparedStatement ps=con.prepareStatement("select * from ftips");
		
		Statement st=con.createStatement();
		
		ResultSet rs=st.executeQuery("select * from ftips");
		
		while(rs.next()) 
		{
			%>
			<center><h3><%=rs.getString(1) %>...</h3></center>
			<p><h4><center><%=rs.getString(2) %></h4></p>
			<%
		
		}
	}
	catch(Exception e)
	{
		
		System.out.println(e);
	}
	
	%>
	
<p>
<center>

<center><u><h2>Farm Buildings and Grounds</h2></u></center><h3>
Perform a safety check of buildings and grounds for obvious fire hazards and hazardous materials.
Store farm chemicals securely where kids and animals can't access them. Then make a list of the chemicals for firefighters in the event of a fire on your property.
Keep weeds and grasses trimmed so tractor and ATV drivers won't run into hidden obstacles and holes that can cause the vehicle to overturn.
Maintain clean and neat work areas with tools stored out of the way.
Establish a safety boundary around gas and diesel fuel tanks and other flammable substances.</h3>
<center><u><h2>Personal Farm Safety</h2></u></center><h3>
Don't wear loose clothing around equipment or work areas.
Use safety equipment the way it was intended. That means appropriate gloves, hearing protection and safety eyewear, not to mention face masks and respirators when working in dusty conditions.
Always have a helper nearby when entering grain bins, breeding pens or other high-risk areas.
Discuss safety concerns with children as you explain safe handling and operating procedures. Practice what you preach, and they will practice it, too.</h3>
<center><u><h2>Tractors and Implements</h2></u></center><h3>
Keep tractor roll-over protection structures in place. If you have a tractor without one, get it installed today ... and while you're at it, buckle your seat belt.
Prohibit riders on tractor fenders, hitches, attachments or implements.
Shield all PTO-powered equipment drive shafts, and keep kids at a distance from them.
Never start or run gas or diesel engines in an enclosed area without being assured of good ventilation.
Outfit tractors and farm trucks with fire extinguishers and first aid kits.
Never exit a tractor or truck without placing it in park or engaging the emergency brakes.
Never leave running power equipment unattended.
Check and maintain equipment, especially hydraulic hoses and electrical cables showing cracks or other signs of wear.</h3>
<center><u><h2>Livestock</h2></u></center><h3>
Keep animals in good health. An animal in pain and discomfort can react aggressively.
Treat farm animals with respect. If understand their behavior, you’ll be ready for their actions.
Take extra care with farm animals at breeding and birthing, and you won’t have to outrun a sow like I did.</h3>


</body>
</head>
</html>
