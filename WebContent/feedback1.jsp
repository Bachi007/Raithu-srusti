<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"href="main.css">
<div>
<h1><center>Raithu Srusti</center></h1>

<center>
<h2>
<a href="1 main project.html">home</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="complaint.jsp">complaint</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="fcomplaintstatus1.jsp">view complaint status</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="sellcrop.jsp">sell crop</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="farmtips.jsp">farming tips</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="contact.html">contact us</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="feedback.html">feddback</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="1 main project.html">logout</a>
</center>
</div></hr>
</head>
<body ><script>
function check()
{

if(document.getElementById('uname').value=="")
{
alert("pls enter username");
document.getElementById('uname').style.bordercolor="red";
return false;
}
if(document.getElementById('fback').value=="")
{
alert("pls enter feedback");
document.getElementById('fback').style.bordercolor='red';
return false;
}
if(document.getElementById('dis').value=="")
{
alert("pls enter description");
document.getElementById('dis').style.bordercolor='red';
return false;
}

}
</script>

<style>
body
{
background-image:url('31.jpg');
}
</style>
<center>
<h1><u>feed back</u></h1>
<form action="feedback.jsp"onsubmit="return check()">
<table><tr><th>user name :</th><td><input type="text box" name="id" id="uname"placeholder="user name"></td></tr></input><br>



<tr><th>user type:</th><td><select name="usertype">
<option value="farmer">farmer</option>
<option value="supplier">supplier</optipon>
</select></td></tr><br>



<tr><th>feedback :</th><td><input type="text box" name="feedback"id="fback"placeholder="feedback"></td></tr></input><br>
<tr><th>discription:</th><td><input type="text box" name="des"id="dis"placeholder="description"></td></tr></input><br>
</center><center>
<tr><th>your rating:</th><td><input type="radio"name="rating" value="poor">1</input>
<input type="radio"name="rating" value="not bad">2</input>
<input type="radio"name="rating" value="average">3</input>
<input type="radio"name="rating" value="good">4</input>
<input type="radio"name="rating" value="exellent">5</input></td></tr></table>
</center>
<center>
<input type="submit" value="submit">&nbsp;&nbsp;
<input type="reset" value="cancel"></a>
</center>
</font>
</form>

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
</center>

</body>
</head>
</html>
