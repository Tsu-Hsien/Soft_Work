<%@page import="Controll.Record"%>
<%@page import="pimiya.OrderProduct"%>
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
<link href="assets/css/bootstrap.min.css" rel="stylesheet" />

<!-- 不改 styles -->
<link href="style.css" rel="stylesheet" />

<link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet">
<link href="css/CommodityPageCss.css" rel="stylesheet">
<script src="assets/js/shop.js"></script>
<link rel="shortcut icon" href="assets/ico/favicon.ico">
<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300" />
<link rel="stylesheet" href="assets/css/countdowncss.css" />
<link rel="stylesheet" href="assets/countdown/jquery.countdown.css" />
<link rel="shortcut icon" href="assets/ico/favicon.ico">
<link href="css/style2.css" rel="stylesheet"/>
<link href="css/index.css" rel="stylesheet"/>
 <%@include file="import/BiddingPage_main_java.jsp" %>
 
<script src="http://code.jquery.com/jquery-1.7.1.min.js"></script>
<script src="assets/countdown/jquery.countdown.js"></script>
<!-- 滴滴答答時間原檔：<script src="assets/js/script.js"></script> -->
<!-- 滴滴答答時間 -->
<script>

$(function(){
	
	var note = $('#note'),
		ts = new Date(2012, 0, 1),
		newYear = true;
	
	if((new Date()) > ts){
		// The new year is here! Count towards something else.
		// Notice the *1000 at the end - time must be in milliseconds
		ts = (new Date()).getTime() + <%=timeDifference%>; //設定時間 天數*小時*分鐘*毫秒
		newYear = false;
	}
		
	$('#countdown').countdown({
		timestamp	: ts,
		callback	: function(days, hours, minutes, seconds){
			
			var message = "";
			
			message += days + " day" + ( days==1 ? '':'s' ) + ", ";
			message += hours + " hour" + ( hours==1 ? '':'s' ) + ", ";
			message += minutes + " minute" + ( minutes==1 ? '':'s' ) + " and ";
			message += seconds + " second" + ( seconds==1 ? '':'s' ) + " <br />";
			
			note.html(message);
		}
	});
	
});
</script>
<script type='text/javascript'>
function ShowAnswer(){
	var price = parseInt(document.getElementById("addPrice").value) + <%=product.price %>;//140要改成目前價格
	document.getElementById("PriceBox").innerHTML=""+price;
}

</script>

<%
ArrayList<Record> RecordList = new ArrayList();
boolean reapetRecord=false;
ArrayList<Record> temp = new ArrayList();
Record nowProduct=new Record(product.productId,product.name,"bidding");
RecordList = (ArrayList<Record>)session.getAttribute("RecordList");
if(RecordList!=null){
for(int i=0;i<RecordList.size();i++){
	if(RecordList.get(i).porductID.equals(nowProduct.porductID)){
		reapetRecord=true;
		break;
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
					<h1><%=product.name %></h1> <!-- 手錶要改成商品名稱 -->
					<hr class="soft" />
					<h2>剩餘時間:</h2>
					
					<div id="countdown"></div>
					<a href="CountingBidding?name=<%=product.lastbid_userName %>&price=<%=product.price %>">檢查競標</a>
					<p id="note"></p>
					
					
					<form class="form-horizontal qtyFrm" action="BidProductServlet" method="post">
						<input type="hidden" name="productId" value="<%=product.productId%>"> <!-- 商品編號 -->
						<h1>目前出價: $<span id = "nowPrice" ><%=product.price %></span><%=product.lastbid_userName.equals("") ? "" : "(" + product.lastbid_userName +")" %></h1> <!-- 要改成出價最高的帳號 -->
						<h3 name="shippingFee" value="<%=product.shippingFee %>">運費:$<%=product.shippingFee %></h3>
						</br>
						</br>
						<div class="form-group">
							<label class="control-label"><span><strong>加價:</strong></span></label> <input
								type="number" class="col-md6 addPrice" value = <%=product.minbid_price %>
								min="<%=product.minbid_price %>" id = "addPrice" name="addValue">
						</div>
						<h4>(每次出價不得少於$<%=product.minbid_price %>)</h4>
						
						<h2>簡介:</h2>
						<h3><%=product.information %></h3>
						</br>
						</br>
						<%--<h3>出價紀錄</h3>
						<table style="width:100%">
							<tr>
								<th>金額  </th>
								<th>下標者  </th>
								<th>時間  </th>
							</tr>
							<tr>
								<td>20 </td>
								<td>acdss  </td>
								<td>1:25 </td>
							</tr>
						</table> --%>
						<div class="container">
							<% if( !g_currentState.equals("LoginSuccess") ) {%>	
								<!-- Trigger the modal with a button -->
								<button type="button" class="btn btn-info btn-lg shopBtn"
									id = "Bidding" onclick = "alert('請先登入')"> <span class=" icon-shopping-cart"></span> 出價</button>
							<% }else { %>
								<!-- Trigger the modal with a button -->
								<button type="submit" class="btn btn-info btn-lg shopBtn"
									data-toggle="modal" data-target="#myModal" id = "Bidding" onclick = "ShowAnswer()"> <span class=" icon-shopping-cart"></span> 出價</button>
							<% }  %>
							
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
											<button type="sumit" class="btn btn-default"
												>確認</button>
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
				<!-- <li class="active"><a href="#detail" data-toggle="tab">商品敘述</a></li> -->
				<li class=""><a href="#question" data-toggle="tab">留言板</a></li>
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
						</tbody>
					</table>
					<p>qweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqwev</p>
					<p>Raw denim you probably haven't heard of them jean shorts
						Austin. Nesciunt tofu stumptown aliqua, retro synth master
						cleanse. Mustache cliche tempor, williamsburg carles vegan
						helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher
						synth. Cosby sweater eu banh mi, qui irure terry richardson ex
						squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis
						cardigan american apparel, butcher voluptate nisi qui.</p>

				</div> -->

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
						<a class="media-left" href="#"> <img class="media-object"
							src="assets//img/user.jpg" alt="媒体对象">
						</a>
						<div class="media-body">
							<div class="media-heading">
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
	<jsp:include page="include/footer.jsp"/>
	<jsp:include page="include/Recorded.jsp"/>
</body>
</html>