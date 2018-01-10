<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<script src="../assets/js/jquery.js"></script>
<title>Insert title here</title>
</head>
<body>
<style>
#capInfo{
	position: fixed;  
    top: 50%;
	left: 0px;
	z-index: 9999;
	transition: 0.5s;
}

#capInfo_tab{
	/*position: fixed;  
    top: 50%; 
    right: 80px; */
    width: 50px;
	height: 155px;
    background: #000000;
    font-family: Arial, Helvetica, sans-serif;
    text-align: center;
    -moz-border-radius-topright: 10px;
    -moz-border-radius-bottomright: 10px;
    -webkit-border-top-right-radius: 10px;
    -webkit-border-bottom-right-radius: 10px;
	float: right;
}
#capInfo_tab span {
    display: block;
    padding: 1px 0;
	color: #ffffff;
    line-height: 20px;
    text-transform: uppercase;
    font-size: 20px;
    font-weight: bold;
  
}
.sidenav {
    height: 100%;
    width: 0;
    position: fixed;
    z-index: 1;
    top: 0;
    left: 0;
    background-color: #111;
    overflow-x: hidden;
    transition: 0.5s;
    padding-top: 60px;
}

.sidenav a {
    padding: 8px 8px 8px 32px;
    text-decoration: none;
    font-size: 25px;
    color: #818181;
    display: block;
    transition: 0.3s;
}

.sidenav a:hover {
    color: #f1f1f1;
}

.sidenav .closebtn {
    position: absolute;
    top: 0;
    right: 25px;
    font-size: 36px;
    margin-left: 50px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}

}




</style>

<script>

function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
    document.getElementById("capInfo").style.left = "250px";
    $("#capInfo_tab").attr("onclick","closeNav()");
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0px";
    document.getElementById("capInfo").style.left = "0px";
    $("#capInfo_tab").attr("onclick","openNav()");
}
</script>
<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
<c:forEach var="data" items ="${RecordList}">

<c:if test="${data.sellMode == 'common'}">
	<a href="CommodityPage.jsp?productId=${data.porductID}">
</c:if>

<c:if test="${data.sellMode == 'bidding'}">
	<a href="BiddingPage.jsp?productId=${data.porductID}">
</c:if>

  ${data.getName()}</a>
  </c:forEach>
  <a href="DeleteSession">刪除閱覽紀錄</a>
 
</div>
<div id="capInfo">
		<div  onclick="openNav()" id="capInfo_tab">
			<span >&gt;&gt;</span>
			<span>瀏</span>
			<span>覽</span>
			<span>紀</span>
			<span>錄</span>
		</div>
		<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  


 
</div>
	</div>




</body>
</html>