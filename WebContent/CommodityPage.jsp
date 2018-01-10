<%@page import="Controll.Record"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<!-- Bootstrap styles -->

<script src="assets/js/jquery.js"></script>
<script src="assets/js/jquery.easing-1.3.min.js"></script>
<script src="assets/js/jquery.scrollTo-1.4.3.1-min.js"></script>

<script src="assets/js/bootstrap.js"></script>
<link href="assets/css/bootstrap2.css" rel="stylesheet" />
<link href="assets/css/bootstrap.min.css" rel="stylesheet" />

<!-- 不改 styles -->
<link href="css/style.css" rel="stylesheet" />

<link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet">
<link href="css/CommodityPageCss.css" rel="stylesheet">
<script src="assets/js/shop.js"></script>
<link rel="shortcut icon" href="assets/ico/favicon.ico">
<link href="assets/css/bootstrap.min.css" rel="stylesheet"/>
<link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet">
<link rel="shortcut icon" href="assets/ico/favicon.ico">
<link href="css/style2.css" rel="stylesheet"/>
 <%@include file="import/CommodityPage_main_java.jsp" %>
<%
ArrayList<Record> RecordList = new ArrayList();
boolean reapetRecord=false;
ArrayList<Record> temp = new ArrayList();
Record nowProduct=new Record(product.productId,product.name,"common");
RecordList = (ArrayList<Record>)session.getAttribute("RecordList");
if(RecordList!=null){
for(int i=0;i<RecordList.size();i++){
	if(RecordList.get(i).porductID.equals(nowProduct.porductID)){
		reapetRecord=true;
	}
}
}
if(!reapetRecord){
	if(RecordList == null)
	{
		temp.add(nowProduct);
		session.setAttribute("RecordList", temp);
	}
	else{
		RecordList.add(RecordList.size(),nowProduct);
		session.setAttribute("RecordList", RecordList);
	}
}
%>
<title><%=product.name %></title>
</head>

<body>
<jsp:include page="include/header.jsp"/>
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
						<div class="carousel-inner" >
							<% if( product.imageUrl1 != null ){  %>
							<div class="item active">
								<a href="#"> <img src="<%=product.imageUrl1 %>" alt=""
									style="width: 100%;"></a>
							</div>
							<% }  %>
							<% if( product.imageUrl2 != null ){  %>
							<div class="item">
								<a href="#"> <img src="<%=product.imageUrl2 %>" alt=""
									style="width: 100%;"></a>
							</div>
							<% }  %>
							<% if( product.imageUrl3 != null ){  %>
							<div class="item">
								<a href="#"> <img src="<%=product.imageUrl3 %>" alt=""
									style="width: 100%;"></a>
							</div>
							<% }  %>
						</div>
						<a class="left carousel-control" href="#myCarousel"
							data-slide="prev">&lsaquo;</a> <a class="right carousel-control"
							href="#myCarousel" data-slide="next">&rsaquo;</a>
					</div>
				</div>
				<div class="col-md-7">
				<form  method="post" action="addShopCartServlet" class="form-horizontal qtyFrm">
					<input type="hidden" name="productId" value="<%=product.productId%>"> <!-- 商品編號 -->
					<input type="hidden" name="isBidProduct" value="<%=product.salesType%>">
					<h3 name="name" value="name"><%=product.name %></h3> 
					<hr class="soft" />					
						<div class="form-group">
							<label class="control-label" name="price" value="<%=product.price %>"><span>$<%=product.price %></span></label>
							
							<div class="controls">
								<input type="number" name="buyQuantity" class="col-md-6" value="1" min="1">
							</div>
						</div>
						<h4 name="shippingFee" value="<%=product.shippingFee %>">運費:$<%=product.shippingFee %></h4>
						<h4 name="amount" value="<%=product.quantity %>">剩餘數量 :<%=product.quantity %></h4>
						<p><%=product.information %></p>
						<p>
						<% if( !g_currentState.equals("LoginSuccess") ) {%>	
							<button type="button" class="shopBtn" onclick="alert('請先登入') ;">
								<span class=" icon-shopping-cart"></span> 加入購物車
							</button>
						<% }else { %>
							<button type="submit" class="shopBtn">
								<span class=" icon-shopping-cart"></span> 加入購物車
							</button>
						<% }  %>
					</form>
					<div class="container">
						<div class="row">
							<div class="col-xs-12 col-md-6">
								<div class="well well-sm">
									<div class="row">
										<div class="col-xs-12 col-md-6 text-center">
											<h1 class="rating-num"><%=avgMark %></h1>
											<div class="rating">
												<span class="glyphicon glyphicon-star"></span><span
													class="glyphicon glyphicon-star"> </span><span
													class="glyphicon glyphicon-star"></span><span
													class="glyphicon glyphicon-star"> </span><span
													class="glyphicon glyphicon-star-empty"></span>
											</div>
											<div>
												<span class="glyphicon glyphicon-user"></span><%=feedbackList.size() %> total
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
															aria-valuemax="100" style="width: <%=markPercentage[4] %>%;">
															<span class="sr-only"><%=markPercentage[4] %>%</span>
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
															aria-valuemax="100" style="width: <%=markPercentage[3] %>%;">
															<span class="sr-only"><%=markPercentage[3] %>%</span>
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
															aria-valuemax="100" style="width: <%=markPercentage[2] %>%">
															<span class="sr-only"><%=markPercentage[2] %>%</span>
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
															aria-valuemax="100" style="width: <%=markPercentage[1] %>%">
															<span class="sr-only"><%=markPercentage[1] %>%</span>
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
															aria-valuemax="100" style="width: <%=markPercentage[0] %>%">
															<span class="sr-only"><%=markPercentage[0] %>%</span>
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
				<!-- <li class="active"><a href="#detail" data-toggle="tab">商品敘述</a></li> -->
				<li class=""><a href="#question" data-toggle="tab">留言版</a></li>
			</ul>
			<div id="myTabContent" class="tab-content tabWrapper">
				<!-- <div class="tab-pane fade active in" id="detail">
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
						</tbody>
					</table>
					<p>qweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqwe</p>
					<p>Raw denim you probably haven't heard of them jean shorts
						Austin. Nesciunt tofu stumptown aliqua, retro synth master
						cleanse. Mustache cliche tempor, williamsburg carles vegan
						helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher
						synth. Cosby sweater eu banh mi, qui irure terry richardson ex
						squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis
						cardigan american apparel, butcher voluptate nisi qui.</p>
				</div>-->

				<div class="tab-pane fade active in" id="question">
					<% for(Comment comment : commentList) { %>
					<div class="media">
						<a class="media-left" href="#"> <img class="media-object" src="assets/img/user.jpg" alt="">
						</a>
						<div class="media-body">
							<h4 class="media-heading" style="float:left;"><%=comment.userName%></h4>
							<h5 class="media-heading"  style="text-align: right; "><%=comment.addTime%></h5>
							<h5><%=comment.opinion %></h5>
						</div>
					</div>
					<% }  %>
					<div class="media">
						<a class="media-left" href="#"> <img class="media-object "
							src="assets//img/user.jpg" alt="媒体对象">
						</a>
						<div class="media-body ">
							<form class="form-horizontal" role="form" action="addCommentServlet"  method="post">
								<input type="hidden" name="productId" value="<%=product.productId%>">
								<input type="hidden" name="isBidProduct" value="<%=product.salesType%>">
								<div class="form-group" style="padding-left: 20px; width:100%;">
									<textarea class="form-control comment" rows="3"
										placeholder="請輸入內容..." name="commentText" style="width:100%;"></textarea>
								</div>
								<div class="form-group">
									<% if( !g_currentState.equals("LoginSuccess") ) {%>	
										<div class="col-sm-offset-2 col-sm-10">
											<button type="button" class="btn btn-default" onclick = "alert('請先登入')">留言</button>
										</div>
									<% }else { %>
										<div class="col-sm-offset-2 col-sm-10">
											<button type="submit" class="btn btn-default">留言</button>
										</div>
									<% }  %>
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

	<jsp:include page="include/Recorded.jsp"/>
	<jsp:include page="include/footer.jsp"/>
	</div>
	<!-- /container -->

</body>
</html>