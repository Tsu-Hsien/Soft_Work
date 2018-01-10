<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<%@page import="pimiya.db.DBImplement"%>
<%@page import="java.util.List"%>
<%@page import="pimiya.Order"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>Insert title here</title>
</head>
<%
	String userId = (String)request.getSession().getAttribute("currentUserID");
	List<Order> orderList = null ;
	if( userId != null && !userId.equals("")) {
		orderList = DBImplement.queryOrderByUserId(userId); 
	}
%>
<body>

	<div class="col-md-9">
		<ul class="breadcrumb">
			<li><a href="index.html">首頁</a> <span class="divider">/</span></li>
			<li><a href="products.html">會員管理</a> <span class="divider">/</span></li>
			<li class="active">訂單管理</li>
		</ul>
		<div class="well well-small">

			<ul id="productDetail" class="nav nav-tabs">
				<li class="active"><a href="#prepare" data-toggle="tab">會員訂單</a></li>
				<!-- <li class=""><a href="#transporting" data-toggle="tab">運送中</a></li>
				<li class=""><a href="#waiting" data-toggle="tab">待收貨</a></li>
				<li class=""><a href="#finished" data-toggle="tab">已完成</a></li> -->


			</ul>
			<div id="myTabContent" class="tab-content tabWrapper">
				<div class="tab-pane fade active in" id="prepare">
					<h4></h4>
					<table class="table table-striped">
						<tbody>

							<tr class="techSpecRow">
								<td class="techSpecTD1">訂單編號</td>
								<td class="techSpecTD2">下單日期</td>
								<td class="techSpecTD2">訂單金額</td>
								<td class="techSpecTD3">訂單狀態</td>
								<td class="techSpecTD3"></td>
							</tr>
							<% for( Order order : orderList ) { %>
							<tr class="techSpecRow">
								<td class="techSpecTD1"><input type="hidden" id="orderID"
									value="<%=order.orderId %>"><%=order.orderId %></td>
								<td class="techSpecTD2"><%=order.orderTime %></td>
								<td class="techSpecTD2"><%=order.price + order.shippingFee %></td>
								<td class="techSpecTD3"><%=order.shippingState %></td>
								<td class="techSpecTD3"><button class="btn btn-danger"
										onclick="location.href='OrderDetail?orderID=<%=order.orderId %>'">訂單詳情</button></td>
							</tr>
							<% } %>
						</tbody>
					</table>

				</div>
				<!--<div class="tab-pane fade" id="transporting">
				</div>
				<div class="tab-pane fade" id="waiting">
				</div>
				<div class="tab-pane fade" id="finished">
				</div>
				 -->

			</div>
		</div>
</div> <!-- Body wrapper -->
</body>
</html>