<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="pimiya.db.DBImplement"%>
<%@page import="pimiya.Product"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>帳戶管理頁面</title>
<!-- BOOTSTRAP STYLES-->

<script src="assets/js/jquery.js"></script>
<script src="assets/js/jquery.easing-1.3.min.js"></script>
<script src="assets/js/jquery.scrollTo-1.4.3.1-min.js"></script>
<script src="js/chart.js"></script>
<script src="js/d3.min.js"></script>

<script src="assets/js/bootstrap.js"></script>
<script src="assets/js/npm.js"></script>

<link href="assets/css/bootstrap.css" rel="stylesheet" />
<link href="assets/css/bootstrap.min.css" rel="stylesheet" />

<!-- 不改 styles -->
<link href="css/style.css" rel="stylesheet" />
<link href="assets/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet">
<link href="css/CommodityPageCss.css" rel="stylesheet">
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
			url : "EvaluationChangeServlet",
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
	<%
		String userId = (String) request.getSession().getAttribute("userId");

		List<String> feedbackList = DBImplement.queryNeedFeedbackProduct(userId); 
		List<Product> productList = new ArrayList<>();
		if (feedbackList.size() != 0) {

			for (String feedbackProductId : feedbackList) {
				Product product = DBImplement.queryProduct(feedbackProductId);
				productList.add(product);
			}
	%>
	<div>
		<div id="sidebar" class="col-md-3 container notDisplay">
			<div class="scrollbar" id="style-1">
				<div class="force-overflow">
					<div class="well well-sm">
						<ul class="nav nav-list promowrapper">
							<li><h4>其他未評分商品</h4></li>
							<%
								for (Product product : productList) {
							%>
							<li style="border: 0">&nbsp;</li>
							<li>
								<div class="thumbnail">
									<img src="<%=product.imageUrl1%>">
									<div class="caption">
										<h4>
											<input type="hidden" id="<%=product.productId%>"
												name="<%=product.productId%>" value="<%=product.productId%>">
											<button id="evaBtn"
												onclick="otherPro($('#<%=product.productId%>'))"
												class="defaultBtn">VIEW</button>
										</h4>
									</div>
								</div>
							</li>
							<%
								}
							%>
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
									<img src="<%=productList.get(0).imageUrl1%>" alt=""
										style="width: 100%">
								</div>
								<div id="img2" class="item">
									<img src="<%=productList.get(0).imageUrl2%>" alt=""
										style="width: 100%">
								</div>
								<div class="item" id="img3">
									<img src="<%=productList.get(0).imageUrl3%>" alt=""
										style="width: 100%">
								</div>
							</div>
							<a class="left carousel-control" href="#myCarousel"
								data-slide="prev">‹</a> <a class="right carousel-control"
								href="#myCarousel" data-slide="next">›</a>
						</div>
					</div>
					<div class="col-md-7">
						<h3 id="name"><%=productList.get(0).name%></h3>

						<hr class="soft" />
						<div class="form-group">
							<label class="control-label"><span>價錢</span></label>
							<h4 id="price"><%=productList.get(0).price%></h4>
						</div>

						<hr class="soft" />
						<h4>請評價</h4>
						<form method="post" action="EvaluationServlet">
							<input id="productID" name="productID"
								value="<%=productList.get(0).productId%>" type="hidden">
							<div class="row">
								<div class="col-lg-12">
									<div class="star-rating">
										<span class="fa fa-star-o" data-rating="1"></span> <span
											class="fa fa-star-o" data-rating="2"></span> <span
											class="fa fa-star-o" data-rating="3"></span> <span
											class="fa fa-star-o" data-rating="4"></span> <span
											class="fa fa-star-o" data-rating="5"></span> <input
											type="hidden" name="rating" class="rating-value" value="4">
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
	<%
		} else {
	%>
	
	<div style = "margin:0 auto;">
		<img src="productImg\666.png"></center>
	</div>
	
	<%
		}
	%>

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