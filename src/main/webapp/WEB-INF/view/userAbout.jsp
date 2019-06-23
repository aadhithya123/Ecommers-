<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>About Us</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script>
window.history.forward()
function noBack()
{
	window.history.forward()
	}
</script>
  <style type="text/css">
  .container {
    padding: 80px 120px;
  }
  .person {
    border: 10px solid transparent;
    margin-bottom: 25px;
    width: 80%;
    height: 80%;
    opacity: 0.7;
  }
  .person:hover {
    border-color: #f1f1f1;
  }
  .carousel-inner img {
    -webkit-filter: grayscale(90%);
    filter:none; /* make all photos black and white */ 
    width: 100%; /* Set width to 100% */
    margin: auto;
  }
  .carousel-caption h3 {
    color: #fff !important;
  }
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; /* Hide the carousel text when the screen is less than 600 pixels wide */
    }
  }
  .bg-1 {
    background: #2d2d30;
    color: #bdbdbd;
  }
  .bg-1 h3 {color: #fff;}
  .bg-1 p {font-style: italic;}
  .list-group-item:first-child {
    border-top-right-radius: 0;
    border-top-left-radius: 0;
  }
  .list-group-item:last-child {
    border-bottom-right-radius: 0;
    border-bottom-left-radius: 0;
  }
  .thumbnail {
    padding: 0 0 15px 0;
    border: none;
    border-radius: 0;
  }
  .thumbnail p {
    margin-top: 15px;
    color: #555;
  }
  .btn {
    padding: 10px 20px;
    background-color: #333;
    color: #f1f1f1;
    border-radius: 0;
    transition: .2s;
  }
  .btn:hover, .btn:focus {
    border: 1px solid #333;
    background-color: #fff;
    color: #000;
  }
  .modal-header, h4, .close {
    background-color: #333;
    color: #fff !important;
    text-align: center;
    font-size: 30px;
  }
  .modal-header, .modal-body {
    padding: 40px 50px;
  }
  .nav-tabs li a {
    color: #777;
  }
  #googleMap {
    width: 100%;
    height: 400px;
    -webkit-filter: grayscale(100%);
    filter: grayscale(100%);
  }  
  .navbar {
    margin-bottom: 0;
    background-color: #2d2d30;
    border: 0;
    font-size: 11px !important;
    letter-spacing: 4px;
    opacity: 0.9;
  }
  .navbar li a, .navbar .navbar-brand { 
    color: #d5d5d5 !important;
  }
  .navbar-nav li a:hover {
    color: #fff !important;
  }
  .navbar-nav li.active a {
    color: #fff !important;
    background-color: #29292c !important;
  }
  .navbar-default .navbar-toggle {
    border-color: transparent;
  }
  .open .dropdown-toggle {
    color: #fff;
    background-color: #555 !important;
  }
  .dropdown-menu li a {
    color: #000 !important;
  }
  .dropdown-menu li a:hover {
    background-color: red !important;
  }
  * {
  /* Layout Declarations */
	box-sizing: border-box;
}

body {
	/* Typography Declarations */
	color: #222222;
	font-size: 1em;
   font-family: "Open Sans", "Helvetica Neue", sans-serif;
}

::selection {
  /* Appearance Declarations */
	background: #FFE799;
}

a {
	/* Typography Declrations */
	font-weight: bold;
	text-decoration: none;
	color: #FFCF33;
}

a:hover {
	/* Tyopography Declarations */
	color: #FFE799;
}

a:visited {
	/* Typography Declarations */
	color: #D1A000;
}

.masthead,
.introduction,
.location,
.questions,
.content-footer {
    /* Layout Declarations */
    padding-left: 2em;
    padding-right: 2em;
}

.masthead-intro,
.masthead-heading,
.content-footer > p,
.social {
    /* Layout Declarations */
    text-align: center;
}

.introduction,
.location,
.questions {
	/* Layout Declarations */
   max-width: 38em;
	margin-left: auto;
	margin-right: auto;
}

.introduction > p,
.location > p,
.content-footer > p {
	/* Typography Declarations */
	font-weight: 300;
	letter-spacing: 0.05em;
}

.masthead {
	/* Layout Declrations */
	padding: 6em 0;
	/* Appearance Declrations */
	background-image: url('https://i.imgur.com/lvXbgcg.jpg');
	background-repeat: no-repeat;
	background-size: cover;
	border-top: solid 1em #FFCF33;
}

.masthead-intro {
	/* Layout Declarations */
	margin-bottom: 0.1em;
	/* Typography Declarations */
	color: #FFFFFF;
	font-family: "Gentium Book Basic", Georgia, serif;
	font-size: 2em;
}

.masthead-heading {
	/* Layout Declarations */
	margin-top: -0.2em;
	/* Typography Declarations */
	color: #FFF1C2;
	font-family: "Open Sans", "Helvetica Neue", sans-serif;
	font-style: normal;
	font-weight: bold;
	font-size: 6em;
	letter-spacing: -0.02em;
	text-transform: uppercase;
	text-shadow: 0px 3px 0px #FFCF33;
}

.heading {
	/* Layout Declarations */
	max-width: 19em;
	margin-top: 2em;
}

.question {
	/* Layout Declarations */
	margin: 2em 0 1em 0;
	/* Typography Declarations */
	color: #FFCF33;
	font-family: "Gentium Book Basic", Georgia, serif;
	font-size: 1.2em;
	font-weight: bold;
}

.answer {
	/* Layout Declarations */
	margin-left: 0em;
}

.content-footer {
	/* Layout Declarations */
	margin-top: 5em;
	padding: 4em 0;
	/* Appearance Rules */
	background-color: #594F49;
}

.content-footer > p {
  /* Typography Declarations */
  color: white;
}

.social {
	/* Layout Declarations */
	padding: 0;
	/* Appearance Declarations */
	list-style: none;
}

.social > li {
	/* Layout Declarations */
	display: inline-block;
	margin-right: 1em;
}

@media screen and (max-width: 500px) {
  .masthead {
    padding:  3em 0;
  }
  .masthead-heading {
    font-size: 3em;
  }
}
  </style>
 </head>
<body onload='noBack()'>
<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">ICE.</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="/FlyingShopFrontend/UserHome">HOME</a></li>
        <li><a href="viewproducts">PRODUCT</a></li>
        <li><a href="userabout">ABOUT</a></li>
        <li><a href="contact">CONTACT</a></li>
        <li><a href="Logout">LOGOUT</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-search"></span></a></li>
      </ul>
    </div>
  </div>
</nav>
<header class="masthead">
	<p class="masthead-intro">Hi, I&rsquo;m</p> 
	<h1 class="masthead-heading">AADHI!</h1>
</header>
<section class="introduction">
	<h1 class="heading">Introduction</h1>
	<p>I&rsquo;m a Front End and iOS developer who loves <strong>good design</strong>, <strong>good coffee</strong>, and <strong>good people</strong>. I work as a Front-End Development and iOS mentor for Thinkful, a web developer for <a href="http://ideabasekent.com">IdeaBase</a>, and a freelance iOS developer.</p>
	<p>I love the web and all the awesome things that come out of it. I&rsquo;m excited to live and work in a time of huge advances in web technology. It&rsquo;s easier than ever to share and collaborate with others, all because of the Internet.</p>
	<p>Education is also super important to me - I come from a family of educators - and I&rsquo;m stoked to work with Thinkful&rsquo;s awesome student community.</p>
</section>
<section class="location">
	<h1 class="heading">Where I&rsquo;m From</h1>
	<p>I&rsquo;m from the Midwest - Ohio, specifically - Cleveland, even more specifically. I love the spacious fields, the smell of the outdoors, and the people in Ohio. I bring a bit of the Midwest work ethic to all my projects - a craftsman&rsquo;s approach to <strong>Doing Things Right the First Time</strong>.</p>
	<p>I&rsquo;m finishing my design degree at Kent State University, and will be graduating this winter with a focus in <strong>interaction design</strong>.</p>
</section>
<section class="questions">
	<h1 class="heading">More About Me</h1>
	<dl class="question-list">
		<dt class="question">What are your favorite hobbies?</dt>
		<dd class="answer">I&rsquo;m a huge gamer. I also <strong>LOVE</strong> food. I&rsquo;m always trying new cuisine. Foodies unite!</dd>
		<dt class="question">What&rsquo;s your dream job?</dt>
		<dd class="answer">I&rsquo;d love to open my own mobile game studio in the future!</dd>
		<dt class="question">What&rsquo;s your background?</dt>
		<dd class="answer">I&rsquo;ve been programming since I was in middle school. I decided to go to school for design because I love front-end and felt like I needed more help with the design side than the programming side.</dd>
		<dt class="question">What music have you been listening to lately?</dt>
		<dd class="answer">I&rsquo;ve been listening to a ton of <a href="https://soundcloud.com/rynweaver/promises">Ryn Weaver</a> lately, ever since her first EP came out in late July.</dd>
	</dl>
</section>
<footer class="content-footer">
	<p class="body-copy">Say hi to me on these social networks:</p>
	<ul class="social">
		<li><a href="https://github.com/brebory">Github</a></li>
		<li><a href="https://twitter.com/brebory">Twitter</a></li>
		<li><a href="https://plus.google.com/+BrendonRobertoThinkful">Google+</a></li>
	</ul>
  <p>Cover Image via <a href="http://unsplash.com">Unsplash</a></p>
</footer>
<p>On hot, sunny days, one of the first ideas that pops into someone’s head is: “This is a great day for ice cream!” Even though every day is a good day for ice cream, summertime is definitely peak season.

But if you are one of the few with an undying love for the dessert that follows you through even the coldest of winters, then maybe owning an ice cream shop is your calling!

Imagine the smiles on kids’ faces when you hand them ice cream cones topped three scoops high and covered in sprinkles; picture all of the families gathered together having a great time in an environment you provided! Sounds like a pleaser, yes?

Opening a new business is never an easy task, but the incentive of ice cream should make the process more palatable! For a business like this, it is definitely best to plan your business start date near the beginning of peak season, to allow for the busiest grand opening event.

This will not only give your new business a good head start, but hopefully help establish a good enough customer base to get you through the off-season months.</p>
</body>
</html>