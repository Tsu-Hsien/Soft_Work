<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"%>
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
<script>
	function OrderDetail() {
		window.location = 'OrderDetail?orderID='
				+ document.getElementById("orderID").value;
	}
</script>
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
								class="search-query span2">
						</form>
						<ul class="nav pull-right">
							<li class="dropdown"><a data-toggle="dropdown"
								class="dropdown-toggle" href="#"><span class="icon-lock"></span>
									Login <b class="caret"></b></a>
								<div class="dropdown-menu">
									<form class="form-horizontal loginFrm">
										<div class="control-group">
											<input type="text" class="span2" id="inputEmail"
												placeholder="Email">
										</div>
										<div class="control-group">
											<input type="password" class="span2" id="inputPassword"
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

			<div id="sidebar" class="span3">
				<img src="assets/img/facebook-user.jpg" alt=""> <br> <br>
				<div class="well well-small">

					<ul class="nav nav-list">
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
			<div class="span9">
				<ul class="breadcrumb">
					<li><a href="index.html">首頁</a> <span class="divider">/</span></li>
					<li><a href="products.html">會員管理</a> <span class="divider">/</span></li>
					<li class="active">訂單管理</li>
				</ul>
				<div class="well well-small">

					<ul id="productDetail" class="nav nav-tabs">
						<li class="active"><a href="#prepare" data-toggle="tab">待出貨</a></li>
						<li class=""><a href="#transporting" data-toggle="tab">運送中</a></li>
						<li class=""><a href="#waiting" data-toggle="tab">待收貨</a></li>
						<li class=""><a href="#finished" data-toggle="tab">已完成</a></li>


					</ul>
					<div id="myTabContent" class="tab-content tabWrapper">
						<div class="tab-pane fade active in" id="prepare">
							<h4></h4>
							<table class="table table-striped">
								<tbody>

									<tr class="techSpecRow">
										<td class="techSpecTD1">訂單編號</td>
										<td class="techSpecTD2">下單日期</td>
										<td class="techSpecTD2">訂單金額</td>
										<td class="techSpecTD3">訂單狀態</td>
										<td class="techSpecTD3"></td>
									</tr>
									<tr class="techSpecRow">
										<td class="techSpecTD2"><input type="hidden" id="orderID"
											value="5783255555">5783255555 </td>
										<td class="techSpecTD2">2017/11/25</td>
										<td class="techSpecTD2">599</td>
										<td class="techSpecTD3">賣家備貨中</td>
										<td class="techSpecTD3"><button class="btn btn-danger"
												onclick="OrderDetail()">訂單詳情</button></td>
									</tr>
									<tr class="techSpecRow">
										<td class="techSpecTD1">5783255555</td>
										<td class="techSpecTD2">2017/11/26</td>
										<td class="techSpecTD2">600</td>
										<td class="techSpecTD3">賣家備貨中</td>
										<td class="techSpecTD3"><a href="AccountDetail.jsp"><button
													class="btn btn-danger">訂單詳情</button></a></td>
									</tr>

								</tbody>
							</table>

						</div>
						<div class="tab-pane fade" id="transporting">
							<h4></h4>
							<table class="table table-striped">
								<tbody>
									<tr class="techSpecRow">
										<td class="techSpecTD1">訂單編號</td>
										<td class="techSpecTD2">下單日期</td>
										<td class="techSpecTD2">訂單金額</td>
										<td class="techSpecTD3">訂單狀態</td>
										<td class="techSpecTD3"></td>
									</tr>
									<tr class="techSpecRow">
										<td class="techSpecTD2">5783255555</td>
										<td class="techSpecTD2">2017/11/27</td>
										<td class="techSpecTD2">123</td>
										<td class="techSpecTD3">賣家備貨中</td>
										<td class="techSpecTD3"><a href="AccountDetail.jsp"><button
													class="btn btn-danger">訂單詳情</button></a></td>
									</tr>
									<tr class="techSpecRow">
										<td class="techSpecTD1">5789524445</td>
										<td class="techSpecTD2">2017/11/28</td>
										<td class="techSpecTD2">456</td>
										<td class="techSpecTD3">賣家備貨中</td>
										<td class="techSpecTD3"><a href="AccountDetail.jsp"><button
													class="btn btn-danger">訂單詳情</button></a></td>
									</tr>

								</tbody>
							</table>

						</div>
						<div class="tab-pane fade" id="waiting">
							<h4></h4>
							<table class="table table-striped">
								<tbody>
									<tr class="techSpecRow">
										<td class="techSpecTD1">訂單編號</td>
										<td class="techSpecTD2">下單日期</td>
										<td class="techSpecTD2">訂單金額</td>
										<td class="techSpecTD3">訂單狀態</td>
										<td class="techSpecTD3"></td>
									</tr>
									<tr class="techSpecRow">
										<td class="techSpecTD2">1111155555</td>
										<td class="techSpecTD2">2017/09/27</td>
										<td class="techSpecTD2">697</td>
										<td class="techSpecTD3">賣家備貨中</td>
										<td class="techSpecTD3"><a href="AccountDetail.jsp"><button
													class="btn btn-danger">訂單詳情</button></a></td>
									</tr>
									<tr class="techSpecRow">
										<td class="techSpecTD1">7897524445</td>
										<td class="techSpecTD2">2017/10/28</td>
										<td class="techSpecTD2">500</td>
										<td class="techSpecTD3">賣家備貨中</td>
										<td class="techSpecTD3"><a href="AccountDetail.jsp"><button
													class="btn btn-danger">訂單詳情</button></a></td>
									</tr>

								</tbody>
							</table>

						</div>
						<div class="tab-pane fade" id="finished">
							<h4></h4>
							<table class="table table-striped">
								<tbody>
									<tr class="techSpecRow">
										<td class="techSpecTD1">訂單編號</td>
										<td class="techSpecTD2">下單日期</td>
										<td class="techSpecTD2">訂單金額</td>
										<td class="techSpecTD3">訂單狀態</td>
										<td class="techSpecTD3"></td>
									</tr>
									<tr class="techSpecRow">
										<td class="techSpecTD2">4752255555</td>
										<td class="techSpecTD2">2016/11/27</td>
										<td class="techSpecTD2">499</td>
										<td class="techSpecTD3">賣家備貨中</td>
										<td class="techSpecTD3"><a href="AccountDetail.jsp"><button
													class="btn btn-danger">訂單詳情</button></a></td>
									</tr>
									<tr class="techSpecRow">
										<td class="techSpecTD1">4444524445</td>
										<td class="techSpecTD2">2016/03/28</td>
										<td class="techSpecTD2">299</td>
										<td class="techSpecTD3">賣家備貨中</td>
										<td class="techSpecTD3"><a href="AccountDetail.jsp"><button
													class="btn btn-danger">訂單詳情</button></a></td>
									</tr>

								</tbody>
							</table>

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