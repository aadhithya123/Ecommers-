<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<table cellspacing="4" align="center">
<tr>
<td colspan="5"><center><h3>Shopping Cart</h3></center></td>
</tr>
<tr bgcolor='blue'>
<td>Product Name</td>
<tr>Quantity</tr>
<tr>Image</tr>
<tr>SubTotal</tr>
</td>
<c:forEach items="${cartitems}" var="cartitem">
<td>
<td>${cartitems.productname}</td>
<td>${cartitems.quantity}</td>
<td><img src="/resources/image/${cartitems.productid}.jpg'/>" width="100" height="100">
<tr>${cartitem.price * cartitems.quantity}</tr></td>
<c:set var="pid" value="${cartitems.cartid}"/>
</c:forEach>
<tr>
<td colspan="3"> Grand Total </td>
<td>${grandtotal}</td></tr>
<tr>
<td><br><br><a href="/FlyingShopFrontend/Payment/${pid}">Make Payment</a></td>
</table>
</body>
</html>