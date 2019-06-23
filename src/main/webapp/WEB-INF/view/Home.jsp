<!--  
Exercise - Add CSS

Add HTML and CSS to create a webpage for a business (real or imagined). The following are the minimum requirements for your page; feel free to add more HTML or CSS if you have additional time. 

HTML requirements:
* three divs
* a span and a paragraph 
* two headers
* a link
* an image
* a list
* a class (which should be put on multiple elements)
* two ids 

CSS requirements:
* a tag selector
* a class selector
* an id selector
* use the following attributes: height, width, border, color, background-color, font-size
* add margin and padding to two different elements  

Stretch Goal: Use online resources to learn a little about the CSS properties of 'display' and 'position'. Incorporate them into your page.
-->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>(⋆‿⋆)</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="styles.css">
  <link href="https://fonts.googleapis.com/css?family=Muli%7CRoboto:400,300,500,700,900" rel="stylesheet">
  <script>
window.history.forward()
function noBack()
{
	window.history.forward()
	}
</script>
  <style>
/* Global Layout Set-up */
* { 
  box-sizing: border-box;
} 
body {
  margin: 0;
  padding: 0;
  text-align: center;
  font-family: 'Roboto', sans-serif;
  color: #222;
  background: #ffffff;
}
/* Link Styles */

a {
  text-decoration: none;
  color: steelblue;
}
a:hover {
  color: darkslateblue;
}

/* Section Styles */

.main-nav {
  width: 100%;
  background: black;
  min-height: 30px;
  padding: 10px;
  position: fixed;
  text-align: center;
}
.nav {
  display: flex;
  justify-content: space-around;
  font-weight: 700;
  list-style-type: none;
  margin: 0 auto;
  padding: 0;
}
.nav .name {
  display: none;
}
.nav li {
  padding: 5px 10px 10px 10px;
}
.nav a {
  transition: all .5s;
}
.nav a:hover {
  color: white
}

header {
  text-align: center;
  background: url(https://www.iliketowastemytime.com/sites/default/files/night-sky-hd-wallpaper.jpg) no-repeat top center ;
  background-size: cover;
  overflow: hidden;
  padding-top: 60px;
}
header {
  line-height: 1.5;
}
header .profile-image {
  margin-top: 50px;
  width: 150px;
  height: 150px;
  border-radius: 50%;
  border: 3px solid white;
  transition: all .5s;
}
header .profile-image:hover {
  transform: scale(1.5) rotate(1080deg);
}
.tag {
  background-color: midnightblue;
  color: white;
  padding: 10px;
  border-radius: 5px;
  display: table;
  margin: 10px auto;
} 
.location {
  background-color: midnightblue;
  color: white;
}
.card {
  margin: 30px;
  padding: 20px 40px 40px;
  max-width: 500px;
  text-align: left;
  background: #fff;
  border-bottom: 4px solid #ccc;
  border-radius: 6px;
}
.card:hover {
  border-color: maroon;
}

ul.skills {
  padding: 0;
  text-align: center;
}

.skills li {
  border-radius: 6px;
  display: inline-block;
  background: steelblue;
  color: white;
  padding: 5px 10px;
  margin: 2px;
}

.skills li:nth-child(odd) {
  background: darkslateblue;
}

footer {
  width: 100%;
  min-height: 30px;
  padding: 20px 0 40px 20px;
}

footer .copyright {
  top: -8px;
  margin-right: 20px;
  font-size: .75em;
}

footer ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
}

footer ul li {
  display: inline-block;
}


/* Styles for larger screens */
@media screen and (min-width: 720px) {
  
  .flex {
      display: flex;
      max-width: 1200px;
      justify-content: space-around;
      margin: 0 auto;
  }

  header {
    min-height: 450px;
  }

  .nav {
    max-width: 1200px;
  }

  .nav .name {
    display: block;
    margin-right: auto;
    color: white;
  }

  main {
    padding-top: 50px;
  }

  main p {
    line-height: 1.6em;
  }

  footer {
    font-size: 1.3em;
    max-width: 1200px;
    margin: 40px auto;
  }
}
</style>
  </head>
  <body onload='noBack()'>
    <div class="main-nav">
        <ul class="nav">
          <li class="name">Developer Admin</li>
          <li><a href="/FlyingShopFrontend/home/">Home</a></li>
          <li><a href="/FlyingShopFrontend/category">Category</a></li>
          <li><a href="/FlyingShopFrontend/product">Product</a></li>
          <li><a href="/FlyingShopFrontend/supplier">Supplier</a></li>
          <li><a href="/FlyingShopFrontend/logout">Logout</a></li>
        </ul>
    </div>
    <header>
      <img src="https://avatars1.githubusercontent.com/u/51260525?s=400&u=8c6b75deddc17879d32f87982d8590959b98dda8&v=4" alt="Photo of Christopher Jack" class="profile-image">
      <h1 class="tag name">Hello, I’m Developer.</h1>
      <p class="tag location">I'm An Alian</p>
    </header>
    <main class="flex">
      <div class="card">
        <h2>Background</h2>
        <p>I’m an aspiring full-stack developer who loves learning new things and solving new problems. I've lived on three continents and in ten different countries. I’m excited to bring my life experience to the process of building amazing websites.</p>
        <p>I Love to Create new thing and I Love to Draw and am a life-long learner who's always interested in expanding my skills.</p>
      </div>
      <div class="card">
        <h2>Goals</h2>
        <p>I want to master the process of building web sites and increase my knowledge, skills and abilities in:</p>
        <ul class="skills">
          <li>HTML</li>
          <li>CSS</li>
          <li>JavaScript</li>
          <li>Bootstrap</li>
          <li>Java</li>
          <li>Python</li>
        </ul>
        <p>I’d like to work for a web design firm helping clients create an impressive online presence.</p>
      </div> 
    </main>
  <footer class="page-footer font-small cyan darken-3">
  <div class="container">
    <hr>
     <div class="text-center center-block">
      <ul>
        <li><a href="https://twitter.com/">Twitter</a></li>&nbsp&nbsp
        <li><a href="https://www.linkedin.com/">LinkedIn</a></li>&nbsp&nbsp
        <li><a href="https://github.com/login">Github</a></li>
      </ul></div>
<br><br><br>
  <div class="footer-copyright text-center py-3">© 2019 Copyright:
    <a href="/FlyingShopFrontend/home/"> THEFrozenspoon.com</a>
  </div></div>
</footer>
  </body>
  </html>