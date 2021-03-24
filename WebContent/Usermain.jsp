<!DOCTYPE html>
<html lang="zxx">
   <head>
      <title>Financial Banking Category Bootstrap Responsive Web Template| Home :: w3layouts</title>
      <!--meta tags -->
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="keywords" content="Financial Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
         SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
      <script>
         addEventListener("load", function () {
         	setTimeout(hideURLbar, 0);
         }, false);
         
         function hideURLbar() {
         	window.scrollTo(0, 1);
         }
      </script>
      <link href="css6/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
      <link href="css6/fontawesome-all.min.css" rel="stylesheet" type="text/css" media="all">
      <link rel="stylesheet" href="css6/owl.carousel.min.css">
      <link rel="stylesheet" href="css6/owl.theme.default.min.css">
      <link href="css6/style.css" rel='stylesheet' type='text/css' media="all">
      <link href="//fonts.googleapis.com/css?family=Montserrat:300,400,500" rel="stylesheet">
      <link href="//fonts.googleapis.com/css?family=Merriweather:300,400,700,900" rel="stylesheet">
   </head>
   <body>
      <div class="header-outs" id="header">
         <div class="header-w3layouts">
            <div class="container-fluid">
               <div class="row headder-contact">
                  <div class="col-lg-6 col-md-5 col-sm-5 icons px-0">
                     <ul>
                        <li><a href="#"><span class="fab fa-facebook-f"></span></a></li>
                        <li><a href="#"><span class="fas fa-envelope"></span></a></li>
                        <li><a href="#"><span class="fas fa-rss"></span></a></li>
                        <li><a href="#"><span class="fab fa-vk"></span></a></li>
                        <li><a href="#"><span class="fab fa-twitter"></span></a></li>
                        <li><a href="#"><span class="fab fa-pinterest-p"></span></a></li>
                     </ul>
                  </div>
                  <div class="col-lg-6 col-md-7 col-sm-7 info-contact-agile">
                     <ul>
                        <li>
                           <span class="fas fa-phone-volume"></span>
                           <p>+(91)987 65 432 10</p>
                        </li>
                        <li>
                           <span class="fas fa-envelope"></span>
                           <p><a href="mailto:info@example.com">info@example1.com</a></p>
                        </li>
                        <li>
                        </li>
                     </ul>
                  </div>
               </div>
               <!--//navigation section -->
               <nav class="navbar navbar-expand-lg navbar-light">
                  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                  </button>
                  <div class="collapse navbar-collapse justify-content-center" id="navbarSupportedContent">
                     <ul class="navbar-nav ">
                        <li class="nav-item">
                           <a class="nav-link" href="Index.jsp">HOME</a>
                        </li>
                        <li class="nav-item">
                           <a href="Search.jsp" class="nav-link">SEARCH</a>
                        </li>
                        <li class="nav-item">
                           <a href="#service" class="nav-link"></a>
                        </li>
                        <li class="nav-item">
                           <a href="Downlaod1.jsp" class="nav-link">DOWNLOAD</a>
                        </li>
                        <li class="nav-item">
                           <a href="logout.jsp" class="nav-link">LOGOUT</a>
                        </li>
                     </ul>
                  </div>
               </nav>
               <div class="hedder-up">
                  <h1><a class="navbar-brand" href="index.html">KEYWORD</a></h1>
               </div>
               <div class="clearfix"> </div>
            </div>
         </div>
         <div class="slider">
            <div class="callbacks_container">
               <ul class="rslides" id="slider4">
                  <li>
                     <div class="slider-img one-img">
                        <div class="container">
                       
                        </div>
                     </div>
                  </li>
                  <li>
                     <div class="slider-img two-img">
                        <div class="container">
                          
                        </div>
                     </div>
                  </li>
                  <li>
                     <div class="slider-img three-img">
                        <div class="container">
                          
                        </div>
                     </div>
                  </li>
               </ul>
            </div>
         </div>
         <div class="clearfix"></div>
      </div>
      <script src='js6/jquery-2.2.3.min.js'></script>
      <script src="js6/responsiveslides.min.js"></script>
      <script>
         // You can also use "$(window).load(function() {"
         $(function () {
         	// Slideshow 4
         	$("#slider4").responsiveSlides({
         		auto: true,
         		pager:false,
         		nav:true ,
         		speed: 900,
         		namespace: "callbacks",
         		before: function () {
         			$('.events').append("<li>before event fired.</li>");
         		},
         		after: function () {
         			$('.events').append("<li>after event fired.</li>");
         		}
         	});
         
         });
      </script>
      <script src="js6/jquery.waypoints.min.js"></script>
      <script src="js6/jquery.countup.js"></script>
      <script>
         $('.counter').countUp();
      </script>
      <script src="js6/owl.carousel.js"></script>
      <script>
         $(document).ready(function() {
           $('.owl-carousel').owlCarousel({
             loop: true,
             margin: 10,
             responsiveClass: true,
             responsive: {
               0: {
                 items: 1,
                 nav: true
               },
         991: {
                 items: 2,
                 nav:true,
               },
               600: {
                 items: 2,
                 nav: true,
               },
               1000: {
                 items: 3,
                 nav: true,
                 loop: false,
                 margin: 15
               }
             }
           })
         })
      </script>
      <script src="js6/move-top.js"></script>
      <script src="js6/easing.js"></script>
      <script>
         jQuery(document).ready(function ($) {
         	$(".scroll").click(function (event) {
         		event.preventDefault();
         		$('html,body').animate({
         			scrollTop: $(this.hash).offset().top
         		}, 900);
         	});
         });
      </script>
      <script>
         $(document).ready(function () {
         
         	var defaults = {
         		containerID: 'toTop', // fading element id
         		containerHoverID: 'toTopHover', // fading element hover id
         		scrollSpeed: 1200,
         		easingType: 'linear'
         	};
         
         
         	$().UItoTop({
         		easingType: 'easeOutQuart'
         	});
         
         });
      </script>
      <script src="js6/bootstrap.min.js"></script>
   </body>
</html>