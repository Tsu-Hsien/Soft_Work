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
		<!--������-->
		<div class="panel panel-default">
			<div class="panel-body">
				<form role="form" class="form_list" action="addCouponServlet" method="Post">
					<div class="form-body">
						<div class="form-group">
							<label><span class="red">�I</span>�u�f��Ǹ�</label> <input type="text"
								class="form-control" id="couponCode" name="couponCode"
								placeholder="�п�J��r"> 
							<span class="help-block">����쬰������� </span>
						</div>
						<div class="form-group">
							<label> <span class="red">�I</span>�u�f����

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
								��J�ƭȬ�����ơC(�Ҧp:��J45�A��I���欰�w��*0.45) </span>
						</div>
						<br>
						<div class="form-group">
							<label><span class="red">�I</span>�u�f�黡��</label> <input type="text"
								class="form-control" id="couponInfo" name="couponInfo"
								placeholder="�п�J��r"> <span class="help-block">
								����쬰������� </span>
						</div>
						<button type="submit">�s�W</button>
					</div>
				</form>
				<div id="myTabContent" class="tab-content tabWrapper">
					<div class="tab-pane fade active in" id="prepare">
						<h4></h4>
						<table class="table table-striped">
							<tbody>

								<tr class="techSpecRow">

									<td class="techSpecTD1">�u�f�X</td>
									<td class="techSpecTD2">����</td>
									<td class="techSpecTD3">�u�f���</td>
									<td class="techSpecTD4">�R��</td>
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
												class="btn btn-danger">�R��</button></a></td>
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