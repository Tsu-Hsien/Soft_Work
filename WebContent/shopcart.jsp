<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
    <meta charset="utf-8">
    <title>Twitter Bootstrap shopping cart</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="assets/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/style2.css" rel="stylesheet"/>
	<link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet">
	<link href="assets/font-awesome/css/font-awesome2.css" rel="stylesheet">
    <link rel="shortcut icon" href="assets/ico/favicon.ico">
    <script src="assets/js/jquery.js"></script>
    <style>
    .quantity{
    width:80%;
    }
    td {
    width: 12%;
	}
    </style>
  </head>

<body>


<jsp:include page="include/header.jsp"/>


<!--
Lower Header Section 
-->
<div class="container">
<div id="gototop"> </div>

<!-- 
Body Section 
-->
	<div class="row">
	<div class="col-md-12">
    <ul class="breadcrumb">
		<li><a href="index.html">Home</a> <span class="divider">/</span></li>
		<li class="active">Check Out</li>
    </ul>
	<div class="well well-small">
		<h1>Check Out <small class="pull-right" id="howManyInCart"> </small></h1>
	<hr class="soften"/>	

	<table class="table table-bordered table-condensed">
              <thead>
                <tr>
		    	<th>商品照片</th>
		    	<th>商品名稱</th>
		    	<th>商品描述</th>
		    	<th>存貨</th>
		    	<th>價格</th>
		    	<th>運費</th>
		    	<th>數量</th>
		    	<th>刪除訂單</th>
				</tr>
              </thead>
              <tbody>
              <% System.out.println( request.getSession().getAttribute("productList") ) ; %>
              <c:forEach var="data" items ="${productList}">
                <tr>
                  <td><img width="100" src="${data.getImageUrl1()}" alt=""></td>
                  <td>${data.getName()}</td>
                  <td>${data.getInformation()}</td>
                  <c:if test = "${data.getQuantity() > 0}">
                  	<td><span class="shopBtn"><span class="icon-ok"></span></span></td>
                  </c:if>
                  <c:if test = "${data.getQuantity() == 0}">
                  	<td><span class="shopBtn"><span class="icon-remove"></span></span></td>
                  </c:if>
				  <td>${data.getPrice()}</td>
				  <td>${data.getShippingFee()}</td>
                  <td>
					<div  class="input-group">
			          <span  class="input-group-btn">
				          <button onclick="minus(quantity${data.getProductId()} , '${data.getProductId()}' )" class="btn btn-danger">-</button>
			          </span>
			          <input class="quantity" id="quantity${data.getProductId()}" type="text" name="quant[2]" 
			          	class="form-control input-number" value="${data.getBuyQuantity()}" min="1" max="100"
			          	onchange="upd(quantity${data.getProductId()},'${data.getProductId()}')">
			          <span class="input-group-btn">
			              <button onclick="plus(quantity${data.getProductId()} , '${data.getProductId()}' )" class="btn btn-success">+</button>
			          </span>
			      	</div>
			      </td>
	              <td><a href="deletShopCartServlet?productID=${data.getProductId()}"><button class="btn btn-danger">刪除</button></a></td>
                </tr>
              </c:forEach>
				</tbody>
            </table><br/>
		
		
            <table class="table table-bordered">
			<tbody>
				 <tr>
                  <td> 
				<form class="form-inline" method = "post" action = "mergeShopCartServlet">
				  <label style="min-width:159px">其他購物車：</label> 
				<input type="text" class="input-medium" placeholder="其他人帳戶" name="otherId">
				<input type="hidden" name="userId" value=${userId} >
				<button type="submit" class="shopBtn"> ADD</button>
				</form>
				</td>
                </tr>
				
			</tbody>
			</table>
		<form class="form-horizontal" action="CreateOrderServlet" method="Get">		
			<table class="table table-bordered">
			<tbody>
				 <tr>
                  <td> 
				  <label style="min-width:159px">優惠券：</label> 
				<select name="YourLocation">
				　<option value=""></option>
					<c:forEach var="data" items ="${couponList}">
				　		<option value="${data.couponId }">${data.name } - ${ data.discount * 10 }折</option>
              		</c:forEach>
				</select>
				</td>
                </tr>
				
			</tbody>
			</table>
			
		
	<a href="index.jsp" class="shopBtn btn-large"><span class="icon-arrow-left"></span> Continue Shopping </a>
	<button type="submit" class="shopBtn btn-large pull-right">Next <span class="icon-arrow-right"></span></button>
	</form> 

</div>
</div>
</div>



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

    <jsp:include page="include/footer.jsp"/>
        <script>
    	function plus(id , productId){
    		id.value++;
    		updateBuyQuantity( id.value , productId ) ;
    	}
    	function minus(id , productId){
    		id.value--;
    		updateBuyQuantity( id.value , productId ) ;
    	}
    	function upd(id , productId){
    		updateBuyQuantity( id.value , productId ) ;
    	}
    	
    	function updateBuyQuantity( newQuantity  , productId ){
    		$.ajax({
    		    url: 'updateBuyQuantityServlet',
    		    type: 'GET',
    		    data: {
    		    	newBuyQuantity : newQuantity ,
    		      productId : productId
    		    },
    		    error: function(xhr) {
    		      alert('Ajax request 發生錯誤');
    		    },
    		    success: function(response) {
    		    }
    		  });
    	}
    	$("#howManyInCart")[0].innerHTML=""+$(".quantity").length+"件商品在購物車";
    </script>
  </body>
</html>