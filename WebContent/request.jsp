<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="Dbconn.Dbcon" %>
<!DOCTYPE html>
<html>
<head>
<title>CC08	</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Infirmary Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css4/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="css4/jquery-ui.css" />
<link href="css4/popuo-box.css" rel="stylesheet" type="text/css" media="all"/>
<link href="css4/style.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js3/jquery-2.1.4.min.js"></script>
<script type="text/javascript" src="js3/numscroller-1.0.js"></script>
<link href='//fonts3.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
<link href='//fonts3.googleapis.com/css?family=Viga' rel='stylesheet' type='text/css'>
		<script type="text/javascript" src="js3/move-top.js"></script>
		<script type="text/javascript" src="js3/easing.js"></script>
		<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
		</script>
	<script src="js3/jquery-ui.js"></script>
		<script>
			$(function() {
				$( "#datepicker,#datepicker1" ).datepicker();
			});
		</script>
	<script src="js3/responsiveslides.min.js"></script>		
<link href="css4/animate.css" rel="stylesheet" type="text/css" media="all">
<script src="js3/wow.min.js"></script>
	<script>
		 new WOW().init();
	</script>
</head>
<style>
table, th, td {
    border-collapse: collapse;
    border:1px solid white;
}
th, td {
    padding: 10px;
    text-align: left;   
    background-color:blue; 
}
</style>
<body>
<div class="header-bottom ">
		<div class="container">
			<nav class="navbar navbar-default"></nav>
				<div class="navbar-header">
					<div class="logo grid">
						<div class="grid__item color-3">
							<h1 style="text-align:center"><a class="link link--nukun" href="Index.jsp"><i></i>C<span>C</span>08</a></h1>
						</div>
					</div>
				</div>
			</nav>
		</div>
	</div>
<div class="banner">
		<div  id="top" class="callbacks_container">
			<ul class="rslides" id="slider3">
					<div class="banner1">
						<div class="container">
							<div class="banner-info" align="center">
							<table>
					 <table  style="margin-left: 100px; padding-left: 60px; width:50%;color:white;text-align:center;    font-family: initial;">
			<tr>
			<br><br><br><br><br><br><br><br><br>
<th  align="center"><font color="#FF33E3" >USERNAME</font></th>
<th  align="center"><font color="#FF33E3" >OWNERNAME</font></th>
<th  align="center"><font color="#FF33E3" >FILENAME</font></th>
<th  align="center"><font color="#FF33E3" >FILETYPE</font></th>
<th  align="center"><font color="#FF33E3" >STATUS</font></th>
	</tr>
   
   <%
		  
		  HttpSession ses = request.getSession(true);
		  String user=(String)ses.getAttribute("user");
   
   String owner="";
   String filename="";
   String filetype="";
   /* String mes2=""; 
   String key=""; */
   
   
	Connection con=null;
   con=Dbcon.CreateConnection();
	PreparedStatement ps=con.prepareStatement("SELECT * FROM cc08.fileupload");
	ResultSet rs=ps.executeQuery();

	while(rs.next()){	
		
		owner=rs.getString(1);
		filename=rs.getString(2);
		filetype=rs.getString(3);
		/* key=rs.getString(4); */
	
	%>
				
<tr>
<td align="left"><%=user%></td>
<td align="left"><%=owner%></td>
<td align="left"><%=filename%></td>
<td align="left"><%=filetype%></td>

<td align="left"><a href="Request?username=<%=user%>&&owner=<%=rs.getString(1)%>&&filename=<%=rs.getString(2)%><%-- &&key=<%=rs.getString(4)%> --%>"><button>REQUEST</button></a></td>

		</tr>	
	<%} %>
</table>
	</table>	   	   
							</div>
						</div>
					</div>	
			</ul>
		</div>
		<div class="clearfix"></div>
</div>
<script type="text/javascript" src="js3/bootstrap-3.1.1.min.js"></script>
</body>
</html>

