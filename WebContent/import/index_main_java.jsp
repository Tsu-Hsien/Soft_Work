
<%@page import="pimiya.db.DBImplement"%>
<%@page import="pimiya.Product"%>
<%@page import="products.Search"%>
<%@page import="java.util.List"%>


 <%
	 Search search = new Search() ;
 
	//取得所有商品
	List<Product> allProductList ;
	allProductList = DBImplement.queryProduct() ;
	
 	// 取得最新商品
	List<Product> newProductList ;
	newProductList = DBImplement.queryProduct("", "", "", "upd_time desc , add_time", "desc", 0, 12 ) ;
	 
	// 取得人氣商品
	List<Product> populerProductList ;
	populerProductList = DBImplement.queryProduct("", "", "", "image1", "desc", 0, 3 ) ;
	 
	// 取得拍賣商品
	List<Product> salseProductList ;
	salseProductList = DBImplement.queryProduct("", "", "S", "", "", 0, 3 ) ;
 
	// 取得競標商品
	List<Product> bidProductList ;
	bidProductList = DBImplement.queryProduct("", "", "B", "", "", 0, 3 ) ;

 %>