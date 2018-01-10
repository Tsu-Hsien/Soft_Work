<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="pimiya.db.DBImplement"%>
<%@page import="pimiya.Product"%>
<%@page import="pimiya.Feedback"%>
<%@page import="pimiya.Comment"%>
<%@page import="java.util.List"%>

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
	Product product = DBImplement.queryProduct(productIdString) ;

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
			markPercentage[i] = ((double)markCount[i]*(i+1) / (double)totalMark) * 100.0 ;
		}
		avgMark =( (double)totalMark / (double)feedbackList.size() ) ;
	}
	java.text.DecimalFormat df2 = new java.text.DecimalFormat(".##");
	avgMark = Double.parseDouble( df2.format(avgMark) )  ;
	//取得商品留言
	List<Comment> commentList = DBImplement.queryProductComment(productIdString) ;

%>