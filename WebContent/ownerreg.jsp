<!DOCTYPE html>
<html>
<head>
<title>Awesome Register Form a Flat Responsive Widget Template :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Awesome Register Form template Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login sign up Responsive web template, SmartPhone Compatible web template, free web designs for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="css3/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- //Custom Theme files -->
<!-- web font --> 
<link href="//fonts.googleapis.com/css?family=Poiret+One&amp;subset=cyrillic,latin-ext" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Josefin+Sans:100,100i,300,300i,400,400i,600,600i,700,700i&amp;subset=latin-ext" rel="stylesheet">
<!-- //web font -->
</head>
<body>
	<!-- main -->
	<div data-vide-bg="video3/awesome">
	<div class="main-w3layouts center-container">
		<h1>Owner Register Form</h1>
		<div class="main-agileinfo">
			<div class="agileits-top"> 
				<form action="Ownerreg" method="post"> 
					<i class="fa fa-user-o" aria-hidden="true"></i>
					<input class="text" type="text" name="Username" placeholder="Username" required="" autocomplete="off">
					<input class="text email" type="email" name="email" placeholder="Email" onblur="validateEmail(this);" required="" autocomplete="off">
					<input class="text" type="text" name="number" placeholder="Mobile number" pattern="[7-9]{1}[0-9]{9}"  title="Enter a 10 digit mobile number" required="" autocomplete="off">
					<br>
					<br>
					<input class="text" type="password" name="password" id="password1" placeholder="Password" required="" autocomplete="off">
					<input class="text w3lpass" type="password" name="cpassword" id="password2" placeholder="Confirm Password" required="" autocomplete="off">
					<div class="wthree-text">    
						<div class="clear"> </div>
					</div>   
					<input type="submit" value="REGISTER">
				</form>
			</div>	 
		</div>	
	</div>	
	</div>	
	<script>
		function validateEmail(emailField){
		       var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
		       if (reg.test(emailField.value) == false) 
		         {
		            alert('Invalid Email Address');
		            return false;
		         }
		        return true;
                   }
	</script>
						<script>
				window.onload = function () {
					document.getElementById("password1").onchange = validatePassword;
					document.getElementById("password2").onchange = validatePassword;
				}

				function validatePassword() {
					var pass2 = document.getElementById("password2").value;
					var pass1 = document.getElementById("password1").value;
					if (pass1 != pass2)
						document.getElementById("password2").setCustomValidity("Password Doesn't Match");
					else
						document.getElementById("password2").setCustomValidity('');
					//empty string means no validation error
				}
			</script>
					<script type="text/javascript">
    function validateForm() {
        return checkPhone();
    }
    function checkPhone() {
        var phone = document.forms["myForm"]["phone"].value;
        var phoneNum = /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/; 
            if(phone.value.match(phoneNum)) {
                return true;
            }
            else {
                document.getElementById("phone").className = document.getElementById("phone").className + " error";
                return false;
            }
        }
</script>
<script type="text/javascript" src="js3/jquery-2.1.4.min.js"></script>
<script src="js3/jquery.vide.min.js"></script>
</body>
</html>