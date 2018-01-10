<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="pimiya.Product"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>Insert title here</title>
    <meta charset="utf-8">
    <title>Twitter Bootstrap shopping cart</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="assets/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="assets/ico/favicon.ico" rel="shortcut icon" >
    <link href="css/Products.css" rel="stylesheet"/>
    <link href="css/style2.css" rel="stylesheet"/>
    <link href="css/style.css" rel="stylesheet"/>
    <link href="css/index.css" rel="stylesheet"/>
  </head>
  
 <%@include file="import/products_main_java.jsp" %>
<body onload="selectSort('<%=orderBy%>')" >
<jsp:include page="include/header.jsp"/>

<!--
Lower Header Section
-->
<div class="container-fluid">
<div id="gototop"> </div>

<!--
Body Section
-->
	<div class="container-fluid">
<div id="sidebar" class="col-md-2">
<div class="well well-small">
	<ul class="nav nav-list">
		<% for( String type : productTypesList) { %>
   		<%-- <li class="bigClassification"><a class="chosenClass" href="products.html"><%=type %></a></li> --%>
   		<li><a href="products.jsp?&productType=<%=type%>&salesType=<%=salesType%>&keyword=<%=keyword%>"><span class="icon-chevron-right"></span><%=type %></a></li>
   		<% }  %>
		<li style="border:0"> &nbsp;</li>
			</ul>
</div>



	</div>
	<div class="col-md-10">
<!--
New Products
-->
	<div class="well well-small">
    <!-- 條件收尋區-->
    <div id="sort" style="margin-bottom: 20px;" class="sortCol col-md-12">
      <div class="sortOption sortOptionSelect col-md-3" id="popular" onclick="selectSort('popular')"><a href="products.jsp?page=1&orderby=popular&productType=<%=productType%>&salesType=<%=salesType%>&keyword=<%=keyword%>">人氣</a></div>
      <div class="sortOption col-md-3" id="lately" onclick="selectSort('lately')"><a href="products.jsp?page=1&orderby=lately&productType=<%=productType%>&salesType=<%=salesType%>&keyword=<%=keyword%>">最新</a></div>
      <div class="sortOption col-md-3" id="moneyDown" onclick="selectSort('moneyDown')"><a href="products.jsp?page=1&orderby=moneyDown&productType=<%=productType%>&salesType=<%=salesType%>&keyword=<%=keyword%>">價格(低到高)</a></div>
      <div class="sortOption col-md-3" id="moneyUp" onclick="selectSort('moneyUp')"><a href="products.jsp?page=1&orderby=moneyUp&productType=<%=productType%>&salesType=<%=salesType%>&keyword=<%=keyword%>">價格(高到低)</a></div>
    </div>
    <!-- 條件收尋區-->
		<div class="row-fluid">
		  <ul class="thumbnails">
		  	<%   for( int i = 0 ; i < productList.size() ; i++ ){   
		  		Product product = productList.get(i) ;%>
		      <li class="col-md-3">
		        <div class="thumbnail">
		        <% if( product.getSalesType().equals("S") ) { %>
		        	<a href="CommodityPage.jsp?productId=<%=product.getProductId() %>"><img src="<%=product.getImageUrl1()%>" alt="" style="width:200px; height:200px;">
		        <% }else { %>
		        	<a href="BiddingPage.jsp?productId=<%=product.getProductId() %>"><img src="<%=product.getImageUrl1()%>" alt="" style="width:200px; height:200px;">
		        <% } %>
		        <div class="caption cntr">
		          <p><%=product.getName()%></p>
		          <p><strong> $<%=product.getPrice()  %></strong></p>
		        </div>
		        </a>
		        </div>
		      </li>
		      <% } %>
			</ul>
		</div>
	</div>
	</div>
	
	<div id="pagination" class="col-md-12 col-xs-12">
      <center>
      <ul  class="pagination">
      	<%for( int i = 0 ; i < totalPage / 8 + 1 ; i++ ){ %>
        <li><a id="1" href="products.jsp?page=<%=i+1 %>&orderby=<%=orderBy%>&productType=<%=productType%>&salesType=<%=salesType%>&keyword=<%=keyword%>"><%=i+1 %></a></li>
        <% }  %>
      </ul>
      </center>
  </div>


<!--
Footer
-->
<footer class="footer col-md-12">
<div class="row-fluid">
<div class="col-md-2">
<h5>Your Account</h5>
<a href="#">YOUR ACCOUNT</a><br>
<a href="#">PERSONAL INFORMATION</a><br>
<a href="#">ADDRESSES</a><br>
<a href="#">DISCOUNT</a><br>
<a href="#">ORDER HISTORY</a><br>
 </div>
<div class="col-md-2">
<h5>Iinformation</h5>
<a href="contact.html">CONTACT</a><br>
<a href="#">SITEMAP</a><br>
<a href="#">LEGAL NOTICE</a><br>
<a href="#">TERMS AND CONDITIONS</a><br>
<a href="#">ABOUT US</a><br>
 </div>
<div class="col-md-2">
<h5>Our Offer</h5>
<a href="#">NEW PRODUCTS</a> <br>
<a href="#">TOP SELLERS</a><br>
<a href="#">SPECIALS</a><br>
<a href="#">MANUFACTURERS</a><br>
<a href="#">SUPPLIERS</a> <br/>
 </div>
 <div class="col-md-6">
<h5>The standard chunk of Lorem</h5>
The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for
 those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et
 Malorum" by Cicero are also reproduced in their exact original form,
accompanied by English versions from the 1914 translation by H. Rackham.
 </div>
 </div>
</footer>
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
	<col-md->Copyright &copy; 2013<br> bootstrap ecommerce shopping template</span>
</div>
</div>
<a href="#" class="gotop"><i class="icon-double-angle-up"></i></a>
    <!-- Placed at the end of the document so the pages load faster -->
    <script>
      function selectSort(s){
          var sortOption=$(".sortOption");
          for(var i=0;i<sortOption.length;i++){
              if(sortOption[i].id==s){
                  $(sortOption[i]).addClass("sortOptionSelect");
              }
              else{$(sortOption[i]).removeClass("sortOptionSelect");}
          }
      }
    </script>
    <script src="assets/js/jquery.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/jquery.easing-1.3.min.js"></script>
    <script src="assets/js/jquery.scrollTo-1.4.3.1-min.js"></script>
    <script src="assets/js/shop.js"></script>
    <jsp:include page="include/Recorded.jsp"/>
  </body>
</html>
