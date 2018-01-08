<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
 <title>拍咪呀拍賣大平台_訂單內容</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Bootstrap styles -->
    <link href="assets/css/bootstrap.css" rel="stylesheet"/>
        <link href="assets/css/bootstrap_2.0.css" rel="stylesheet"/>
    <!-- Customize styles -->
    <link href="style.css" rel="stylesheet"/>
    <!-- font awesome styles -->
	<link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet">
		<!--[if IE 7]>
			<link href="css/font-awesome-ie7.min.css" rel="stylesheet">
		<![endif]-->

		<!--[if lt IE 9]>
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->

	<!-- Favicons -->
    <link rel="shortcut icon" href="assets/ico/favicon.ico">
   <script>
	function AddToCart() {
		window.location = 'OrderDetail?orderID='
				+ document.getElementById("orderID").value;
	}
</script><style>
body {
    font-family: "Lato", sans-serif;
}

.sidenav {
    height: 100%;
    width: 0;
    position: fixed;
    z-index: 1;
    top: 0;
    left: 0;
    background-color: #111;
    overflow-x: hidden;
    transition: 0.5s;
    padding-top: 60px;
}

.sidenav a {
    padding: 8px 8px 8px 32px;
    text-decoration: none;
    font-size: 25px;
    color: #818181;
    display: block;
    transition: 0.3s;
}

.sidenav a:hover {
    color: #f1f1f1;
}

.sidenav .closebtn {
    position: absolute;
    top: 0;
    right: 25px;
    font-size: 36px;
    margin-left: 50px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
</style>
</head>
<body>


<!--
Lower Header Section 
-->
<div class="container">
<div id="gototop"> </div>

<!--
Navigation Bar Section 
-->
<div class="navbar">
	  <div class="navbar-inner">
		<div class="container">
		  <a data-target=".nav-collapse" data-toggle="collapse" class="btn btn-navbar">
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		  </a>
		  <div class="nav-collapse">
			<ul class="nav">
			  <li class="active"><a href="index.html">Home	</a></li>
			  <li class=""><a href="list-view.html">List View</a></li>
			  <li class=""><a href="grid-view.html">Grid View</a></li>
			  <li class=""><a href="three-col.html">Three Column</a></li>
			  <li class=""><a href="four-col.html">Four Column</a></li>
			  <li class=""><a href="general.html">General Content</a></li>
			</ul>
			<form action="#" class="navbar-search pull-left">
			  <input type="text" placeholder="Search" class="search-query span2">
			</form>
			
		  </div>
		</div>
	  </div>
	</div>
<!-- 
Body Section 
-->
	<div class="row">
<div id="sidebar" class="span3">
<div class="well well-small">
<img src="assets/img/facebook-user.jpg" alt="">
	<ul class="nav nav-list">
		<li><a href="products.html"><span class="icon-chevron-right"></span></a></li>
		<li><a href="products.html"><span class="icon-chevron-right"></span></a></li>
		<li><a href="products.html"><span class="icon-chevron-right"></span></a></li>
		<li><a href="products.html"><span class="icon-chevron-right"></span></a></li>
		<li><a href="products.html"><span class="icon-chevron-right"></span></a></li>
		<li><a href="products.html"><span class="icon-chevron-right"></span></a></li>
		<li><a href="products.html"><span class="icon-chevron-right"></span></a></li>
		<li><a href="products.html"><span class="icon-chevron-right"></span></a></li>
		<li><a href="products.html"><span class="icon-chevron-right"></span></a></li>
		<li><a href="products.html"><span class="icon-chevron-right"></span></a></li>
		<li style="border:0"> &nbsp;</li>
	</ul>
</div>
<div class="well well-small">

	<ul class="nav nav-list">
		<li><a href="products.html"><span class="icon-chevron-right"></span></a></li>
		<li><a href="products.html"><span class="icon-chevron-right"></span></a></li>
		<li><a href="products.html"><span class="icon-chevron-right"></span></a></li>
		<li><a href="products.html"><span class="icon-chevron-right"></span></a></li>
		<li><a href="products.html"><span class="icon-chevron-right"></span></a></li>
		<li><a href="products.html"><span class="icon-chevron-right"></span></a></li>
		<li><a href="products.html"><span class="icon-chevron-right"></span></a></li>
		<li><a href="products.html"><span class="icon-chevron-right"></span></a></li>
		<li><a href="products.html"><span class="icon-chevron-right"></span></a></li>
		<li><a href="products.html"><span class="icon-chevron-right"></span></a></li>
		<li style="border:0"> &nbsp;</li>
	</ul>
</div>
		
			<br>
			<br>

	</div>
			<div class="span9">
				<ul class="breadcrumb">
					<li><a href="index.html">首頁</a> <span class="divider">/</span></li>
					<li><a href="products.html">會員管理</a> <span class="divider">/</span></li>
					<li class="active">訂單管理</li>
				</ul>
				<div class="well well-small">


					<div id="myTabContent" class="tab-content tabWrapper">
						<div class="tab-pane fade active in" id="home">
							<h4>訂單資訊</h4>
				
							<br> <br>

							<table class="table table-bordered table-condensed">
								<thead>
									<tr>
										<th>商品</th>
										<th>簡介</th>
										<th>單價</th>
										<th>數量</th>
										<th>金額</th>
										<th></th>
									</tr>
								</thead>
								<tbody>
								<c:forEach var="products" items="${OrderData.getOrderProducts()}">
										<tr>
										
											<td><a href="AccessRecordServlet?orderID=${products.productID}">
											<img width="100" src="assets/img/${products.img}" alt=""></a></td>
											<td><input type="" id="productID"
											value="${products.productID}"><br>
											</td>

											<td>${products.price}</td>
											<td>${products.quantity}</td>
											<td>${products.totalPrice}</td>
											
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<br />


						</div>
					</div>

				</div>
			</div>
	
</div> <!-- Body wrapper -->
<!-- 
Clients 
-->

<!--
Footer
-->

</div><!-- /container -->
<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="#">${session.get(0).productID}</a>
  <a href="DeleteSession">刪除閱覽紀錄</a>
 
</div>

<!-- Use any element to open the sidenav -->
<span onclick="openNav()"><h2>open</h2></span>

<!-- Add all page content inside this div if you want the side nav to push page content to the right (not used if you only want the sidenav to sit on top of the page -->
<div id="main">
  ...
</div>
<script>

function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
}
</script>
     
<div class="copyright">
<div class="container">
	<p class="pull-right">
		<a href="#"><img src="assets/img/maestro.png" alt="payment"></a>
		<a href="#"><img src="assets/img/mc.png" alt="payment"></a>
		<a href="#"><img src="assets/img/pp.png" alt="payment"></a>
		<a href="#"><img src="assets/img/visa.png" alt="payment"></a>
		<a href="#"><img src="assets/img/disc.png" alt="payment"></a>
	</p>
	<span>Copyright &copy; 2013<br> bootstrap ecommerce shopping template</span>
</div>
</div>
<a href="#" class="gotop"><i class="icon-double-angle-up"></i></a>
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="assets/js/jquery.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/jquery.easing-1.3.min.js"></script>
    <script src="assets/js/jquery.scrollTo-1.4.3.1-min.js"></script>
    <script src="assets/js/shop.js"></script>

</body>
</html>