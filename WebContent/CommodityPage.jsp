<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<html>
<head>
<meta charset="utf-8">
<title>CommodityPage</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<!-- Bootstrap styles -->

<script src="assets/js/jquery.js"></script>
<script src="assets/js/jquery.easing-1.3.min.js"></script>
<script src="assets/js/jquery.scrollTo-1.4.3.1-min.js"></script>




<script src="assets/js/bootstrap.js"></script>
<link href="assets/css/bootstrap.css" rel="stylesheet" />
<link href="assets/css/bootstrap.min.css" rel="stylesheet" />







<!-- 不改 styles -->
<link href="style.css" rel="stylesheet" />

<link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet">
<link href="CommodityPageCss.css" rel="stylesheet">
<script src="assets/js/shop.js"></script>
<link rel="shortcut icon" href="assets/ico/favicon.ico">
<!-- font awesome styles -->

<!--[if IE 7]>
			<link href="css/font-awesome-ie7.min.css" rel="stylesheet">
		<![endif]-->

<!--[if lt IE 9]>
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->

<!-- Favicons -->

</head>
<body class="col-md-9">
	<div class="row">
		<ul class="breadcrumb">
			<li><a href="index.html">首頁</a> <span class="divider">/</span></li>
			<li><a href="products.html">分類</a> <span class="divider">/</span></li>
			<li class="active">目前頁面</li>
		</ul>
		<div class="well well-small">
			<div class="row">
				<div class="col-md-5">
					<div id="myCarousel" class="carousel slide cntr">
						<div class="carousel-inner">
							<div class="item active">
								<a href="#"> <img src="assets/img/a.jpg" alt=""
									style="width: 100%"></a>
							</div>
							<div class="item">
								<a href="#"> <img src="assets/img/b.jpg" alt=""
									style="width: 100%"></a>
							</div>
							<div class="item">
								<a href="#"> <img src="assets/img/e.jpg" alt=""
									style="width: 100%"></a>
							</div>
						</div>
						<a class="left carousel-control" href="#myCarousel"
							data-slide="prev">&lsaquo;</a> <a class="right carousel-control"
							href="#myCarousel" data-slide="next">&rsaquo;</a>
					</div>
				</div>
				<div class="col-md-7">
					<h3>商品名稱 [$140.00]</h3>
					<hr class="soft" />

					<form class="form-horizontal qtyFrm">
						<div class="form-group">
							<label class="control-label"><span>$140.00</span></label>
							<div class="controls">
								<input type="number" class="col-md-6" placeholder="Qty.">
							</div>
						</div>

						<div class="form-group">
							<label class="control-label"><span>顏色選單</span></label>
							<div class="controls">
								<select class="col-md-11">
									<option>Red</option>
									<option>Purple</option>
									<option>Pink</option>
									<option>Red</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label"><span>種類選單</span></label>
							<div class="controls">
								<select class="col-md-11">
									<option>Material 1</option>
									<option>Material 2</option>
									<option>Material 3</option>
									<option>Material 4</option>
								</select>
							</div>
						</div>
						<h4>剩餘數量 :100</h4>
						<p>簡介asdasdsasdadsasdasdasdsasdadsasdasdasdsasdadsasdasdasdsasdadsasdasdasdsasdadsasdasdasdsasdadsasdasdasdsasdadsasdasdasdsasdadsasdasdasdsasdadsasdasdasdsasdadsasdasdasdsasdadsasdasdasdsasdadsasd
							...
						<p>
							<button type="submit" class="shopBtn">
								<span class=" icon-shopping-cart"></span> 加入購物車
							</button>
					</form>
					<div class="container">
						<div class="row">
							<div class="col-xs-12 col-md-6">
								<div class="well well-sm">
									<div class="row">
										<div class="col-xs-12 col-md-6 text-center">
											<h1 class="rating-num">3.8</h1>
											<div class="rating">
												<span class="glyphicon glyphicon-star"></span><span
													class="glyphicon glyphicon-star"> </span><span
													class="glyphicon glyphicon-star"></span><span
													class="glyphicon glyphicon-star"> </span><span
													class="glyphicon glyphicon-star-empty"></span>
											</div>
											<div>
												<span class="glyphicon glyphicon-user"></span>1,050,008
												total
											</div>
										</div>
										<div class="col-xs-12 col-md-6">
											<div class="row rating-desc">
												<div class="col-xs-3 col-md-3 text-right">
													<span class="glyphicon glyphicon-star"></span>5
												</div>
												<div class="col-xs-8 col-md-9">
													<div class="progress progress-striped">
														<div class="progress-bar progress-bar-success"
															role="progressbar" aria-valuenow="20" aria-valuemin="0"
															aria-valuemax="100" style="width: 80%">
															<span class="sr-only">80%</span>
														</div>
													</div>
												</div>
												<!-- end 5 -->
												<div class="col-xs-3 col-md-3 text-right">
													<span class="glyphicon glyphicon-star"></span>4
												</div>
												<div class="col-xs-8 col-md-9">
													<div class="progress">
														<div class="progress-bar progress-bar-success"
															role="progressbar" aria-valuenow="20" aria-valuemin="0"
															aria-valuemax="100" style="width: 60%">
															<span class="sr-only">60%</span>
														</div>
													</div>
												</div>
												<!-- end 4 -->
												<div class="col-xs-3 col-md-3 text-right">
													<span class="glyphicon glyphicon-star"></span>3
												</div>
												<div class="col-xs-8 col-md-9">
													<div class="progress">
														<div class="progress-bar progress-bar-info"
															role="progressbar" aria-valuenow="20" aria-valuemin="0"
															aria-valuemax="100" style="width: 40%">
															<span class="sr-only">40%</span>
														</div>
													</div>
												</div>
												<!-- end 3 -->
												<div class="col-xs-3 col-md-3 text-right">
													<span class="glyphicon glyphicon-star"></span>2
												</div>
												<div class="col-xs-8 col-md-9">
													<div class="progress">
														<div class="progress-bar progress-bar-warning"
															role="progressbar" aria-valuenow="20" aria-valuemin="0"
															aria-valuemax="100" style="width: 20%">
															<span class="sr-only">20%</span>
														</div>
													</div>
												</div>
												<!-- end 2 -->
												<div class="col-xs-3 col-md-3 text-right">
													<span class="glyphicon glyphicon-star"></span>1
												</div>
												<div class="col-xs-8 col-md-9">
													<div class="progress">
														<div class="progress-bar progress-bar-danger"
															role="progressbar" aria-valuenow="80" aria-valuemin="0"
															aria-valuemax="100" style="width: 30%">
															<span class="sr-only">30%</span>
														</div>
													</div>
												</div>
												<!-- end 1 -->
											</div>
											<!-- end row -->
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<hr class="softn clr" />


			<ul id="productDetail" class="nav nav-tabs">
				<li class="active"><a href="#detail" data-toggle="tab">商品敘述</a></li>
				<li class=""><a href="#question" data-toggle="tab">留言版</a></li>
			</ul>
			<div id="myTabContent" class="tab-content tabWrapper">
				<div class="tab-pane fade active in" id="detail">
					<h4>Product Information</h4>
					<table class="table table-striped">
						<tbody>
							<tr class="techSpecRow">
								<td class="techSpecTD1">類別1:</td>
								<td class="techSpecTD2">Black</td>
							</tr>
							<tr class="techSpecRow">
								<td class="techSpecTD1">類別2:</td>
								<td class="techSpecTD2">Apparel,Sports</td>
							</tr>
							<tr class="techSpecRow">
								<td class="techSpecTD1">類別3:</td>
								<td class="techSpecTD2">spring/summer</td>
							</tr>
							<tr class="techSpecRow">
								<td class="techSpecTD1">類別4:</td>
								<td class="techSpecTD2">fitness</td>
							</tr>
							<tr class="techSpecRow">
								<td class="techSpecTD1">類別5:</td>
								<td class="techSpecTD2">122855031</td>
							</tr>
							<tr class="techSpecRow">
								<td class="techSpecTD1">類別6:</td>
								<td class="techSpecTD2">Shock Absorber</td>
							</tr>
						</tbody>
					</table>
					<p>qweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqwev</p>
					<p>qweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqwe</p>
					<p>Raw denim you probably haven't heard of them jean shorts
						Austin. Nesciunt tofu stumptown aliqua, retro synth master
						cleanse. Mustache cliche tempor, williamsburg carles vegan
						helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher
						synth. Cosby sweater eu banh mi, qui irure terry richardson ex
						squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis
						cardigan american apparel, butcher voluptate nisi qui.</p>
					<p>Raw denim you probably haven't heard of them jean shorts
						Austin. Nesciunt tofu stumptown aliqua, retro synth master
						cleanse. Mustache cliche tempor, williamsburg carles vegan
						helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher
						synth. Cosby sweater eu banh mi, qui irure terry richardson ex
						squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis
						cardigan american apparel, butcher voluptate nisi qui.</p>
					<p>Raw denim you probably haven't heard of them jean shorts
						Austin. Nesciunt tofu stumptown aliqua, retro synth master
						cleanse. Mustache cliche tempor, williamsburg carles vegan
						helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher
						synth. Cosby sweater eu banh mi, qui irure terry richardson ex
						squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis
						cardigan american apparel, butcher voluptate nisi qui.</p>
					<p>Raw denim you probably haven't heard of them jean shorts
						Austin. Nesciunt tofu stumptown aliqua, retro synth master
						cleanse. Mustache cliche tempor, williamsburg carles vegan
						helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher
						synth. Cosby sweater eu banh mi, qui irure terry richardson ex
						squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis
						cardigan american apparel, butcher voluptate nisi qui.</p>
					<p>Raw denim you probably haven't heard of them jean shorts
						Austin. Nesciunt tofu stumptown aliqua, retro synth master
						cleanse. Mustache cliche tempor, williamsburg carles vegan
						helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher
						synth. Cosby sweater eu banh mi, qui irure terry richardson ex
						squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis
						cardigan american apparel, butcher voluptate nisi qui.</p>
					<p>Raw denim you probably haven't heard of them jean shorts
						Austin. Nesciunt tofu stumptown aliqua, retro synth master
						cleanse. Mustache cliche tempor, williamsburg carles vegan
						helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher
						synth. Cosby sweater eu banh mi, qui irure terry richardson ex
						squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis
						cardigan american apparel, butcher voluptate nisi qui.</p>

				</div>

				<div class="tab-pane fade" id="question">

					<div class="media">
						<a class="media-left" href="#"> <img class="media-object"
							src="assets/img/user.jpg" alt="媒体对象">
						</a>
						<div class="media-body">
							<h4 class="media-heading">媒体标题</h4>
							这是一些示例文本。这是一些示例文本。 这是一些示例文本。这是一些示例文本。 这是一些示例文本。这是一些示例文本。
							这是一些示例文本。这是一些示例文本。 这是一些示例文本。这是一些示例文本。
						</div>
					</div>
					<div class="media">
						<a class="media-left" href="#"> <img class="media-object"
							src="assets//img/user.jpg" alt="媒体对象">
						</a>
						<div class="media-body">
							<h4 class="media-heading">媒体标题</h4>
							这是一些示例文本。这是一些示例文本。 这是一些示例文本。这是一些示例文本。 这是一些示例文本。这是一些示例文本。
							这是一些示例文本。这是一些示例文本。 这是一些示例文本。这是一些示例文本。
						</div>
					</div>
					<div class="media">
						<a class="media-left" href="#"> <img class="media-object"
							src="assets//img/user.jpg" alt="媒体对象">
						</a>
						<div class="media-body">
							<h4 class="media-heading">媒体标题</h4>
							这是一些示例文本。这是一些示例文本。 这是一些示例文本。这是一些示例文本。 这是一些示例文本。这是一些示例文本。
							这是一些示例文本。这是一些示例文本。 这是一些示例文本。这是一些示例文本。
						</div>
					</div>
					<div class="media">
						<a class="media-left" href="#"> <img class="media-object "
							src="assets//img/user.jpg" alt="媒体对象">
						</a>
						<div class="media-body ">
							<form class="form-horizontal " role="form">
								<div class="form-group">
									<div>
										<input type="text" class="form-control comment media-heading"
											id="CommentTitle" placeholder="请输入標題...">
									</div>
								</div>
								<div class="form-group">
									<label for="name"></label>
									<textarea class="form-control comment" rows="3"
										placeholder="請輸入內容..."></textarea>
								</div>
								<div class="form-group">
									<div class="col-sm-offset-2 col-sm-10">
										<button type="submit" class="btn btn-default">留言</button>
									</div>
								</div>
							</form>
						</div>
					</div>
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
	<footer class="footer">
		<div class="row">
			<div class="col-md-2">
				<h5>Your Account</h5>
				<a href="#">YOUR ACCOUNT</a><br> <a href="#">PERSONAL
					INFORMATION</a><br> <a href="#">ADDRESSES</a><br> <a href="#">DISCOUNT</a><br>
				<a href="#">ORDER HISTORY</a><br>
			</div>
			<div class="col-md-2">
				<h5>Iinformation</h5>
				<a href="contact.html">CONTACT</a><br> <a href="#">SITEMAP</a><br>
				<a href="#">LEGAL NOTICE</a><br> <a href="#">TERMS AND
					CONDITIONS</a><br> <a href="#">ABOUT US</a><br>
			</div>
			<div class="col-md-2">
				<h5>Our Offer</h5>
				<a href="#">NEW PRODUCTS</a> <br> <a href="#">TOP SELLERS</a><br>
				<a href="#">SPECIALS</a><br> <a href="#">MANUFACTURERS</a><br>
				<a href="#">SUPPLIERS</a> <br />
			</div>
			<div class="col-md-6">
				<h5>The standard chunk of Lorem</h5>
				The standard chunk of Lorem Ipsum used since the 1500s is reproduced
				below for those interested. Sections 1.10.32 and 1.10.33 from "de
				Finibus Bonorum et Malorum" by Cicero are also reproduced in their
				exact original form, accompanied by English versions from the 1914
				translation by H. Rackham.
			</div>
		</div>
	</footer>
	</div>
	<!-- /container -->

</body>
</html>