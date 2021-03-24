<%@page import=" Dbconn.Dbcon"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="icon" href="web1.jpg" type="image/gif" sizes="20X20">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <style>
    body
    {
 background: linear-gradient(to bottom, #ffccff 0%, #99ff99 100%);
 background-attachment: fixed;
 height: 606px;
    }
table, th, td {
    font-family:Times new roman;
    border: 2px solid black;
    border-collapse: collapse;
    text-align: center;  
    color:black;
    font-size:20px;
}

     a {
  font-size:34px;
  font-family:Times new roman;
  display: block;
  color: black;
  text-align: center;
  margin-left:80%;
  margin-top: 3%;
}
    </style>
</head>
<body>
<a href="Ownermain.jsp">BACK</a>


					<%
														

String filename=""; 
String encrypt="";

%>
	
 <table border="2" align="center" style="color:black; width: 90%; margin-top:10px;  background-color:transparent;">
		

	<tr>
		
	<td style="text-align:center; font-size:25px;">FILENAME</td>
	
	<td style="text-align:center; font-size:25px;">ENCRYPTED DATA</td>

	</tr>
	
<% 


Connection d = Dbcon.CreateConnection();
PreparedStatement p = d.prepareStatement("SELECT * FROM cc08.fileupload");
ResultSet s=p.executeQuery();

	while(s.next())
	{									

		filename=s.getString(2);
		encrypt=s.getString(7);

	%>
<tr>
<td><%=filename%></td>
<td><%=encrypt%></td>

<%}%>
</table>   
</body>
</html>