<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="pimiya.User"%>
<%@page import="pimiya.db.DBImplement"%>
<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
 <title>拍咪呀拍賣大平台_買家管理</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Bootstrap styles -->

    <link href="assets/css/bootstrap.min.css" rel="stylesheet"/>
	<link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link rel="shortcut icon" href="assets/ico/favicon.ico">
    <link href="css/style2.css" rel="stylesheet"/>
    <link href="css/index.css" rel="stylesheet"/>
    <link href="css/style_Account.css" rel="stylesheet"/>
    <link href="css/style.css" rel="stylesheet"/>
	<link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link rel="shortcut icon" href="assets/ico/favicon.ico">
    <link href="css/Account.css" rel="stylesheet"/>

    <script>
	function OrderDetail() {
		window.location = 'OrderDetail?orderID='
				+ document.getElementById("orderID").value.toString();
	}
</script>
</head>
<body>
<jsp:include page="include/header.jsp"/>
<div id="gototop"> </div>
<div class="container">
<!--
Navigation Bar Section 
-->

<!-- 
Body Section 
-->
<jsp:include page="include/Account_Side.jsp"/>
<%

String g_userID = (String)request.getSession().getAttribute("currentUserID");
//String g_userPass = (String)request.getSession().getAttribute("currentUserPass");
String g_currentState = (String)request.getSession().getAttribute("currentState");
String account_context="error";
if(request.getParameter("account_context")!=null){
	 account_context=(String)request.getParameter("account_context");
}

if ( g_userID == null || g_userID.equals("") || g_currentState.equals("") || g_currentState == null || g_currentState.equals("NoAccount") || g_currentState.equals("ErrorPass") || g_currentState.equals("PleaseLogin"))
	{ 
	response.sendRedirect("index.jsp");
	}
else if(account_context.equals("orderManage.jsp")){
	
%>
<jsp:include page="Account_context/orderManage.jsp"/>
<%
}
else if(account_context.equals("saleForm.jsp")){
%>
<jsp:include page="Account_context/saleForm.jsp"/>
<%
}else if(account_context.equals("report.jsp")){
%>
<jsp:include page="Account_context/report.jsp"/>
<%
}else if(account_context.equals("modifyPersonalData.jsp")){
%>
<jsp:include page="Account_context/modifyPersonalData.jsp"/>
<%
}else if(account_context.equals("passwordTest.jsp")){
%>
<jsp:include page="Account_context/passwordTest.jsp"/>
<%
}else if(account_context.equals("addCoupon.jsp")){
%>
<jsp:include page="Account_context/addCoupon.jsp"/>
<%
}else if(account_context.equals("litmitedTimeSale.jsp")){
%>
<jsp:include page="Account_context/litmitedTimeSale.jsp"/>
<%
} else {
	User user = DBImplement.queryUserById(g_userID) ;
%>
<div class="panel-body">
			<div class="table-responsive">

<table class="table table-bordered table-advance table-hover">
	<tr><th>用戶編號：</th><td><%=user.id %></td></tr>
	<tr><th>用戶名稱：</th><td><%=user.name %></td></tr>
	<tr><th>電子郵件：</th><td><%=user.email %></td></tr>
	<tr><th>聯絡電話：</th><td><%=user.phone %></td></tr>
	<tr><th>是否已開啟分享及寄件授權：</th><td><%= user.authorize.equals("O") ? "是" : "否" %></td>
</table>
</div>
</div>

<%
}
%>
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