<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payment Successful</title>
</head>
<style>
h1{
color:blue;
}
</style>
<body>
  Order No ${orderid}
  <c:forEach items='${cartlist}' var='cart'>
  ${cart.productname}
  ${cart.price}
  ${cart.quantity}
  ${cart.price * cart.quantity}<br>
  </c:forEach>
  Grand total ${grandtotal}
    <tr>
    <center><br><br><br><h3><a href="/FadshionShopFrontend/login_Success">Home</h3></center>
    </tr>
</body>
</html> --%>




<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payment Successful</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script>
window.history.forward()
function noBack()
{
	window.history.forward()
	}
</script>
<style type="text/css">
.text-danger strong {
    		color: #9f181c;
		}
		.receipt-main {
			background: #ffffff none repeat scroll 0 0;
			border-bottom: 12px solid #333333;
			border-top: 12px solid #9f181c;
			margin-top: 50px;
			margin-bottom: 50px;
			padding: 40px 30px !important;
			position: relative;
			box-shadow: 0 1px 21px #acacac;
			color: #333333;
			font-family: open sans;
		}
		.receipt-main p {
			color: #333333;
			font-family: open sans;
			line-height: 1.42857;
		}
		.receipt-footer h1 {
			font-size: 15px;
			font-weight: 400 !important;
			margin: 0 !important;
		}
		.receipt-main::after {
			background: #414143 none repeat scroll 0 0;
			content: "";
			height: 5px;
			left: 0;
			position: absolute;
			right: 0;
			top: -13px;
		}
		.receipt-main thead {
			background: #414143 none repeat scroll 0 0;
		}
		.receipt-main thead th {
			color:#fff;
		}
		.receipt-right h5 {
			font-size: 16px;
			font-weight: bold;
			margin: 0 0 7px 0;
		}
		.receipt-right p {
			font-size: 12px;
			margin: 0px;
		}
		.receipt-right p i {
			text-align: center;
			width: 18px;
		}
		.receipt-main td {
			padding: 9px 20px !important;
		}
		.receipt-main th {
			padding: 13px 20px !important;
		}
		.receipt-main td {
			font-size: 13px;
			font-weight: initial !important;
		}
		.receipt-main td p:last-child {
			margin: 0;
			padding: 0;
		}	
		.receipt-main td h2 {
			font-size: 20px;
			font-weight: 900;
			margin: 0;
			text-transform: uppercase;
		}
		.receipt-header-mid .receipt-left h1 {
			font-weight: 100;
			margin: 34px 0 0;
			text-align: right;
			text-transform: uppercase;
		}
		.receipt-header-mid {
			margin: 24px 0;
			overflow: hidden;
		}
		
		#container {
			background-color: #dcdcdc;
		}
					
		.btn-hover {
  background-color: transparent !important;
  -webkit-box-shadow: none !important;
  box-shadow: none !important;
  border: 1px solid transparent !important;
  background-image: none; }

.btn-hover-warning {
  color: #FF8800 !important; }
  .btn-hover-warning:hover {
    color: #fff !important;
    background-color: #FF8800 !important;
    border-color: #FF8800 !important; }

.btn-square {
  -webkit-border-radius: 0 !important;
  border-radius: 0 !important; }

  .btn-flat:hover{
    color: white !important;

  }
  .btn-flat:focus{
    background: transparent !important;
    color: black !important;
    border:  transparent !important;
  }


.waves-effect.waves-warning .waves-ripple {
  background-color: rgba(255,187,51, .6);
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
        <li><a href="/FlyingShopFrontend/About_US">ABOUT</a></li>
        <li><a href="/FlyingShopFrontend/contact">CONTACT</a></li>
        <li><a href="/FlyingShopFrontend/Logout">LOGOUT</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-search"></span></a></li>
      </ul>
    </div>
  </div>
</nav>
<div class="container">
	<div class="row">
        <div class="receipt-main col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">
            <div class="row">
    			<div class="receipt-header">
					<div class="col-xs-6 col-sm-6 col-md-6">
					</div>
					<div class="col-xs-6 col-sm-6 col-md-6 text-right">
						
					</div>
				</div>
            </div>
			
			<div class="row">
				<div class="receipt-header receipt-header-mid">
					<div class="col-xs-8 col-sm-8 col-md-8 text-left">
						<div class="receipt-right">
							<u><h5>User Name:&nbsp&nbsp${cart.username}</h5></u>
							<u><h5>Address:&nbsp&nbsp${cart.useraddress}</h5></u>
							<u><h5>Phone:&nbsp&nbsp${phoneno}</h5></u>
						</div>
					</div>
					&nbsp&nbsp<i>&nbsp&nbspOrderId:</i><b>&nbsp&nbsp${orderid}</b>
					
					<div class="col-xs-4 col-sm-4 col-md-4">
						<div class="receipt-center">
							<h1>RECEIPT </h1>
						</div>
					</div>
				</div>
            </div>
           
            <div>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Your Product Details</th>
                            <th>Amount</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
         
                            <td class="col-md-9">${cart.productname}</td>
                            <td class="col-md-3"><i class="fa fa-inr">${cart.price * cart.quantity}</i> </td>
                        </tr>
                        <tr>
                            <td class="text-right">
                            <p>
                                <strong>Total Amount: </strong>
                            </p>
                            <p>
                                <strong>Discount: </strong>
                            </p>
							<p>
                                <strong>Balance Due: </strong>
                            </p>
							</td>
                            <td>
                            <p>
                                <strong><i class="fa fa-inr"></i>$${cart.price * cart.quantity}</strong>
                            </p>
                            <p>
                                <strong><i class="fa fa-inr"></i>$1</strong>
                            </p>
                            <p>
                                <strong><i class="fa fa-inr"></i>$${(cart.price * cart.quantity) - 1}</strong>
                            </p>
							</td>
                        </tr>
                        <tr>
                            <td class="text-right"><h2><strong>Total: </strong></h2></td>
                            <td class="text-left text-danger"><h2><strong><i class="fa fa-inr"></i>$${(cart.price * cart.quantity) - 1}</strong></h2></td>
                        </tr>
                    </tbody>
                </table>
            </div>
			
			<div class="row">
				<div class="receipt-header receipt-header-mid receipt-footer">
					<div class="col-xs-8 col-sm-8 col-md-8 text-left">
						<div class="receipt-right">
							<p><b>Date :${currdate}</b></p>
							<h5 style="color: rgb(140, 140, 140);">Thank you visit again!!!</h5>
						</div>
					</div>
					<div class="col-xs-4 col-sm-4 col-md-4">
						<div class="receipt-left">
							<h1>Payment Success</h1>
						</div>
						
					</div>
				</div>
            </div>
			  <a href="/FlyingShopFrontend/UserHome"><button type="button" class="btn btn-warning btn-square">Continue Shopping</button></a>
        </div>    
	</div>
</div>
</body>
</html>