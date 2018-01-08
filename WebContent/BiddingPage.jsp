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

<script>
function ShowAnswer(){
	var price = parseInt(document.getElementById("addPrice").value) + 140;//140要改成目前價格
	document.getElementById("PriceBox").innerHTML= price;
}

</script>
</head>
<body width=1200px>
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
					<h3>商品名稱</h3>
					<hr class="soft" />

					<form class="form-horizontal qtyFrm">
						<h4>目前出價: $<span id = "nowPrice" >140</span>(帳號)</h4>
						<h4>每次出價不得少於$10</h4>
						<div class="form-group">
							<label class="control-label"><span>加價:</span></label> <input
								type="number" class="col-md6 addPrice" value = 10
								min="10" id = "addPrice">
						</div>
						<p>簡介asdasdsasdadsasdasdasdsasdadsasdasdasdsasdadsasdasdasdsasdadsasdasdasdsasdadsasdasdasdsasdadsasdasdasdsasdadsasdasdasdsasdadsasdasdasdsasdadsasdasdasdsasdadsasdasdasdsasdadsasdasdasdsasdadsasd
							...</p>
						
						<div class="container">
							
							<!-- Trigger the modal with a button -->
							<button type="submit" class="btn btn-info btn-lg shopBtn"
								data-toggle="modal" data-target="#myModal" id = "Bidding" onclick = "ShowAnswer()"> <span class=" icon-shopping-cart"></span> 出價</button>

							<!-- Modal -->
							<div class="modal fade" id="myModal" role="dialog">
								<div class="modal-dialog">

									<!-- Modal content-->
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h4 class="modal-title">出價確認</h4>
										</div>
										<div class="modal-body">
											<p>您將以 <span id="PriceBox">_</span> 的價錢出價<br> 註:棄標將會有相應懲罰</p>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-default"
												data-dismiss="modal">確認</button>
												<button type="button" class="btn btn-default"
												data-dismiss="modal">取消</button>
										</div>
									</div>

								</div>
							</div>

						</div>
					</form>
				</div>
			</div>
			<hr class="softn clr" />


			<ul id="productDetail" class="nav nav-tabs">
				<li class="active"><a href="#detail" data-toggle="tab">商品敘述</a></li>
				<li class=""><a href="#question" data-toggle="tab">留言板</a></li>
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
						<a class="media-left" href="#"> <img class="media-object"
							src="assets//img/user.jpg" alt="媒体对象">
						</a>
						<div class="media-body">
							<div class="media-heading">
								<form class="form-horizontal" role="form">
									<div class="form-group">
										<div>
											<input type="text" class="form-control comment"
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
			<div class="col-md2">
				<h5>Your Account</h5>
				<a href="#">YOUR ACCOUNT</a><br> <a href="#">PERSONAL
					INFORMATION</a><br> <a href="#">ADDRESSES</a><br> <a href="#">DISCOUNT</a><br>
				<a href="#">ORDER HISTORY</a><br>
			</div>
			<div class="col-md2">
				<h5>Iinformation</h5>
				<a href="contact.html">CONTACT</a><br> <a href="#">SITEMAP</a><br>
				<a href="#">LEGAL NOTICE</a><br> <a href="#">TERMS AND
					CONDITIONS</a><br> <a href="#">ABOUT US</a><br>
			</div>
			<div class="col-md2">
				<h5>Our Offer</h5>
				<a href="#">NEW PRODUCTS</a> <br> <a href="#">TOP SELLERS</a><br>
				<a href="#">SPECIALS</a><br> <a href="#">MANUFACTURERS</a><br>
				<a href="#">SUPPLIERS</a> <br />
			</div>
			<div class="col-md6">
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