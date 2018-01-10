<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"%>
<%@page import="pimiya.db.DBImplement"%>
<%@page import="pimiya.Coupon"%>
<%@page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>Insert title here</title>
</head>
<script>
	$(document).ready(function() {
		$("#discount").blur(function() {
			var discount = parseInt($("#discount").val());
			if (discount < 5) {
				document.getElementById("discount").value = 5;
			} else if (discount > 100) {
				document.getElementById("discount").value = 100;
			}
		});
	});
</script>
<body>
	<%
		String userId = (String) request.getSession().getAttribute("currentUserID");
		List<Coupon> couponList = null;
		if (userId != null && !userId.equals("")) {
			couponList = DBImplement.queryCoupon(userId);
		}
	%>
	<div class="col-md-9">
		<!--換行表單-->
		<div class="panel panel-default">
			<div class="panel-body">
				<form role="form" class="form_list" action="addCouponServlet" method="Post">
					<div class="form-body">
						<div class="form-group">
							<label><span class="red">！</span>優惠券序號</label> <input type="text"
								class="form-control" id="couponCode" name="couponCode"
								placeholder="請輸入文字"> 
							<span class="help-block">此欄位為必填欄位 </span>
						</div>
						<div class="form-group">
							<label> <span class="red">！</span>優惠券折數

							</label> <br>
							<div style="float:left;">
								<button type="button" onclick="minus(discount)"
									class="btn btn-danger">-</button>
							</div>
							<div style="width: 10%;float:left;">

								<input id="discount" type="text" name="discount"
									class="form-control input-number" value="5" min="0" max="100">
							</div>
							
							<div style="float:left;">
								<button type="button" onclick="plus(discount)"
									class="btn btn-success">+</button>
							</div>
							<br>
							<br>
							<span class="help-block">
								填入數值為打折數。(例如:填入45，支付價格為定價*0.45) </span>
						</div>
						<br>
						<div class="form-group">
							<label><span class="red">！</span>優惠券說明</label> <input type="text"
								class="form-control" id="couponInfo" name="couponInfo"
								placeholder="請輸入文字"> <span class="help-block">
								此欄位為必填欄位 </span>
						</div>
						<button type="submit">新增</button>
					</div>
				</form>
				<div id="myTabContent" class="tab-content tabWrapper">
					<div class="tab-pane fade active in" id="prepare">
						<h4></h4>
						<table class="table table-striped">
							<tbody>

								<tr class="techSpecRow">

									<td class="techSpecTD1">優惠碼</td>
									<td class="techSpecTD2">說明</td>
									<td class="techSpecTD3">優惠折數</td>
									<td class="techSpecTD4">刪除</td>
								</tr>
								<%
									for (Coupon coupon : couponList) {
								%>
								<tr>

									<td class="techSpecTD1"><%=coupon.name%></td>
									<td class="techSpecTD2"><%=coupon.information%></td>
									<td class="techSpecTD3"><%=coupon.discount%></td>
									<td class="techSpecTD4"><a
										href="deleteCouponServlet?couponId=<%=coupon.couponId%>"><button
												class="btn btn-danger">刪除</button></a></td>
								</tr>
								<%
									}
								%>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<script>
			function plus(id) {
				if (parseInt(id.value) != 100)
					id.value = parseInt(id.value) + 5;
			}
			function minus(id) {
				if (parseInt(id.value) != 5)
					id.value = parseInt(id.value) - 5;
			}
		</script>
</body>
</html>