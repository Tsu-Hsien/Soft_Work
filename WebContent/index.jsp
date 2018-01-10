<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE jsp>
<jsp lang="en">
  <head>
    <meta charset="utf-8">
    <title>Pimiya</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="assets/css/bootstrap.min.css" rel="stylesheet"/>
	<link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link rel="shortcut icon" href="assets/ico/favicon.ico">
    <link href="css/style2.css" rel="stylesheet"/>
    <link href="css/index.css" rel="stylesheet"/>
    <style>
		.thumbnail {margin-left: 0px;}
		
	</style>
	<script src="assets/js/jquery.js"></script>
  </head>
<body>
<%@include file="import/index_main_java.jsp" %>
<jsp:include page="include/header.jsp"/>
<!-- 
Body Section 
-->

<div class="row">
	<div class="col-md-12">
	<div class="well np">
		<div id="myCarousel" class="carousel slide homCar">
            <div class="carousel-inner">
            <% for( int i = 0 ; i < 8  && i < allProductList.size() ; i++ ){
							Product product = allProductList.get(i) ;%>
				<% if( i == 0 ){ %><div class="item active">
		  		<% } else{  %><div class="item"><% } %>
			  	<% if( product.salesType.equals("B") ){ %>
			  		<a href="BiddingPage.jsp?productId=<%=product.productId %>" title="<%=product.name%>">
			  			<img style="width:100%" src="<%=product.imageUrl1%>" alt="bootstrap ecommerce templates">
			  		</a>
				<% } else { %>
					<a href="CommodityPage.jsp?productId=<%=product.productId %>" title="<%=product.name%>">
			  			<img style="width:100%" src="<%=product.imageUrl1%>" alt="bootstrap ecommerce templates">
			  		</a>
				<% } %>
                <div class="carousel-caption">
                      <h4><%=product.name%></h4>
                      <p><span><%=product.information%></span></p>
                </div>
              </div>
				<% }  %>
            </div>
            <a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next">&rsaquo;</a>
          </div>
        </div>
        
        
	<!--
	最新商品
	-->
	<div class="well well-small">
	<h3>最新商品</h3>
	<hr class="soften"/>
		<div class="row-fluid">
		<div id="newProductCar" class="carousel slide">
            <div class="carousel-inner">
			<div class="item active">
			  <ul class="thumbnails">
				<% for( int i = 0 ; i < 4  && i < newProductList.size() ; i++ ){
							Product product = newProductList.get(i) ;%>
				<li class="col-md-3">
					<div class="thumbnail">
						<% if( product.salesType.equals("B") ){ %>
							<a class="zoomTool" href="BiddingPage.jsp?productId=<%=product.productId %>" title="<%=product.name%>"><span class="icon-search"></span>查看商品</a>
							<a href="BiddingPage.jsp?productId=<%=product.productId %>"><img src="<%=product.imageUrl1%>" alt="<%=product.name%>" style="width:200px;height:200px;" ></a>
						<% } else { %>
							<a class="zoomTool" href="CommodityPage.jsp?productId=<%=product.productId %>" title="<%=product.name%>"><span class="icon-search"></span>查看商品</a>
							<a href="CommodityPage.jsp?productId=<%=product.productId %>"><img src="<%=product.imageUrl1%>" alt="<%=product.name%>" style="width:200px;height:200px;" ></a>
						<% } %>
					</div>
				</li>
				<% }  %>
			  </ul>
			  </div>
			<%if(allProductList.size() > 4 ){ %>
		   <div class="item">
			  <ul class="thumbnails">
				<% for( int i = 4 ; i< 8 && i < newProductList.size() ; i++ ){
								Product product = newProductList.get(i) ;%>
					<li class="col-md-3">
						<div class="thumbnail">
							<% if( product.salesType.equals("B") ){ %>
								<a class="zoomTool" href="BiddingPage.jsp?productId=<%=product.productId %>" title="<%=product.name%>"><span class="icon-search"></span>查看商品</a>
								<a href="BiddingPage.jsp?productId=<%=product.productId %>"><img src="<%=product.imageUrl1%>" alt="<%=product.name%>" style="width:200px;height:200px;" ></a>
							<% } else { %>
								<a class="zoomTool" href="CommodityPage.jsp?productId=<%=product.productId %>" title="<%=product.name%>"><span class="icon-search"></span>查看商品</a>
								<a href="CommodityPage.jsp?productId=<%=product.productId %>"><img src="<%=product.imageUrl1%>" alt="<%=product.name%>" style="width:200px;height:200px;" ></a>
							<% } %>
						</div>
					</li>
					<% }  %>
			  </ul>
		  	</div>
		  	<% }  %>
		  	<%if(allProductList.size() > 8 ){ %>
		   <div class="item">
			  <ul class="thumbnails">
				<% for( int i = 8 ; i < 12 && i < newProductList.size() ; i++ ){
								Product product = newProductList.get(i) ;%>
					<li class="col-md-3">
						<div class="thumbnail">
							<% if( product.salesType.equals("B") ){ %>
								<a class="zoomTool" href="BiddingPage.jsp?productId=<%=product.productId %>" title="<%=product.name%>"><span class="icon-search"></span>查看商品</a>
								<a href="BiddingPage.jsp?productId=<%=product.productId %>"><img src="<%=product.imageUrl1%>" alt="<%=product.name%>" style="width:200px;height:200px;" ></a>
							<% } else { %>
								<a class="zoomTool" href="CommodityPage.jsp?productId=<%=product.productId %>" title="<%=product.name%>"><span class="icon-search"></span>查看商品</a>
								<a href="CommodityPage.jsp?productId=<%=product.productId %>"><img src="<%=product.imageUrl1%>" alt="<%=product.name%>" style="width:200px;height:200px;" ></a>
							<% } %>
						</div>
					</li>
					<% }  %>
			  </ul>
		  	</div>
		  	<% }  %>
		   </div>
		  <a class="left carousel-control" href="#newProductCar" data-slide="prev">&lsaquo;</a>
            <a class="right carousel-control" href="#newProductCar" data-slide="next">&rsaquo;</a>
		  </div>
		  </div>
		<div class="clearfix visible-md-block visible-lg-block"></div>
	</div>
	
		<!--
	人氣商品
	-->
	<div class="well well-small">  
		  <h3><a class="btn btn-mini pull-right" href="products.jsp?orderby=popular" title="View more">查看更多<span class="icon-plus"></span></a> 人氣商品  </h3>
		<div class="row-fluid">
		  <ul class="thumbnails">
		  <% for( Product product :  populerProductList ){ %>
			<li class="col-md-4">
			  <div class="thumbnail">
				 <% if( product.salesType.equals("B") ){ %>
					<a class="zoomTool" href="BiddingPage.jsp?productId=<%=product.productId %>" title="<%=product.name%>"><span class="icon-search"></span>查看商品</a>
					<a href="BiddingPage.jsp?productId=<%=product.productId %>"><img src="<%=product.imageUrl1%>" alt="<%=product.name%>" style="width:200px;height:200px;" ></a>
				<% } else { %>
					<a class="zoomTool" href="CommodityPage.jsp?productId=<%=product.productId %>" title="<%=product.name%>"><span class="icon-search"></span>查看商品</a>
					<a href="CommodityPage.jsp?productId=<%=product.productId %>"><img src="<%=product.imageUrl1%>" alt="<%=product.name%>" style="width:200px;height:200px;" ></a>
				<% } %>
				<div class="caption cntr">
					<p><%=product.name%></p>
					<p><strong> $<%=product.price%></strong></p>
					<br class="clr">
				</div>
			  </div>
			</li>
		<% }  %>
		  </ul>
		</div>
		<div class="clearfix visible-md-block visible-lg-block"></div>
	</div>
	
	
	<!--
	拍賣商品
	-->
	<div class="well well-small">
		  <h3><a class="btn btn-mini pull-right" href="products.jsp?salesType=S" title="View more">查看更多<span class="icon-plus"></span></a> 拍賣商品  </h3>
		  <hr class="soften"/>
		  <div class="row-fluid">
		  <ul class="thumbnails">
		<% for( Product product :  salseProductList ){ %>
			<li class="col-md-4">
			  <div class="thumbnail">
				 <% if( product.salesType.equals("B") ){ %>
					<a class="zoomTool" href="BiddingPage.jsp?productId=<%=product.productId %>" title="<%=product.name%>"><span class="icon-search"></span>查看商品</a>
					<a href="BiddingPage.jsp?productId=<%=product.productId %>"><img src="<%=product.imageUrl1%>" alt="<%=product.name%>" style="width:200px;height:200px;" ></a>
				<% } else { %>
					<a class="zoomTool" href="CommodityPage.jsp?productId=<%=product.productId %>" title="<%=product.name%>"><span class="icon-search"></span>查看商品</a>
					<a href="CommodityPage.jsp?productId=<%=product.productId %>"><img src="<%=product.imageUrl1%>" alt="<%=product.name%>" style="width:200px;height:200px;" ></a>
				<% } %>
				<div class="caption cntr">
					<p><%=product.name%></p>
					<p><strong> $<%=product.price%></strong></p>
					<br class="clr">
				</div>
			  </div>
			</li>
		<% }  %>
		  </ul>	
	</div>
	<div class="clearfix visible-md-block visible-lg-block"></div>
	</div>
	
	
	<!--
	競標商品
	-->
	<div class="well well-small">
		  <h3><a class="btn btn-mini pull-right" href="products.jsp?salesType=B" title="View more">查看更多<span class="icon-plus"></span></a> 競標商品  </h3>
		  <hr class="soften"/>
		  <div class="row-fluid">
		  <ul class="thumbnails">
		<% for( Product product :  bidProductList ){ %>
			<li class="col-md-4">
			  <div class="thumbnail">
				 <% if( product.salesType.equals("B") ){ %>
					<a class="zoomTool" href="BiddingPage.jsp?productId=<%=product.productId %>" title="<%=product.name%>"><span class="icon-search"></span>查看商品</a>
					<a href="BiddingPage.jsp?productId=<%=product.productId %>"><img src="<%=product.imageUrl1%>" alt="<%=product.name%>" style="width:200px;height:200px;" ></a>
				<% } else { %>
					<a class="zoomTool" href="CommodityPage.jsp?productId=<%=product.productId %>" title="<%=product.name%>"><span class="icon-search"></span>查看商品</a>
					<a href="CommodityPage.jsp?productId=<%=product.productId %>"><img src="<%=product.imageUrl1%>" alt="<%=product.name%>" style="width:200px;height:200px;" ></a>
				<% } %>
				<div class="caption cntr">
					<p><%=product.name%></p>
					<p><strong> $<%=product.price%></strong></p>
					<br class="clr">
				</div>
			  </div>
			</li>
		<% }  %>
		  </ul>	
	</div>
	<div class="clearfix visible-md-block visible-lg-block"></div>
	</div>
	
	</div>
	</div>
	<jsp:include page="include/Recorded.jsp"/>
	<jsp:include page="include/footer.jsp"/>

  </body>
</jsp>