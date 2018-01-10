<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE jsp>
<jsp>
<head>
    <link href="templete/bs-twopage/assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLES-->
    <link href="templete/bs-twopage/assets/css/font-awesome.css" rel="stylesheet" />
    <!-- CUSTOM STYLES-->
    <link href="templete/bs-twopage/assets/css/custom.css" rel="stylesheet" />
    <!-- GOOGLE FONTS-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <script src="templete/bs-twopage/assets/js/jquery-1.10.2.js"></script>
    <!-- BOOTSTRAP SCRIPTS -->
    <script src="templete/bs-twopage/assets/js/bootstrap.min.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="templete/bs-twopage/assets/js/jquery.metisMenu.js"></script>
    <!-- CUSTOM SCRIPTS -->
    <script src="templete/bs-twopage/assets/js/custom.js"></script>
</head>
<body>
	<%
		String g_userID = (String) request.getSession().getAttribute("currentUserID");
		String g_currentState = (String) request.getSession().getAttribute("currentState");
	%>
<div class="col-md-3 navbar-default" role="navigation" >
        <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                    <li class="text-center user-image-back">
                        <img src="templete/bs-twopage/assets/img/find_user.png" class="img-responsive" />
                     
                    </li>


                    <li>
                        <a href="#"><i class="fa fa-edit "></i>帳戶管理<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a href="Account.jsp?account_context=passwordTest.jsp">修改密碼</a></li>
                            <li><a href="Account.jsp?account_context=modifyPersonalData.jsp">修改個人資料</a></li>
                        	<%if(request.getSession().getAttribute("currentAuthorize").equals("C")){ %>
                        	<li><a href="authorizeServlet?merge='y'&&userId=<%=g_userID%>">開放合併</a></li>
                        	<%}else{ %>
                        	<li><a href="authorizeServlet?userId=<%=g_userID%>">關閉合併</a></li>
                        	<%}%>
                        </ul>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-table "></i>買家帳戶管理<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a href="Account.jsp?account_context=orderManage.jsp">訂單查詢</a></li>
                        </ul>
                    </li>

                    <li>
                        <a href="#"><i class="fa fa-bar-chart-o"></i>賣家帳戶管理<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a href="#">商場首頁</a></li>
                            <li><a href="Account.jsp?account_context=saleForm.jsp">上架商品</a></li>
                            <li><a href="Account.jsp?account_context=litmitedTimeSale.jsp">上架競標商品</a></li>
                            <li><a href="Account.jsp?account_context=addCoupon.jsp">新增優惠碼</a></li>
                            <li><a href="Account.jsp?account_context=report.jsp">業績報表</a></li>
                        </ul>
                    </li>

	</div>
</div>
</body>
</jsp>