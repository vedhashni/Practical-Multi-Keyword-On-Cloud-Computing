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
 background: linear-gradient(to bottom, #ffccff 0%, #ffccff 100%);
 height: 606px;
    }
table, th, td {
    font-family:Times new roman;
    border: 2px solid black;
    border-collapse: collapse;
    text-align: center;  
    color:black;
    font-size:20px;
    padding-bottom: 5px;
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
button{
margin-left:-180px; 
font-family:The Devil Net; 
font-size:15px;
}
 </style>
</head>
<body>
<a href="Ownermain.jsp">BACK</a>


					<%
					  HttpSession ses = request.getSession(true);
					  String user=(String)ses.getAttribute("user");										

			String name=request.getParameter("pid");
			System.out.println("Filename: "+name);
					  
String filename=""; 
String owner="";
String key="";

%>
	
 <table border="2" align="center" style="color:black; width: 90%; margin-top:10px;  background-color:transparent;">
		

	<tr>
		
	<td style="text-align:center; font-size:25px;">OWNERNAME</td>
	
	<td style="text-align:center; font-size:25px;">USERNAME</td>
	
	<td style="text-align:center; font-size:25px;">FILENAME</td>
	
	<td style="text-align:center; font-size:25px;">STATUS</td>

	</tr>
	
<%            


Connection d = Dbcon.CreateConnection();
PreparedStatement p = d.prepareStatement("SELECT * FROM fileupload WHERE filename LIKE '%"+name+"%'");
ResultSet s=p.executeQuery();

	while(s.next())
	{									
        owner=s.getString(1);
		filename=s.getString(2);
		key=s.getString(4);

	%>
<tr>
<td><%=owner%></td>
<td><%=user%></td>
<td><%=filename%></td>
<td align="left"><a href="Request?username=<%=user%>&&ownername=<%=s.getString(1)%>&&filename=<%=s.getString(2)%>&&key=<%=s.getString(4)%>"><button>SEND <br> REQUEST</button></a></td>

<%}%>
</table>   
</body>
</html>