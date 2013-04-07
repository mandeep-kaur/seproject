<!doctype html>
<html class="no-js">

	<head>
		<meta charset="utf-8"/>
		<title>SPNK</title>

		<!--[if lt IE 9]>
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
		<link rel="stylesheet" media="all" href="css/style.css"/>
		<meta name="viewport" content="width=device-width, initial-scale=1"/>
		<!-- Adding "maximum-scale=1" fixes the Mobile Safari auto-zoom bug: http://filamentgroup.com/examples/iosScaleBug/ -->


		<!-- JS -->
		<script src="js/jquery-1.6.4.min.js"></script>
		<script src="js/css3-mediaqueries.js"></script>
		<script src="js/custom.js"></script>
		<script src="js/tabs.js"></script>

		<!-- Tweet -->
		<link rel="stylesheet" href="css/jquery.tweet.css" media="all"  />
		<script src="js/tweet/jquery.tweet.js" ></script>
		<!-- ENDS Tweet -->

		<!-- superfish -->
		<link rel="stylesheet" media="screen" href="css/superfish.css" />
		<script  src="js/superfish-1.4.8/js/hoverIntent.js"></script>
		<script  src="js/superfish-1.4.8/js/superfish.js"></script>
		<script  src="js/superfish-1.4.8/js/supersubs.js"></script>
		<!-- ENDS superfish -->

		<!-- prettyPhoto -->
		<script  src="js/prettyPhoto/js/jquery.prettyPhoto.js"></script>
		<link rel="stylesheet" href="js/prettyPhoto/css/prettyPhoto.css"  media="screen" />
		<!-- ENDS prettyPhoto -->

		<!-- poshytip -->
		<link rel="stylesheet" href="js/poshytip-1.1/src/tip-twitter/tip-twitter.css"  />
		<link rel="stylesheet" href="js/poshytip-1.1/src/tip-yellowsimple/tip-yellowsimple.css"  />
		<script  src="js/poshytip-1.1/src/jquery.poshytip.min.js"></script>
		<!-- ENDS poshytip -->

		<!-- GOOGLE FONTS -->
		<link href='http://fonts.googleapis.com/css?family=Yanone+Kaffeesatz:400,300' rel='stylesheet' type='text/css'>

		<!-- Flex Slider -->
		<link rel="stylesheet" href="css/flexslider.css" >
		<script src="js/jquery.flexslider-min.js"></script>
		<!-- ENDS Flex Slider -->

		<!-- Less framework -->
		<link rel="stylesheet" media="all" href="css/lessframework.css"/>

		<!-- modernizr -->
		<script src="js/modernizr.js"></script>

		<!-- SKIN -->
		<link rel="stylesheet" media="all" href="css/skin.css"/>


	</head>

	<body lang="en">
        <%
        response.setHeader("Cache-Control", "no-cache"); //Forces caches to obtain a new copy of the page from the origin server
            response.setHeader("Cache-Control", "no-store"); //Directs caches not to store the page under any circumstance
            response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
            response.setHeader("Pragma", "no-cache");
        %>


		<!-- MAIN -->
		<div id="main">
			<div class="wrapper">

				<!-- slider holder -->
				<div id="slider-holder" class="clearfix">

					<!-- slider -->
			        <div class="flexslider home-slider">
					  <ul class="slides">
					    <li>
                                                <img src="img/image1.jpg" alt="alt text" height="300" width="800"/>
					    </li>
					    <li>
					      <img src="img/image2.jpg" alt="alt text"  height="300" width="800" />

					    </li>
					    <li>
					      <img src="img/image3.jpg" alt="alt text" height="300" width="800" />
					    </li>
					  </ul>
					</div>
		        	<!-- ENDS slider -->

		        	<div class="home-slider-clearfix "></div>

		        	<!-- Headline -->
		        	<div id="headline">
	<center><h1>Login</h1></center>
		        	<form action="first.do" method="post">
		        		<table width="261" height="133">
		        		  <tr>
		        		    <td>Username</td>
		        		    <td><input type="text" name="t1" id="textfield"></td>
	        		      </tr>
		        		  <tr>
		        		    <td>Password</td>
		        		    <td><input type="password" name="t2" id="textfield2"></td>
	        		      </tr>
		        		  <tr>
		        		   <td colspan="2"> <center><input type="submit" name="Submit" id="button" value="Submit"></center></td>

	        		      </tr>
    </table></form>
        <div class="newusertext"><a href="signup.jsp">New User!!!</a></div>
        <div class="newusertext"><a href="forgot.jsp">Forgot Password!!!</a></div>
		        		<em id="corner"></em>
		        	</div>
		        	<!-- ENDS headline -->


				</div>

</body>
</html>