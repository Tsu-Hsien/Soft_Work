<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="pimiya.db.DBImplement"%>
<%@page import="pimiya.Product"%>
<%@page import="pimiya.BiddingProduct"%>
<%@page import="pimiya.Feedback"%>
<%@page import="pimiya.Comment"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Date"%>

<%
	String g_userID = (String)request.getSession().getAttribute("currentUserID");
	String g_currentState = (String)request.getSession().getAttribute("currentState");
	if( g_currentState == null ){
		g_currentState = "" ;
	}

	//取得商品ID
	String productIdString = (String)request.getParameter("productId") ;
	int productId = 0 ;
	if(productIdString == null || productIdString.equals("") ){
		productIdString = "" ;
		productId = 0 ;
	} else {
		productId = Integer.parseInt( productIdString  ) ;
	}
	
	//取得商品資料
	BiddingProduct product = DBImplement.queryBiddingProduct(productIdString) ;

	//取得商品評價
	List<Feedback> feedbackList = DBImplement.queryProductFeedback(productIdString) ;
	int markCount[] = { 0 , 0 , 0 , 0 , 0 } ;
	double markPercentage[] = { 0 , 0 , 0 , 0 , 0 } ;
	int totalMark = 0 ;
	double avgMark = 0.0 ;
	if( feedbackList.size() > 0){
		for( Feedback feedback : feedbackList){
			markCount[ feedback.mark - 1 ]++  ;
			totalMark += feedback.mark ;
		}
		for( int i =0 ; i < markCount.length ; i++ ){
			markPercentage[i] = (double)(markCount[i]*(i+1) / totalMark) * 100.0 ;
		}
		avgMark =(double)( totalMark / feedbackList.size() ) ;
	}
	
	//取得商品留言
	List<Comment> commentList = DBImplement.queryProductComment(productIdString) ;

	// 計算結束時間
	Date date , nowDate;
	java.text.SimpleDateFormat simple = new java.text.SimpleDateFormat();
	nowDate = new Date( ) ; //取得現在時間 
	// 轉換結束時間字串至Date格式
	simple.applyPattern("yyyy-MM-dd HH:mm:ss");  // 設定時間格式
	if( product.end_time != null ){
		date = simple.parse(product.end_time); // 取得結束時間 
	}else {
		date = simple.parse("2018-01-25 00:00:00"); // 取得結束時間 
	}
	
	long timeDifference = date.getTime() - nowDate.getTime() ; // 計算結束時間

	
%>