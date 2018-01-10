<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="pimiya.db.DBImplement"%>
<%@page import="pimiya.Product"%>
<%@page import="products.Search"%>
<%@page import="java.util.List"%>


 <%
	//取得所有商品類型
	List<String> productTypesList ;
	productTypesList = DBImplement.getAllProductType() ;
	
 	// 取得頁數
	String pagesString = (String)request.getParameter("page") ;
 	int pages = 0 ;
	 if(pagesString == null || pagesString.equals("") ){
		 pages = 1 ;
	 } else {
		 pages = Integer.parseInt( pagesString  ) ;
	 }
	 
	 //取得商品類型
	 String productType = (String)request.getParameter("productType") ;
	 if( productType==null || productType.equals("") ){
		 productType = "" ;
	 }
	 
	 //取得商品模式
	 String salesType = (String)request.getParameter("salesType") ;
	 if( salesType==null || salesType.equals("") ){
		 salesType = "" ;
	 }
	 
	 // 取得排序條件
	 String orderBy = (String)request.getParameter("orderby") ;
	 if( orderBy==null || orderBy.equals("") || (!orderBy.equals("popular") && !orderBy.equals("lately") && !orderBy.equals("moneyDown") && !orderBy.equals("moneyUp")) ){
		 orderBy = "popular" ;
	 }
	 
	//取得關鍵字
	 String keyword = (String)request.getParameter("keyword") ;
	 if( keyword==null || keyword.equals("") ){
		 keyword = "" ;
	 }
	 
 	System.out.println( "page: " + pages ) ;
	System.out.println( "orderby: " + orderBy ) ;
 
	List<Product> productList = null  ;
	Search search = new Search() ;
	productList = search.searchProduct(keyword, productType, salesType, orderBy, pages) ;
	
	int totalPage = search.getTotalPage(keyword, productType, salesType) ;
	/*if( !keyword.equals("") ){
		productList = search.searchProductByKeyword( pages , keyword ) ;
	} else {
		if( orderBy.equals("popular") ){
			productList = search.searchProductByPopularity( pages , productType ) ;
		}else if( orderBy.equals("lately") ){
			productList = search.searchProductByAddTime( pages , productType ) ;
		}else if( orderBy.equals("moneyDown") ){
			productList = search.searchProductByPriceAsc( pages , productType ) ;
		}else if( orderBy.equals("moneyUp") ){
			productList = search.searchProductByPriceDesc( pages , productType ) ;
		}
	}*/

 %>