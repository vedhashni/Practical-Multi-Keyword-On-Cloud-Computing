  <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.util.*" %>
 <%@ page import="java.sql.*" %>
 <%@ page import="Dbconn.Dbcon" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AdminInbox</title>
<style>
body
{
    background: url(images/000.jpg);
    background-repeat: no-repeat;
    background-position: center;
    background-size: auto;
}

table, th, td {
    border: 2px dotted black;
    border-collapse: collapse;
    background-color: wheat;
}
caption
{
color:white;
}
th {
    padding: 10px;
    text-align: center;
    color:#2e09f7;
}
 td {
    padding: 20px;
    text-align: center;
    color:black;
}
</style>
</head>
<body>

<div id="container">

<div id="header">
<h1 align="center" style:"font-color=white">INBOX</h1>
<div id="back">
</div>
</div>

<div id="section">

<table width="100%;"><br><br><br>
<tr>

    <th align="center">Username</th>
    <th align="center">Owername</th>
    <th align="center">Filename</th> 
    <th align="center">Accept</th>
   <th align="center">Reject</th>
    </tr>
    
   <%
   String Username="";
   String ownername="";
   String Filename="";
    String key=""; 
  
   
   Connection con=null;
   con=Dbcon.CreateConnection();
   PreparedStatement ps=con.prepareStatement("SELECT fileowner, fileuser, filename, filekey FROM cc08.request where status='Request'");
   ResultSet rs=ps.executeQuery();
   
   while(rs.next())
   {
	   Username=rs.getString(1);
	   ownername=rs.getString(2);
	   Filename=rs.getString(3);
	   key=rs.getString(4); 
   %>
   
   <tr>
   <td><%=Username%></td>
   <td><%=ownername%></td> 
   <td><%=Filename%></td>
   <td><a href="Accept?Name=<%=Username%>&&ownername=<%=rs.getString(2)%>&&Filename=<%=rs.getString(3)%>&&key=<%=rs.getString(4)%>&&Status=Accept"><input style="width:100px; background:#7bf774; color:black;" type="submit" value="ACCEPT"/></a></td>
   <td><a href="Accept?Name=<%=Username%>&&ownername=<%=rs.getString(2)%>&&Filename=<%=rs.getString(3)%>&&key=<%=rs.getString(4)%>&&Status=Reject"><input style="width:100px; background:#7bf774; color:black;" type="submit" value="TERMINATE"/></a></td>
   </tr>
     
<%} %>
</table>
</div>
</div>
</body>
</html>