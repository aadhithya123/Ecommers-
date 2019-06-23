<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
window.history.forward()
function noBack()
{
	window.history.forward()
	}
</script>
</head>
<body onload='noBack()'>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<c:forEach items="${cartitems}" var="cart">
<form action="<c:url value='/updateCartItem/${cart.cartitemid}'/>">
Product Name:${cart.productname}
cart_items:${cart.cartitemid}
Cart_id:${cart.cartid}
Cart_UserName:${cart.username}

<input type="text" value="${cart.quantity}" name="quantity"/>
${grandtotal}

</form>
</c:forEach>
</body>
</html>