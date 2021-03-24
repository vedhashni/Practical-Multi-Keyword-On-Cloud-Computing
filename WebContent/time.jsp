<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<title>The Free Health-Care Website Template | Home :: w3layouts</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="css/style.css" rel="stylesheet" media="all" />
<link href="css/animate (3).css" rel="stylesheet" media="all" />
<link href="css/animate (4).css" rel="stylesheet" media="all" />
<link rel="stylesheet" href="css/bjqs.css">
<script src="js/jquery-1.7.1.min.js"></script>
<script src="js/bjqs-1.3.min.js"></script>
<script src="js/libs/jquery.secret-source.min.js"></script>
	<script>
    jQuery(function($) {

        $('.secret-source').secretSource({
            includeTag: false
        });

    });
    </script>
    <script class="secret-source">
        jQuery(document).ready(function($) {

          $('#banner-fade').bjqs({
            height      : 400,
            width       :1000,
            responsive  : true
          });

        });
      </script>
</head>
<body>
<div class="header-bg">
<div class="wrap">
	<div class="logo">
  		<a href="index.html"><img src="images/logo.png"/ alt=""> </a>
 	</div>
	<div class="search">
		<form>
	    <input type="text" class="textbox" value="" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}">
	    <button class="yellow-button"><span>Search</span></button>
		</form>
	</div>
   <div class="clear"></div>
</div>
</div>
	<div class="clear"></div>
<div class="nav1-bg">
<div class="wrap">
	<div class="nav animated rotateInDownLeft"> 
 	<ul>
 		 <li><a href="Fileuplode.jsp" class="">BACK</a></li>
						
						<li><a href="inbox.jsp" class="">INBOX</a></li>
						<li><a href="index.html" class="">LOGOUT</a></li>
						<li><a href="Caching.jsp" class="">CACHING STORAGE</a></li>
 	</ul>      
  	</div>
  	<div class="clear"></div>
</div>
</div>
	<div class="clear"></div>
<div class="body-content">
<div class="wrap">
	<div class="slider">
	<div id="container">
 	<div id="banner-fade">
     <ul class="bjqs animated zoomInDown">
      <li><img src="images/caching23.jpg" alt="" title="Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book"></li>
      <li><img src="images/caching24.jpg" alt="" title="Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book"></li>
      <li><img src="images/caching25.jpg" alt="" title="Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book"></li> 
      </ul>
      <!-- end Basic jQuery Slider -->
    </div>
	</div>
	</div>
<div class="content-main">
	<div class="grid-a">
	
	</div>
	</div>
	<div class="clear"></div>
</div>			




		<marquee behavior="alternate"><h1>NEXT USER IS WAITING.....</h1></marquee>


				<script> 
var timeout = 60; //set time here 5sec
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
     top.document.location.replace("inbox.jsp"); //redirect page url
   }
}     
</script>
<form name="forma">

<% 
String clock=null;



%>

You Will be logged out after:<input type="text" size='1' name="clock" value="<%=clock%>">seconds
<script>

timer();

</script>
</form>

	<div class="date">
	
	
	</div>		
</div>
	<div class="clear"></div>
<div class="footer-bg">
<div class="wrap">
<div class="footer">
<div class="footer-link">	
	
</div>

	<div class="clear"></div>
</div>
</div>
</div>
</body>
</html>
