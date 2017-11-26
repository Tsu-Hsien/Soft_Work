<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>拍咪呀拍賣大平台-會員訂單頁面</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<!-- Bootstrap styles -->
<link href="assets/css/bootstrap.css" rel="stylesheet" />
<!-- Customize styles -->
<link href="style.css" rel="stylesheet" />
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
</head>
<body>
	<!-- 
	Upper Header Section 
-->
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="topNav">
			<div class="container">
				<div class="alignR">
					<div class="pull-left socialNw">
						<a href="#"><span class="icon-twitter"></span></a> <a href="#"><span
							class="icon-facebook"></span></a> <a href="#"><span
							class="icon-youtube"></span></a> <a href="#"><span
							class="icon-tumblr"></span></a>
					</div>
					<a href="index.html"> <span class="icon-home"></span> Home
					</a> <a href="#"><span class="icon-user"></span> My Account</a> <a
						href="register.html"><span class="icon-edit"></span> Free
						Register </a> <a href="contact.html"><span class="icon-envelope"></span>
						Contact us</a> <a href="cart.html"><span
						class="icon-shopping-cart"></span> 2 Item(s) - <span
						class="badge badge-warning"> $448.42</span></a>
				</div>
			</div>
		</div>
	</div>

	<!--
Lower Header Section 
-->
	<div class="container">
		<div id="gototop"></div>

		<!--
Navigation Bar Section 
-->
		<div class="navbar">
			<div class="navbar-inner">
				<div class="container">
					<a data-target=".nav-collapse" data-toggle="collapse"
						class="btn btn-navbar"> <span class="icon-bar"></span> <span
						class="icon-bar"></span> <span class="icon-bar"></span>
					</a>
					<div class="nav-collapse">
						<ul class="nav">
							<li class="active"><a href="index.html">Home </a></li>
							<li class=""><a href="list-view.html">List View</a></li>
							<li class=""><a href="grid-view.html">Grid View</a></li>
							<li class=""><a href="three-col.html">Three Column</a></li>
							<li class=""><a href="four-col.html">Four Column</a></li>
							<li class=""><a href="general.html">General Content</a></li>
						</ul>
						<form action="#" class="navbar-search pull-left">
							<input type="text" placeholder="Search"
								class="search-query col-md-2">
						</form>
						<ul class="nav pull-right">
							<li class="dropdown"><a data-toggle="dropdown"
								class="dropdown-toggle" href="#"><span class="icon-lock"></span>
									Login <b class="caret"></b></a>
								<div class="dropdown-menu">
									<form class="form-horizontal loginFrm">
										<div class="control-group">
											<input type="text" class="col-md-2" id="inputEmail"
												placeholder="Email">
										</div>
										<div class="control-group">
											<input type="password" class="col-md-2" id="inputPassword"
												placeholder="Password">
										</div>
										<div class="control-group">
											<label class="checkbox"> <input type="checkbox">
												Remember me
											</label>
											<button type="submit" class="shopBtn btn-block">Sign
												in</button>
										</div>
									</form>
								</div></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!-- 
Body Section 
-->
		<div class="row">

			<div id="sidebar" class="col-md-3">
				<img src="assets/img/facebook-user.jpg" class="col-md-12" alt="">
				<br> <br>
				<div class="well well-small">

					<ul class="nav list-group">
						<li><a href="products.html"><span></span></a></li>
						<li><a href="products.html"><span></span></a></li>
						<li><a href="products.html"><span></span></a></li>
						<li><a href="products.html"><span></span></a></li>
						<li><a href="products.html"><span></span></a></li>
						<li><a href="products.html"><span></span></a></li>
						<li><a href="products.html"><span class=""></span></a></li>
						<li><a href="products.html"><span class=""></span></a></li>
						<li><a href="products.html"><span class=""></span></a></li>
						<li><a href="products.html"><span class=""></span></a></li>
						<li style="border: 0">&nbsp;</li>
					</ul>
				</div>
				<div class="well well-small">
					<ul class="nav nav-list">
						<li><a href="products.html"><span class=""></span></a></li>
						<li><a href="products.html"><span class=""></span></a></li>
						<li><a href="products.html"><span class=""></span></a></li>
						<li><a href="products.html"><span class=""></span></a></li>
						<li><a href="products.html"><span class=""></span></a></li>
						<li><a href="products.html"><span class=""></span></a></li>
						<li><a href="products.html"><span class=""></span></a></li>
						<li><a href="products.html"><span class=""></span></a></li>
						<li><a href="products.html"><span class=""></span></a></li>
						<li><a href="products.html"><span class=""></span></a></li>
						<li style="border: 0">&nbsp;</li>
					</ul>
				</div>




			</div>
			<div class="col-md-9">
				<ul class="breadcrumb">
					<li><a href="index.html">首頁</a> <span class="divider">/</span></li>
					<li><a href="products.html">會員管理</a> <span class="divider">/</span></li>
					<li class="active">訂單管理</li>
				</ul>
				<div class="well well-small">


					<div id="myTabContent" class="tab-content tabWrapper">
						<div class="tab-pane fade active in" id="home">
							<h4>訂單資訊</h4>
							<table class="table table-striped">
								<tbody>
									<tr class="techSpecRow">
										<td class="techSpecTD1">訂單信息</td>
										<td rowspan="2" class="alignR">物流資訊：${OrderData.state}</td>
									</tr>
									<tr class="techSpecRow">
										<td class="techSpecTD2">收貨地址：${OrderData.destination}<br>訂單編號：${OrderData.orderID}<br>賣家：張清風***
										</td>
									</tr>

								</tbody>
							</table>
							<br> <br>

							<table class="table table-bordered table-condensed">
								<thead>
									<tr>
										<th>商品</th>
										<th>商品名稱</th>

										<th>單價</th>
										<th>數量</th>
										<th>金額</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="products" items="${OrderData.getOrderProducts()}">
										<tr>
											<td><img width="100" src="assets/img/${products.getImg()}" alt=""></td>
											<td>${products.getName()}<br>
											</td>

											<td>${products.price}</td>
											<td>${products.quantity}</td>
											<td>${products.totalPrice}</td>
										</tr>
									</c:forEach>

									<tr>
										<td colspan="6" class="alignR">總商品金額：</td>
										<td class="label label-primary">${OrderData.price}</td>
									</tr>
									<tr>
										<td colspan="6" class="alignR">運費：</td>
										<td class="label label-primary">${OrderData.shippingFee}</td>
									</tr>
									<tr>
										<td colspan="6" class="alignR">總訂單金額：</td>
										<td class="label label-primary">${OrderData.price+OrderData.shippingFee}</td>
									</tr>
								</tbody>
							</table>
							<br />


						</div>
					</div>

				</div>
			</div>
		</div>
		<!-- Body wrapper -->
		<!-- 
Clients 
-->

		<!--
Footer
-->
	</div>
	<!-- /container -->

	<div class="copyright">
		<div class="container">
			<p class="pull-right">
				<a href="#"><img src="assets/img/maestro.png" alt="payment"></a>
				<a href="#"><img src="assets/img/mc.png" alt="payment"></a> <a
					href="#"><img src="assets/img/pp.png" alt="payment"></a> <a
					href="#"><img src="assets/img/visa.png" alt="payment"></a> <a
					href="#"><img src="assets/img/disc.png" alt="payment"></a>
			</p>
			<span>Copyright &copy; 2013<br> bootstrap ecommerce
				shopping template
			</span>
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