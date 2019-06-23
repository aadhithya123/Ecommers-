<%-- 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<style type="text/css">
body { margin-top:20px; }
.panel-title {display: inline;font-weight: bold;}
.checkbox.pull-right { margin: 0; }
.pl-ziro { padding-left: 0px; }
</style>
</head>
<body>
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
</nav><br><br><br>

<form method="post" action="/FlyingShopFrontend/BillingDetails/${cart.cartid}">
<div class="container">
    <div class="row">
        <div class="col-xs-12 col-md-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        Payment Details
                    </h3>
                    
                </div>
                <div class="panel-body">
                 
                    <div class="form-group">
                        <label for="cardNumber">
                            CARD NUMBER</label>
                        <div class="input-group">
                            <input type="text" name='cardnumber' class="form-control" value="1234" id="cardNumber" placeholder="Valid Card Number"
                                required autofocus />
                            <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-7 col-md-7">
                            <div class="form-group">
                                <label for="expityMonth">
                                    EXPIRY DATE</label>
                                <div class="col-xs-6 col-lg-6 pl-ziro">
                                    <input type="text" class="form-control" id="expityMonth" placeholder="MM" required />
                                </div>
                                <div class="col-xs-6 col-lg-6 pl-ziro">
                                    <input type="text" class="form-control" id="expityYear" placeholder="YY" required /></div>
                            </div>
                        </div>
                        <div class="col-xs-5 col-md-5 pull-right">
                            <div class="form-group">
                                <label for="cvCode">
                                    CV CODE</label>
                                <input type="password" class="form-control" id="cvCode" value="1111" placeholder="CV" required />
                            </div>
                        </div>
                    </div>
                   
                </div>
            </div>
            </ul>
            <br/>
            <div class="checkbox pull-middle">
                        <label>
                          Cash on Delivery: <input type="radio" value="cash" name='paymenttype'/>&nbsp&nbsp
                            Card: <input type="radio" value="card" name='paymenttype'/>
                           
                        </label>
                    </div>
                   
                    <br/>
            <input type="submit" class="btn btn-success btn-lg btn-block">
            
        </div>
        
    </div>
</div>
 </form>
                    
</body>
</html>
 --%>
 






 
 <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
 <%@taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c' %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>
window.history.forward()
function noBack()
{
	window.history.forward()
	}
function disablecard()
{
s=document.getElementById('c')
alert('cash selected')
s.disabled='true'
	s=document.getElementById('a')
	alert('cash selected')
	s.disabled='true'
		s=document.getElementById('m')
		alert('cash selected')
		s.disabled='true'
			s=document.getElementById('y')
			alert('cash selected')
			s.disabled='true'
				s=document.getElementById('cc')
				alert('cash selected')
				s.disabled='true'
//frm.cardno.disabled='true'
	}
function enablecard()
	{
		s.document.getElementById('c')
		alert('card selected')
		s.enable='true'
	}
</script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="/FlyingShopFrontend/UserHome">HOME</a></li>
        <li><a href="viewproducts">PRODUCT</a></li>
        <li><a href="userabout">ABOUT</a></li>
        <li><a href="contact">CONTACT</a></li>
        <li><a href="/FlyingShopFrontend/logout">LOGOUT</a></li>
      </ul>
    </div>
  </div>
</nav>
<form method='post' name='frm' action='/FlyingShopFrontend/BillingDetails/${cart.cartid}'>

<div class="container">
<hr>

<div class="row">
<aside class="col-sm-6">
<article class="card">
<div class="card-body p-5">
Cash on Delivery <input type='radio' value='cash'  name='paymenttype' onchange='disablecard()'/>
Credit Card Pay<input type='radio' value='card' name='paymenttype' onchange='enablecard()'/>
<br>
<ul class="nav bg-light nav-pills rounded nav-fill mb-3" role="tablist">
<li class="nav-item">
<a class="nav-link active" data-toggle="pill" href="#nav-tab-card">

<i class="fa fa-credit-card"></i> Credit Card</a></li>

</ul>

<div class="tab-content">
<div class="tab-pane fade show active" id="nav-tab-card">
<p class="alert alert-success">Some text success or error</p>
<div class="form-group">
<label for="username">Full name (on the card)</label>

<input type="text" class="form-control" name="username" id='a' value="Aadhi" placeholder="" required="">
</div> <!-- form-group.// -->

<div class="form-group">
<label for="cardNumber">Card number</label>
<div class="input-group">
<input type="text" class="form-control" name='cardno' id='c' value="0" placeholder="">
<div class="input-group-append">
<span class="input-group-text text-muted">
<i class="fab fa-cc-visa"></i>   <i class="fab fa-cc-amex"></i>   
<i class="fab fa-cc-mastercard"></i> 
</span>
</div>
</div>
</div> <!-- form-group.// -->

<div class="row">
   <div class="col-sm-8">
       <div class="form-group">
           <label><span class="hidden-xs">Expiration</span> </label>
       	<div class="input-group">
       	<input type="number" class="form-control" id='m' placeholder="MM" name="month">
           <input type="number" class="form-control" id='y' placeholder="YY" name="year">
       	</div>
       </div>
   </div>
   <div class="col-sm-4">
       <div class="form-group">
           <label data-toggle="tooltip" title="" data-original-title="3 digits code on back side of the card">CVV <i class="fa fa-question-circle"></i></label>
           <input type="number" class="form-control" id='cc' value="0000" required="">
       </div> <!-- form-group.// -->
   </div>
</div> <!-- row.// -->

<button class="subscribe btn btn-success btn-block" type='submit'> Confirm  </button>

</div> <!-- tab-pane.// -->
</div> <!-- tab-content .// -->
</div> <!-- card-body.// -->
</article> <!-- card.// -->
</aside> 
</div> 
</div> 
</form>
</body>
</html>
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 