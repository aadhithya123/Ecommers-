<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" isELIgnored='false'%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>(⋆‿⋆)</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="styles.css">
<link href="https://fonts.googleapis.com/css?family=Muli%7CRoboto:400,300,500,700,900" rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
    </div><br><br><br><br><br><br><br><br>
<form:form method='post' modelAttribute='categoryedit' action='/FlyingShopFrontend/updatecategory'>
Your ID:&nbsp&nbsp&nbsp<form:input type='text' path='categoryid' value='${categoryedit.categoryid}' readonly='true'/>&nbsp&nbsp&nbsp
Your Name:&nbsp&nbsp&nbsp<form:input type='text' path='categoryname' value='${categoryedit.categoryname}'/>&nbsp&nbsp&nbsp
Category Description:&nbsp&nbsp&nbsp<form:input type='text' path='categoryname' value='${categoryedit.categorydesc}'/>&nbsp&nbsp&nbsp
<input type='submit' value='submit'/>
</form:form>
</body>
</html>
