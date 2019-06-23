<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c' %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
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
        <li><a href="/FlyingShopFrontend/viewproducts">PRODUCT</a></li>
        <li><a href="/FlyingShopFrontend/userabout">ABOUT</a></li>
        <li><a href="/FlyingShopFrontend/contact">CONTACT</a></li>
        <li><a href="/FlyingShopFrontend/Logout">LOGOUT</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-search"></span></a></li>
      </ul>
    </div>
  </div>
</nav>
<br><br><br>
<div class="container">
    <div class="row">
        <div class="col-sm-12 col-md-10 col-md-offset-1">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Product</th>
                        <th>Quantity</th>
                        <th class="text-center">Price</th>
                        <th class="text-center">Total</th>
                        <th> </th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach items="${cartlist}" var="cart">
                    <tr>
                        <td class="col-sm-8 col-md-6">
                        <div class="media">                              
                            <a class="thumbnail pull-left" href="#"> <img height="100" width="100" src="<c:url value='/resources/image/${cart.productid}.jpg'/>"/> </a>
                            <div class="media-body">
                                <h4 class="media-heading"><a href="#">${cart.productname}</a></h4>
                                <span>Status: </span><span class="text-success"><strong>In Stock</strong></span>
                            </div>
                        </div></td>
                        <td class="col-sm-1 col-md-1" style="text-align: center">
                        <input type="email" class="form-control" id="exampleInputEmail1" value="${cart.quantity}">
                        </td>
                        <td class="col-sm-1 col-md-1 text-center"><strong>$${cart.price}</strong></td>
                        <td class="col-sm-1 col-md-1 text-center"><strong>$${cart.price * cart.quantity}</strong></td>
                        <td class="col-sm-1 col-md-1">
                        <button type="button" class="btn btn-danger">
                           <a href="/FlyingShopFrontend/cartdelete/${cart.cartid}"><span class="glyphicon glyphicon-remove"></span> Remove</a>
                        </button></td>
                        </c:forEach>
                    </tr>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td><h5>Subtotal</h5></td>
                        <td class="text-right"><h5><strong>$${grandtotal}</strong></h5></td>
                    </tr>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td><h5>Estimated shipping</h5></td>
                        <td class="text-right"><h5><strong>$6.94</strong></h5></td>
                    </tr>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td><h3>Total</h3></td>
                        <td class="text-right"><h3><strong>$${grandtotal + 6.94}</strong></h3></td>
                    </tr>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td>
                        <button type="button" class="btn btn-default">
                        <a href='/FlyingShopFrontend/UserHome'><span class="glyphicon glyphicon-shopping-cart"></span> Continue Shopping</a>
                        </button></td>
                        <td>
                        <button type="button" class="btn btn-success">
                      <a href='/FlyingShopFrontend/BillingDetails/${cart.cartid}'>Checkout <span class="glyphicon glyphicon-play"></span></a>
                        </button></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>