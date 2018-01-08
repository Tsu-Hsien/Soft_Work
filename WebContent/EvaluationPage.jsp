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
<script src="assets/js/jquery.chart.js"></script>
<script src="assets/js/jquery.d3.js"></script>


<script src="assets/js/bootstrap.js"></script>
<script src="assets/js/npm.js"></script>

<link href="assets/css/bootstrap.css" rel="stylesheet" />
<link href="assets/css/bootstrap.min.css" rel="stylesheet" />



<!-- 不改 styles -->
<link href="style.css" rel="stylesheet" />
<link href="assets/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet">
<link href="CommodityPageCss.css" rel="stylesheet">
<script src="assets/js/shop.js"></script>
<link rel="shortcut icon" href="assets/ico/favicon.ico">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<style>
@font-face {
	font-family: BabyHeart;
	src: url(fonts/Typo_BabyHeartM.ttf);
}

@font-face {
	font-family: title;
	src: url(fonts/Typo_DecoSolidSlash.ttf);
}
</style>
<!-- font awesome styles -->

<!--[if IE 7]>
			<link href="css/font-awesome-ie7.min.css" rel="stylesheet">
		<![endif]-->

<!--[if lt IE 9]>
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->

<!-- Favicons -->

</head>
<body>
	

		<div>
			<div id="sidebar" class="col-md-3 container notDisplay">
				<div class="scrollbar" id="style-1">
					<div class="force-overflow">
						<div class="well well-sm">
							<ul class="nav nav-list promowrapper">
								<li><h4>其他未評分商品</h4></li>
								<li style="border: 0">&nbsp;</li>
								<li>
									<div class="thumbnail">
										<a class="zoomTool" href="product_details.html"
											title="add to cart"><span class="icon-search"></span>
											QUICK VIEW</a> <img src="assets/img/bootstrap-template.png"
											alt="bootstrap template">
										<div class="caption">

											<h4>
												<a class="defaultBtn" href="product_details.html">VIEW</a> <span
													class="pull-right">$22.00</span>
											</h4>
										</div>
									</div>
								</li>
								<li style="border: 0">&nbsp;</li>
								<li>
									<div class="thumbnail">
										<a class="zoomTool" href="product_details.html"
											title="add to cart"><span class="icon-search"></span>
											QUICK VIEW</a> <img src="assets/img/bootstrap-template.png"
											alt="bootstrap template">
										<div class="caption">
											<h4>
												<a class="defaultBtn" href="product_details.html">VIEW</a> <span
													class="pull-right">$22.00</span>
											</h4>
										</div>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-9 ">
				<div class="well well-sm">
					<div class="row">
						<div class="col-md-5">
							<div id="myCarousel" class="carousel slide">
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
									data-slide="prev">‹</a> <a class="right carousel-control"
									href="#myCarousel" data-slide="next">›</a>
							</div>
						</div>
						<div class="col-md-7">
							<h3>Name of the Item [$140.00]</h3>
							<hr class="soft" />
							<div class="form-group">
								<label class="control-label"><span>價錢</span></label>
								<h4>$140</h4>
							</div>
							<div class="form-group">
								<label class="control-label"><span>價錢</span></label>
								<h4>$140</h4>
							</div>
							<label class="control-label"><span>價錢</span></label>
							<h4>$140</h4>
							<hr class="soft" />
							<h4>請評價</h4>
							<div class="container">
								<div class="row">
									<div class="col-lg-12">
										<div class="star-rating">
											<span class="fa fa-star-o" data-rating="1"></span> <span
												class="fa fa-star-o" data-rating="2"></span> <span
												class="fa fa-star-o" data-rating="3"></span> <span
												class="fa fa-star-o" data-rating="4"></span> <span
												class="fa fa-star-o" data-rating="5"></span> <input
												type="hidden" name="whatever3" class="rating-value"
												value="4.1">
										</div>
									</div>
								</div>
								<button type="submit" class="shopBtn">
									<span class=" icon-shopping-cart"></span> 評價
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>



	<script>
		var $star_rating = $('.star-rating .fa');

		var SetRatingStar = function() {
			return $star_rating
					.each(function() {
						if (parseInt($star_rating
								.siblings('input.rating-value').val()) >= parseInt($(
								this).data('rating'))) {
							return $(this).removeClass('fa-star-o').addClass(
									'fa-star');
						} else {
							return $(this).removeClass('fa-star').addClass(
									'fa-star-o');
						}
					});
		};

		$star_rating.on('click', function() {
			$star_rating.siblings('input.rating-value').val(
					$(this).data('rating'));
			return SetRatingStar();
		});

		SetRatingStar();
		$(document).ready(function() {

		});
	</script>
	<!-- /container -->
	<script src="templete/bs-twopage/assets/js/jquery-1.10.2.js"></script>
	<!-- BOOTSTRAP SCRIPTS -->
	<script src="templete/bs-twopage/assets/js/bootstrap.min.js"></script>
	<!-- METISMENU SCRIPTS -->
	<script src="templete/bs-twopage/assets/js/jquery.metisMenu.js"></script>
	<!-- CUSTOM SCRIPTS -->
	<script src="templete/bs-twopage/assets/js/custom.js"></script>
</body>
</html>