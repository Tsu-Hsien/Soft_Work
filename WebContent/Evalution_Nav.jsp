<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>帳戶管理頁面</title>
<!-- BOOTSTRAP STYLES-->

<script src="assets/js/jquery.js"></script>
<script src="assets/js/jquery.easing-1.3.min.js"></script>
<script src="assets/js/jquery.scrollTo-1.4.3.1-min.js"></script>
<script src="assets/js/chart.js"></script>
<script src="assets/js/d3.min.js"></script>


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



<link href="templete/bs-twopage/assets/css/custom.css" rel="stylesheet" />
<!-- GOOGLE FONTS-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css' />
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
<script>
	function otherPro(btn) {
		console.log(btn.val())
		$.ajax({
			type : "POST",
			url : "EvaChangeServlet",
			data : {
				productID : $(btn).val()
			},
			dataType : "json",
			success : function(e) {
				console.log("1." + e.productID)
				$("#img1").html(
						"<img src='" + e.img1 + "' style='width: 100%'>");
				$("#img2").html(
						"<img src='" + e.img2 + "' style='width: 100%'>");
				$("#img3").html(
						"<img src='" + e.img3 + "' style='width: 100%'>");
				$("#name").html(e.name);
				$("#price").html(e.price);
				$("#date").html(e.date);
				$("#productID").val(e.productID);
				console.log("2." + $("#productID").val())
			},
			error : function(jqXHR, exception) {
				console.log(jqXHR.status);
			}

		});

	}
</script>
</head>
<body>
	<div id="wrapper">
		<div class="navbar navbar-inverse navbar-fixed-top">
			<div class="adjust-nav">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".sidebar-collapse">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" style="font-family: title; font-size: 40px"
						href="#"><i class="fa fa-square-o "></i>&nbsp;PiMiYa</a>
				</div>
				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="#">首頁</a></li>
						<li><a href="#">購物車</a></li>
						<li><a href="#">帳戶</a></li>
						<li><a href="#">登入/登出</a></li>
					</ul>
				</div>

			</div>
		</div>
		<!-- /. NAV TOP  -->
		<nav class="navbar-default navbar-side" role="navigation"
			style="position: fixed">
			<div class="sidebar-collapse">
				<ul class="nav" id="main-menu">
					<li class="text-center user-image-back"><img
						src="templete/bs-twopage/assets/img/find_user.png"
						class="img-responsive" /></li>


					<li><a href="index.html"><i class="fa fa-edit"></i>帳戶管理</a></li>
					<li><a href="#"><i class="fa fa-table "></i>買家帳戶管理<span
							class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="#">瀏覽紀錄</a></li>
							<li><a href="#">訂單查詢</a></li>
						</ul></li>

					<li><a href="#"><i class="fa fa-bar-chart-o"></i>賣家帳戶管理<span
							class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="#">商場首頁</a></li>
							<li><a href="shelve.html">上架商品</a></li>
							<li><a href="#">訂單管理</a></li>
							<li><a href="report.html">業績報表</a></li>
						</ul></li>
					<li><a href="#"><i class="fa fa-comment "></i>個人訊息</a></li>
					<li><a href="#"><i class="fa fa-trophy"></i>評價查詢</a></li>

				</ul>
			</div>
		</nav>
		<div id="page-wrapper">
			<div id="page-inner">
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
												<img src="assets/img/e.jpg">
												<div class="caption">
													<h4>
														<input type="hidden" id="productID01" name="productID01"
															value="a01">
														<button id="evaBtn" onclick="otherPro($('#productID01'))"
															class="defaultBtn">VIEW</button>
													</h4>
												</div>
											</div>
										</li>
										<li style="border: 0">&nbsp;</li>
										<li>
											<div class="thumbnail">
												<img src="assets/img/e.jpg">
												<div class="caption">
													<h4>
														<input type="hidden" id="productID01" name="productID01"
															value="a01">
														<button id="evaBtn" class="defaultBtn">VIEW</button>
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
											<div id="img1" class="item active">
												<img src="assets/img/a.jpg" alt="" style="width: 100%">
											</div>
											<div id="img2" class="item">
												<img src="assets/img/a.jpg" alt="" style="width: 100%">
											</div>
											<div class="item" id="img3">
												<img src="assets/img/a.jpg" alt="" style="width: 100%">
											</div>
										</div>
										<a class="left carousel-control" href="#myCarousel"
											data-slide="prev">‹</a> <a class="right carousel-control"
											href="#myCarousel" data-slide="next">›</a>
									</div>
								</div>
								<div class="col-md-7">
									<h3 id="name">Name of the Item [$140.00]</h3>

									<hr class="soft" />
									<div class="form-group">
										<label class="control-label"><span>價錢</span></label>
										<h4 id="price">$140</h4>
									</div>
									<div class="form-group">
										<label class="control-label"><span>購買日期</span></label>
										<h4 id="date">2015/03/19</h4>
									</div>
									<hr class="soft" />
									<h4>請評價</h4>
									<form method="post" action="EvaluateServlet">
										<input id="productID" name="productID" value="a03"
											type="hidden">
										<div class="row">
											<div class="col-lg-12">
												<div class="star-rating">
													<span class="fa fa-star-o" data-rating="1"></span> <span
														class="fa fa-star-o" data-rating="2"></span> <span
														class="fa fa-star-o" data-rating="3"></span> <span
														class="fa fa-star-o" data-rating="4"></span> <span
														class="fa fa-star-o" data-rating="5"></span> <input
														type="hidden" name="rating" class="rating-value"
														value="4.1">
												</div>
											</div>
										</div>
										<button type="submit" class="shopBtn">
											<span class=" icon-shopping-cart"></span> 評價
										</button>
									</form>
								</div>
							</div>
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
	<!-- /. WRAPPER  -->
	<!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
	<!-- JQUERY SCRIPTS -->
	<script src="templete/bs-twopage/assets/js/jquery-1.10.2.js"></script>
	<!-- BOOTSTRAP SCRIPTS -->
	<script src="templete/bs-twopage/assets/js/bootstrap.min.js"></script>
	<!-- METISMENU SCRIPTS -->
	<script src="templete/bs-twopage/assets/js/jquery.metisMenu.js"></script>
	<!-- CUSTOM SCRIPTS -->
	<script src="templete/bs-twopage/assets/js/custom.js"></script>


</body>
</html>