<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
    <title>拍咪呀拍賣大平台-購物車</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Bootstrap styles -->
    <link href="assets/css/bootstrap.css" rel="stylesheet"/>
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
					<a href="#"><span class="icon-twitter"></span></a>
					<a href="#"><span class="icon-facebook"></span></a>
					<a href="#"><span class="icon-youtube"></span></a>
					<a href="#"><span class="icon-tumblr"></span></a>
				</div>
				<a href="index.html"> <span class="icon-home"></span> Home</a> 
				<a href="#"><span class="icon-user"></span> My Account</a> 
				<a href="register.html"><span class="icon-edit"></span> Free Register </a> 
				<a href="contact.html"><span class="icon-envelope"></span> Contact us</a>
				<a class="active" href="cart.html"><span class="icon-shopping-cart"></span> 2 Item(s) - <span class="badge badge-warning"> $448.42</span></a>
			</div>
		</div>
	</div>
</div>

<!--
Lower Header Section 
-->
<div class="container">
<div id="gototop"> </div>


<!--
Navigation Bar Section 
-->
<!-- 
Body Section 
-->
	<div class="row">
	<div class="span12">
    <ul class="breadcrumb">
		<li><a href="index.html">首頁</a> <span class="divider">/</span></li>
		<li class="active">購物車</li>
    </ul>
	<div class="well well-small">
		<h1>購物車<small class="pull-right"> 有2件商品 </small></h1>
	<hr class="soften"/>	

	<table class="table table-bordered table-condensed">
              <thead>
                <tr>
                  <th>商品</th>
                  <th>簡介</th>
                  <th>存貨</th>
                  <th>單價</th>
                  <th>數量</th>
                  <th>金額</th>
				</tr>
              </thead>
              <tbody>
                <tr>
                  <td><img width="100" src="assets/img/e.jpg" alt=""></td>
                  <td>鑽戒<br>卡拉數：22</td>
                  <td><span class="shopBtn"><span class="icon-ok"></span></span> </td>
                  <td>50</td>
                  <td>
					<input class="span1" style="max-width:34px" placeholder="1" id="appendedInputButtons" size="16" type="text" value="2">
				  <div class="input-append">
					<button class="btn btn-mini" type="button">-</button><button class="btn btn-mini" type="button"> + </button><span class="icon-remove"></span>
				</div>
				</td>
                  <td>100</td>
                  <td><button class="btn btn-danger">刪除</button></td>
                </tr>
				<tr>
                  <td><img width="100" src="assets/img/f.jpg" alt=""></td>
                  <td>項鍊<br>卡拉數：24</td>
                  <td><span class="shopBtn"><span class="icon-ok"></span></span> </td>
                  <td>200</td>
                  
                  <td>
				  <input class="span1" style="max-width:34px" placeholder="1" size="16" type="text">
				  <div class="input-append">
					<button class="btn btn-mini" type="button">-</button><button class="btn btn-mini" type="button">+</button><span class="icon-remove"></span>
				</div>
				  </td>
                  <td>200</td>
                          <td><button class="btn btn-danger">刪除</button></td>
                </tr>
       
				 <tr>
                  <td colspan="6" class="alignR">總訂單金額：</td>
                  <td class="label label-primary"> 300</td>
                </tr>
				</tbody>
            </table><br/>
		
		
            <table class="table table-bordered">
			<tbody>
				 <tr>
                  <td> 
				<form class="form-inline">
				  <label style="min-width:159px">輸入折價卷：</label> 
				<input type="text" class="input-medium" placeholder="XXX-XXXX">
				<button type="submit" class="shopBtn">送出</button>
				</form>
				</td>
                </tr>
				
			</tbody>
				</table>
				
	<a href="products.html" class="shopBtn btn-large"><span class="icon-arrow-left"></span>繼續購物</a>
	<a href="login.html" class="shopBtn btn-large pull-right">下一步<span class="icon-arrow-right"></span></a>

</div>
</div>
</div>
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
