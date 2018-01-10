<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
 <title>��}�r���j���x_�q�椺�e</title>
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
</script>
</head>
<body>


<!--
Lower Header Section 
-->
<div class="container">
<div id="gototop"> </div>

<jsp:include page="include/header.jsp"/>
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
					<li><a href="index.html">����</a> <span class="divider">/</span></li>
					<li><a href="products.html">�|���޲z</a> <span class="divider">/</span></li>
					<li class="active">�q��޲z</li>
				</ul>
				<div class="well well-small">


					<div id="myTabContent" class="tab-content tabWrapper">
						<div class="tab-pane fade active in" id="home">
							<h4>�q���T</h4>
							<table class="table table-striped">
								<tbody>
									<tr class="techSpecRow">
										<td class="techSpecTD1">�q��H��</td>
										<td rowspan="2" class="alignR">���y��T�G${OrderData.state}</td>
									</tr>
									<tr class="techSpecRow">
										<td class="techSpecTD2">���f�a�}�G${OrderData.destination}<br>�q��s���G${OrderData.orderID}<br>��a�G�i�M��
										</td>
									</tr>

								</tbody>
							</table>
							<br> <br>

							<table class="table table-bordered table-condensed">
								<thead>
									<tr>
										<th>�ӫ~</th>
										<th>²��</th>
										<th>���</th>
										<th>�ƶq</th>
										<th>���B</th>
										<th></th>
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
										<td colspan="6" class="alignR">�`�ӫ~���B�G</td>
										<td class="label label-primary">${OrderData.price}</td>
									</tr>
									<tr>
										<td colspan="6" class="alignR">�B�O�G</td>
										<td class="label label-primary">${OrderData.shippingFee}</td>
									</tr>
									<tr>
										<td colspan="6" class="alignR">�`�q����B�G</td>
										<td class="label label-primary">${OrderData.price+OrderData.shippingFee}</td>
									</tr>
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