<!DOCTYPE html>
<html lang="en">
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="Dbconn.Dbcon;" %>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Multipager Template- Travelic </title>
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <link href="assets/css/font-awesome.min.css" rel="stylesheet" />
    <link href="assets/css/font-awesome-animation.css" rel="stylesheet" />
    <link href="assets/css/prettyPhoto.css" rel="stylesheet" />
    <link href="assets/css/style.css" rel="stylesheet" />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    <meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Classy Register Form Responsive Widget,Login form widgets, Elements" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all">
<link href="//fonts.googleapis.com/css?family=Cuprum:400,400i,700,700i&amp;subset=cyrillic,cyrillic-ext,latin-ext,vietnamese" rel="stylesheet">
<style>
table {
    width:100%;
    margin-top: 70px;
}
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
th, td {
    padding: 5px;
    text-align: left;
}
table#t01 tr:nth-child(even) {
    background-color: #eee;
}
table#t01 tr:nth-child(odd) {
   background-color:#fff;
}
table#t01 th {
    background-color: #00000073;
    color: white;
}
</style>
    </head>
    
<body>

         <div class="navbar navbar-inverse navbar-fixed-top">
       <%
     String username=request.getSession().getAttribute("user").toString();  
       
       
       System.out.println("username---------"+username);
        
       %>
       
        <div class="container">
             <div class="navbar-collapse collapse">
            </div> 
           
        </div>
    </div>
    
  <br>
  
  <br>
  <br><br>
<div class="header">
</div>
<div class="w3-main"></div>


<table id="t01" style=" margin-top: 30px;">
  <tr style="font-size: 19px; " >

    <th style="text-align: center; font-family:Times new roman;">OWNERNAME</th> 
    <th style="text-align: center; font-family:Times new roman;">FILENAME</th>
    <th style="text-align: center; font-family:Times new roman;">KEY</th>
    <th style="text-align: center; font-family:Times new roman;">DOWNLOAD</th>
  
  </tr>
	
       <%
Connection con=Dbcon.CreateConnection();

PreparedStatement ps=con.prepareStatement("SELECT * FROM `cc08`.`response`");

ResultSet rs=ps.executeQuery();

while(rs.next())
{
	String ownername=rs.getString(1);
	String filename=rs.getString(3);
	String filekey=rs.getString(4);
	
	%>		
		
	<tr>
<td align="left" style="font-family:Times new roman; color:red;"><%=ownername%></td>
<td align="left" style="font-family:Times new roman; color:red;"><%=filename%></td>
<td align="left" style="font-family:Times new roman; color:red;"><%=filekey%></td>
       <td style="text-align: center;"><a href="Download?oname=<%=ownername%>&&filename=<%=rs.getString(3)%>&&key=<%=rs.getString(4)%>"><button>DOWNLOAD</button></a></td>
     </tr>
<%} %>
</table>
<br>
<br>
<marquee behavior="alternate" style="color:white; font-size:27px; font-family:Castellar;">NEXT USER IS WAITING.....</marquee>

	<script> 
var timeout = 30; //set time here 5sec
function timer(){ 
   if( --timeout > 0 ){ 
      document.forma.clock.value = timeout; 
      window.setTimeout( "timer()", 1000 ); 
   } 
   else{ 
     document.forma.clock.value = "Time over"; 
     ///disable submit-button etc 
   } 
   if(document.forma.clock.value=="Time over"){
     top.document.location.replace("Index.jsp"); //redirect page url
   }
}     
</script>
<form name="forma">

<% 
String clock=null;

%>

<span style="color:white; font-size:20px; font-family:Castellar;">You Will be logged out after:</span><input type="text" size='1' name="clock" value="<%=clock%>">&nbsp;&nbsp;<span style="color:white; font-size:20px; font-family:Castellar;">seconds</span>
<script>
timer();
</script></form>
    <script src="assets/plugins/jquery-1.10.2.js"></script>
    <script src="assets/plugins/bootstrap.min.js"></script>  
    <script src="assets/plugins/jquery.isotope.min.js"></script>
    <script src="assets/plugins/jquery.prettyPhoto.js"></script>    
    <script src="assets/js/custom.js"></script>
	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
		<script>$(document).ready(function(c) {
		$('.alert-close').on('click', function(c){
			$('.main-agile').fadeOut('slow', function(c){
				$('.main-agile').remove();
			});
		});	  
	});
	</script>								
</body>
</html>