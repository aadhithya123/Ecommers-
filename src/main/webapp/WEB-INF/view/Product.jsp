<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta charset="utf-8">
<title>Developer</title>
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
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<style type="text/css">
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
    body {
        color: #566787;
		background: #f5f5f5;
		font-family: 'Varela Round', sans-serif;
		font-size: 13px;
	}
	.table-wrapper {
        background: #fff;
        padding: 20px 25px;
        margin: 30px 0;
		border-radius: 3px;
        box-shadow: 0 1px 1px rgba(0,0,0,.05);
    }
	.table-title {        
		padding-bottom: 15px;
		background: #435d7d;
		color: #fff;
		padding: 16px 30px;
		margin: -20px -25px 10px;
		border-radius: 3px 3px 0 0;
    }
    .table-title h2 {
		margin: 5px 0 0;
		font-size: 24px;
	}
	.table-title .btn-group {
		float: right;
	}
	.table-title .btn {
		color: #fff;
		float: right;
		font-size: 13px;
		border: none;
		min-width: 50px;
		border-radius: 2px;
		border: none;
		outline: none !important;
		margin-left: 10px;
	}
	.table-title .btn i {
		float: left;
		font-size: 21px;
		margin-right: 5px;
	}
	.table-title .btn span {
		float: left;
		margin-top: 2px;
	}
    table.table tr th, table.table tr td {
        border-color: #e9e9e9;
		padding: 12px 15px;
		vertical-align: middle;
    }
	table.table tr th:first-child {
		width: 60px;
	}
	table.table tr th:last-child {
		width: 100px;
	}
    table.table-striped tbody tr:nth-of-type(odd) {
    	background-color: #fcfcfc;
	}
	table.table-striped.table-hover tbody tr:hover {
		background: #f5f5f5;
	}
    table.table th i {
        font-size: 13px;
        margin: 0 5px;
        cursor: pointer;
    }	
    table.table td:last-child i {
		opacity: 0.9;
		font-size: 22px;
        margin: 0 5px;
    }
	table.table td a {
		font-weight: bold;
		color: #566787;
		display: inline-block;
		text-decoration: none;
		outline: none !important;
	}
	table.table td a:hover {
		color: #2196F3;
	}
	table.table td a.edit {
        color: #FFC107;
    }
    table.table td a.delete {
        color: #F44336;
    }
    table.table td i {
        font-size: 19px;
    }
	table.table .avatar {
		border-radius: 50%;
		vertical-align: middle;
		margin-right: 10px;
	}
    .pagination {
        float: right;
        margin: 0 0 5px;
    }
    .pagination li a {
        border: none;
        font-size: 13px;
        min-width: 30px;
        min-height: 30px;
        color: #999;
        margin: 0 2px;
        line-height: 30px;
        border-radius: 2px !important;
        text-align: center;
        padding: 0 6px;
    }
    .pagination li a:hover {
        color: #666;
    }	
    .pagination li.active a, .pagination li.active a.page-link {
        background: #03A9F4;
    }
    .pagination li.active a:hover {        
        background: #0397d6;
    }
	.pagination li.disabled i {
        color: #ccc;
    }
    .pagination li i {
        font-size: 16px;
        padding-top: 6px
    }
    .hint-text {
        float: left;
        margin-top: 10px;
        font-size: 13px;
    }    
	/* Custom checkbox */
	.custom-checkbox {
		position: relative;
	}
	.custom-checkbox input[type="checkbox"] {    
		opacity: 0;
		position: absolute;
		margin: 5px 0 0 3px;
		z-index: 9;
	}
	.custom-checkbox label:before{
		width: 18px;
		height: 18px;
	}
	.custom-checkbox label:before {
		content: '';
		margin-right: 10px;
		display: inline-block;
		vertical-align: text-top;
		background: white;
		border: 1px solid #bbb;
		border-radius: 2px;
		box-sizing: border-box;
		z-index: 2;
	}
	.custom-checkbox input[type="checkbox"]:checked + label:after {
		content: '';
		position: absolute;
		left: 6px;
		top: 3px;
		width: 6px;
		height: 11px;
		border: solid #000;
		border-width: 0 3px 3px 0;
		transform: inherit;
		z-index: 3;
		transform: rotateZ(45deg);
	}
	.custom-checkbox input[type="checkbox"]:checked + label:before {
		border-color: #03A9F4;
		background: #03A9F4;
	}
	.custom-checkbox input[type="checkbox"]:checked + label:after {
		border-color: #fff;
	}
	.custom-checkbox input[type="checkbox"]:disabled + label:before {
		color: #b8b8b8;
		cursor: auto;
		box-shadow: none;
		background: #ddd;
	}
	/* Modal styles */
	.modal .modal-dialog {
		max-width: 400px;
	}
	.modal .modal-header, .modal .modal-body, .modal .modal-footer {
		padding: 20px 30px;
	}
	.modal .modal-content {
		border-radius: 3px;
	}
	.modal .modal-footer {
		background: #ecf0f1;
		border-radius: 0 0 3px 3px;
	}
    .modal .modal-title {
        display: inline-block;
    }
	.modal .form-control {
		border-radius: 2px;
		box-shadow: none;
		border-color: #dddddd;
	}
	.modal textarea.form-control {
		resize: vertical;
	}
	.modal .btn {
		border-radius: 2px;
		min-width: 100px;
	}	
	.modal form label {
		font-weight: normal;
	}	
</style>
<script type="text/javascript">
$(document).ready(function(){
	// Activate tooltip
	$('[data-toggle="tooltip"]').tooltip();
	
	// Select/Deselect checkboxes
	var checkbox = $('table tbody input[type="checkbox"]');
	$("#selectAll").click(function(){
		if(this.checked){
			checkbox.each(function(){
				this.checked = true;                        
			});
		} else{
			checkbox.each(function(){
				this.checked = false;                        
			});
		} 
	});
	checkbox.click(function(){
		if(!this.checked){
			$("#selectAll").prop("checked", false);
		}
	});
});
</script>
</head>
<body onload='noBack()'>
    <div class="main-nav">
        <ul class="nav">
          <li class="name">Developer Admin</li>
          <li><a href="/FlyingShopFrontend/home/">Home</a></li>
          <li><a href="category">Category</a></li>
          <li><a href="product">Product</a></li>
          <li><a href="supplier">Supplier</a></li>
          <li><a href="/FlyingShopFrontend/logout">Logout</a></li>
        </ul>
    </div>
    <header>
      <img src="https://avatars1.githubusercontent.com/u/51260525?s=400&u=8c6b75deddc17879d32f87982d8590959b98dda8&v=4" alt="Photo of Christopher Jack" class="profile-image">
      <h1 class="tag name">Hello, I’m Developer.</h1>
      <p class="tag location">I'm An Alian</p>
    </header>
    <div class="container">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-6">
						<h2>Product Details</b></h2>
					</div>
					<div class="col-sm-6">
						<a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Add New Product</span></a>						
					</div>
                </div>
            </div>
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
						<th>
							<span class="custom-checkbox">
								<input type="checkbox" id="selectAll">
								<label for="selectAll"></label>
							</span>
						</th>
                        <th>Name</th>
                        <th>Price</th>
						<th>Quantity</th>
                        <th>Images</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${productlist}" var='product'>
                     <tr>
						<td>
							<span class="custom-checkbox">
								<input type="checkbox" id="checkbox1" name="options[]" value="1">
								<label for="checkbox1"></label>
							</span>
						</td>
                        <td>${product.productname}</td>
                        <td>${product.productprice}</td>
						<td>${product.productquantity}</td>
				<td><img src="<c:url value='/resources/image/${product.productid}.jpg'/>" height="100" width="100"></td>
                        <td>
                            <a href="editEmployeeModal/${product.productid}" class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                            <a href="deleteproduct/${product.productid}" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                        </td>
                    </tr>
                    <tr>
                    </c:forEach>
                    
                </tbody>
            </table>
        </div>
    </div>
	<!-- Edit Modal HTML -->
	<div id="addEmployeeModal" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<form:form method='post' modelAttribute='product' action='addproduct' enctype="multipart/form-data">
					<div class="modal-header">						
						<h4 class="modal-title">Add Product</h4>
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">					
						<div class="form-group">
							<label>Name</label>
							<form:input type='text' path='productname' class='form-control' required='true'/>
						</div>
						<div class="form-group">
							<label>Price</label>
							<form:input type='text' path='productprice' class='form-control' required='true'/>
						</div>
						<div class="form-group">
							<label>Quantity</label>
							<form:input type='text' path='productquantity' class='form-control' required='true'/>
						</div>
						<div class="form-group">
							<label>Product Description</label>	
							<form:textarea path='productdescription' class='form-control' required='true'/>
						</div>
						<div class="form-group">
							<label>Category</label><br>
							<form:select path="categoryid">
								<c:forEach items="${categorylist}" var="cat">
							<option value='${cat.categoryid}'>
								${cat.categoryname}
							</option>
						</c:forEach>
						</form:select><br></div>
						<div class="form-group">
							<label>Supplier</label><br>
						<form:select path="supplierid">
							<c:forEach items="${supplierlist}" var="supp">
							<option value='${supp.supplierid}'>
								${supp.suppliername}
								</option>
								</c:forEach>
							</form:select>
						</div>		
						<input type='file' name='image'/>
					</div>
					<div class="modal-footer">
						<input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
						<input type="submit" class="btn btn-success" value="Add">
					</div>
				</form:form>
			</div>
		</div>
	</div>
	<!-- Edit Modal HTML -->
	<div id="editEmployeeModal/${product.productid}" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<form:form method='post' modelAttribute='productedit' action='/FlyingShopFrontend/updateproduct'>
					<div class="modal-header">						
						<h4 class="modal-title"> Edit Product</h4>
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">					
						<div class="form-group">
							<label>Name</label>
							<form:input type='text' path='productname' class='form-control' required='true'/>
						</div>
						<div class="form-group">
							<label>Price</label>
							<form:input type='text' path='productprice' class='form-control' required='true'/>
						</div>
						<div class="form-group">
							<label>Quantity</label>
							<form:input type='text' path='productquantity' class='form-control' required='true'/>
						</div>
						<div class="form-group">
							<label>Category</label>
							:<form:select path="categoryid">
								<c:forEach items="${categorylist}" var="cat">
							<option value='${cat.categoryid}'>
								${cat.categoryname}
							</option>
						</c:forEach>
						</form:select><br></div>
						<div class="form-group">
							<label>Supplier</label>
						<form:select path="supplierid">
							<c:forEach items="${supplierlist}" var="supp">
							<option value='${supp.supplierid}'>
								${supp.suppliername}
								</option>
								</c:forEach>
							</form:select>
						</div>		
						<input type='file' name='image'/>
					</div>
					<div class="modal-footer">
						<input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
						<input type="submit" class="btn btn-success" value="Add">
					</div>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>                                		                            