package pimiya.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;


import pimiya.BiddingProduct;
import pimiya.CartProduct;
import pimiya.Comment;
import pimiya.Coupon;
import pimiya.Feedback;
import pimiya.Order;
import pimiya.OrderProduct;
import pimiya.Product;
import pimiya.User;

public  class DBImplement
{
	/**
	 * 查詢所有用戶資料
	 * @return  List  of   User 
	 */
	public static List<User> queryUser()
	{
		List<User> resultList = new ArrayList<>() ;
		
		Connection conn = null;
    	try {
    		//連結資料庫
    		conn =  Connector.connection() ;
    	} catch ( Exception e ) {
            System.err.println( "Get DataSource or Connection error: " + e.toString() );
    		return null;
    	}
    	
    	PreparedStatement pst = null;
		try {
			// select data
			pst = conn.prepareStatement( "SELECT * FROM user" ); 
			pst.clearParameters();  // 清空之前設定的參數
			ResultSet rs = pst.executeQuery() ;
			// print select result
			while (rs.next()) {
				User newUser = new User() ;
				newUser.id =  rs.getString("user_id") ;
				newUser.name =  rs.getString("name") ;
				newUser.password =  rs.getString("password") ;
				newUser.email =  rs.getString("email") ;
				newUser.phone =  rs.getString("phone") ;
				newUser.authorize =  rs.getString("authorize") ;
				// add to List
				resultList.add(newUser) ;
			}
		} catch ( SQLException e){
            System.err.println("Got an exception! ");
            System.err.println(e.getMessage());
		} finally {
    		try
    		{
				if ( pst != null ) pst.close();
    			conn.close();
    		} catch ( SQLException se ) {
    			 System.err.println( "close ResultSet or Statment or connection error: " + se.toString() ) ;
    		}
    	}
		return resultList ;
	}
	
	/**
	 * 查詢特定用戶資料
	 * @return  User  用戶資料
	 */
	public static User queryUserById(String userId)
	{
		if( userId == null || userId.equals("")){
			return null ;
		}
		Connection conn = null;
    	try {
    		//連結資料庫
    		conn =  Connector.connection() ;
    	} catch ( Exception e ) {
            System.err.println( "Get DataSource or Connection error: " + e.toString() );
    		return null;
    	}
    	
    	PreparedStatement pst = null;
		User newUser = new User() ;
		try {
			// select data
			pst = conn.prepareStatement( "SELECT * FROM user Where user_id = ? " ); 
			pst.clearParameters();  // 清空之前設定的參數
			pst.setString(1, userId ); 
			ResultSet rs = pst.executeQuery() ;
			// print select result
			if (rs.next()) {
				newUser.id =  rs.getString("user_id") ;
				newUser.name =  rs.getString("name") ;
				newUser.password =  rs.getString("password") ;
				newUser.email =  rs.getString("email") ;
				newUser.phone =  rs.getString("phone") ;
				newUser.authorize =  rs.getString("authorize") ;
				return newUser ;
			}
		} catch ( SQLException e){
            System.err.println("Got an exception! ");
            System.err.println(e.getMessage());
		} finally {
    		try
    		{
				if ( pst != null ) pst.close();
    			conn.close();
    		} catch ( SQLException se ) {
    			 System.err.println( "close ResultSet or Statment or connection error: " + se.toString() ) ;
    		}
    	}
		return null ;
	}
	
	/**
	 * 查詢特定用戶資料
	 * @return  User  用戶資料
	 */
	public static User queryUserByName(String name)
	{
		if( name == null || name.equals("")){
			return null ;
		}
		Connection conn = null;
    	try {
    		//連結資料庫
    		conn =  Connector.connection() ;
    	} catch ( Exception e ) {
            System.err.println( "Get DataSource or Connection error: " + e.toString() );
    		return null;
    	}
    	
    	PreparedStatement pst = null;
		User newUser = new User() ;
		try {
			// select data
			pst = conn.prepareStatement( "SELECT * FROM user Where name = ? " ); 
			pst.clearParameters();  // 清空之前設定的參數
			pst.setString(1, name ); 
			ResultSet rs = pst.executeQuery() ;
			// print select result
			if (rs.next()) {
				newUser.id =  rs.getString("user_id") ;
				newUser.name =  rs.getString("name") ;
				newUser.password =  rs.getString("password") ;
				newUser.email =  rs.getString("email") ;
				newUser.phone =  rs.getString("phone") ;
				newUser.authorize = rs.getString("authorize");
				return newUser ;
			}
		} catch ( SQLException e){
            System.err.println("Got an exception! ");
            System.err.println(e.getMessage());
		} finally {
    		try
    		{
				if ( pst != null ) pst.close();
    			conn.close();
    		} catch ( SQLException se ) {
    			 System.err.println( "close ResultSet or Statment or connection error: " + se.toString() ) ;
    		}
    	}
		return null ;
	}
	
	/**
	 * 查詢所有商品資料
	 * @return  List  of   Product 
	 */
	public static List<Product> queryProduct()
	{
		Connection conn = null;
    	try {
    		//連結資料庫
    		conn =  Connector.connection() ;
    	} catch ( Exception e ) {
            System.err.println( "Get DataSource or Connection error: " + e.toString() );
    		return null;
    	}
    	
    	PreparedStatement pst = null;
		List<Product> resultList = new ArrayList<>() ;
		try {
			// select data
			pst = conn.prepareStatement( "SELECT * FROM product_details" ); 
			pst.clearParameters();  // 清空之前設定的參數
			ResultSet rs = pst.executeQuery() ;
			// print select result
			while (rs.next()) {
				Product newProduct = new Product() ;
				newProduct.productId =  rs.getString("product_id") ;
				newProduct.sellerId =  rs.getString("user_id") ;
				newProduct.name =  rs.getString("name") ;
				newProduct.price =  rs.getInt("price") ;
				newProduct.shippingFee =  rs.getInt("shipping_fee") ;
				newProduct.productType =  rs.getString("product_type") ;
				newProduct.salesType =  rs.getString("sales_type") ;
				newProduct.information =  rs.getString("information") ;
				newProduct.quantity =  rs.getInt("quantity") ;
				newProduct.salesState =  rs.getString("sales") ;
				newProduct.imageUrl1 =  rs.getString("image1") ;
				newProduct.imageUrl2 =  rs.getString("image2") ;
				newProduct.imageUrl3 =  rs.getString("image3") ;
				// add to List
				resultList.add(newProduct) ;
			}
		} catch ( SQLException e){
            System.err.println("Got an exception! ");
            System.err.println(e.getMessage());
		} finally {
    		try
    		{
				if ( pst != null ) pst.close();
    			conn.close();
    		} catch ( SQLException se ) {
    			 System.err.println( "close ResultSet or Statment or connection error: " + se.toString() ) ;
    		}
    	}
		return resultList ;
	}
	/**
	 * 依關鍵字查詢所有商品資料
	 * @return  List  of   Product 
	 */
	public static List<Product> queryProductByKeyword( String keyword , String orderAttribute , String orderSequence ,int startLimit , int endLimit )
	{
		if( keyword == null || keyword.equals("") || orderAttribute == null || orderAttribute.equals("") ){
			return queryProductByOrder( "image1" , "desc" , startLimit , endLimit ) ;
		}
		if( startLimit > endLimit){
			int temp =  endLimit ;
			endLimit = startLimit ;
			startLimit = temp ;
		}
		if( orderSequence == null || orderSequence.equals("") || ( !orderSequence.equals("asc")  && !orderSequence.equals("desc") ) ){
			orderSequence = "asc" ;
		}
		Connection conn = null;
    	try {
    		//連結資料庫
    		conn =  Connector.connection() ;
    	} catch ( Exception e ) {
            System.err.println( "Get DataSource or Connection error: " + e.toString() );
    		return null;
    	}
    	
    	PreparedStatement pst = null;
		List<Product> resultList = new ArrayList<>() ;
		try {
			// select data
			pst = conn.prepareStatement( "SELECT * FROM product_details Where name like ? Or information like ? Order By " +  orderAttribute + " " + orderSequence 
					+ " LIMIT " +  startLimit + "," +  endLimit ); 
			pst.clearParameters();  // 清空之前設定的參數
			pst.setString( 1, "%" + keyword + "%" );
			pst.setString( 2, "%" + keyword + "%" );
			ResultSet rs = pst.executeQuery() ;
			// print select result
			while (rs.next()) {
				Product newProduct = new Product() ;
				newProduct.productId =  rs.getString("product_id") ;
				newProduct.sellerId =  rs.getString("user_id") ;
				newProduct.name =  rs.getString("name") ;
				newProduct.price =  rs.getInt("price") ;
				newProduct.shippingFee =  rs.getInt("shipping_fee") ;
				newProduct.productType =  rs.getString("product_type") ;
				newProduct.salesType =  rs.getString("sales_type") ;
				newProduct.information =  rs.getString("information") ;
				newProduct.quantity =  rs.getInt("quantity") ;
				newProduct.salesState =  rs.getString("sales") ;
				newProduct.imageUrl1 =  rs.getString("image1") ;
				newProduct.imageUrl2 =  rs.getString("image2") ;
				newProduct.imageUrl3 =  rs.getString("image3") ;
				// add to List
				resultList.add(newProduct) ;
			}
		} catch ( SQLException e){
            System.err.println("Got an exception! ");
            System.err.println(e.getMessage());
		} finally {
    		try
    		{
				if ( pst != null ) pst.close();
    			conn.close();
    		} catch ( SQLException se ) {
    			 System.err.println( "close ResultSet or Statment or connection error: " + se.toString() ) ;
    		}
    	}
		return resultList ;
	}
	
	/**
	 * 查詢所有商品資料並依條件排序
	 * @return  List  of   Product 
	 */
	public static List<Product> queryProductByOrder(String orderAttribute , String orderSequence)
	{
		if( orderAttribute == null || orderAttribute.equals("") ){
			return queryProduct() ;
		}
		if( orderSequence == null || orderSequence.equals("") || !orderSequence.equals("asc")  || !orderSequence.equals("desc") ){
			orderSequence = "asc" ;
		}
		Connection conn = null;
    	try {
    		//連結資料庫
    		conn =  Connector.connection() ;
    	} catch ( Exception e ) {
            System.err.println( "Get DataSource or Connection error: " + e.toString() );
    		return null;
    	}
    	
    	PreparedStatement pst = null;
		List<Product> resultList = new ArrayList<>() ;
		try {
			// select data
			pst = conn.prepareStatement( "SELECT * FROM product_details Order By " +  orderAttribute + " " + orderSequence ); 
			pst.clearParameters();  // 清空之前設定的參數
			ResultSet rs = pst.executeQuery() ;
			// print select result
			while (rs.next()) {
				Product newProduct = new Product() ;
				newProduct.productId =  rs.getString("product_id") ;
				newProduct.sellerId =  rs.getString("user_id") ;
				newProduct.name =  rs.getString("name") ;
				newProduct.price =  rs.getInt("price") ;
				newProduct.shippingFee =  rs.getInt("shipping_fee") ;
				newProduct.productType =  rs.getString("product_type") ;
				newProduct.salesType =  rs.getString("sales_type") ;
				newProduct.information =  rs.getString("information") ;
				newProduct.quantity =  rs.getInt("quantity") ;
				newProduct.salesState =  rs.getString("sales") ;
				newProduct.imageUrl1 =  rs.getString("image1") ;
				newProduct.imageUrl2 =  rs.getString("image2") ;
				newProduct.imageUrl3 =  rs.getString("image3") ;
				// add to List
				resultList.add(newProduct) ;
			}
		} catch ( SQLException e){
            System.err.println("Got an exception! ");
            System.err.println(e.getMessage());
		} finally {
    		try
    		{
				if ( pst != null ) pst.close();
    			conn.close();
    		} catch ( SQLException se ) {
    			 System.err.println( "close ResultSet or Statment or connection error: " + se.toString() ) ;
    		}
    	}
		return resultList ;
	}
	
	/**
	 * 查詢所有商品資料並依條件排序
	 * @return  List  of   Product 
	 */
	public static List<Product> queryProductByOrder(String orderAttribute , String orderSequence ,int startLimit , int endLimit )
	{
		if( orderAttribute == null || orderAttribute.equals("") ){
			return queryProduct() ;
		}
		if( startLimit > endLimit){
			int temp =  endLimit ;
			endLimit = startLimit ;
			startLimit = temp ;
		}
		if( orderSequence == null || orderSequence.equals("") || ( !orderSequence.equals("asc")  && !orderSequence.equals("desc") ) ){
			orderSequence = "asc" ;
		}
		Connection conn = null;
    	try {
    		//連結資料庫
    		conn =  Connector.connection() ;
    	} catch ( Exception e ) {
            System.err.println( "Get DataSource or Connection error: " + e.toString() );
    		return null;
    	}
    	
    	PreparedStatement pst = null;
		List<Product> resultList = new ArrayList<>() ;
		try {
			// select data
			pst = conn.prepareStatement( "SELECT * FROM product_details Order By " +  orderAttribute + " " + orderSequence 
					+ " LIMIT " +  startLimit + "," +  endLimit ); 
			pst.clearParameters();  // 清空之前設定的參數
			ResultSet rs = pst.executeQuery() ;
			// print select result
			while (rs.next()) {
				Product newProduct = new Product() ;
				newProduct.productId =  rs.getString("product_id") ;
				newProduct.sellerId =  rs.getString("user_id") ;
				newProduct.name =  rs.getString("name") ;
				newProduct.price =  rs.getInt("price") ;
				newProduct.shippingFee =  rs.getInt("shipping_fee") ;
				newProduct.productType =  rs.getString("product_type") ;
				newProduct.salesType =  rs.getString("sales_type") ;
				newProduct.information =  rs.getString("information") ;
				newProduct.quantity =  rs.getInt("quantity") ;
				newProduct.salesState =  rs.getString("sales") ;
				newProduct.imageUrl1 =  rs.getString("image1") ;
				newProduct.imageUrl2 =  rs.getString("image2") ;
				newProduct.imageUrl3 =  rs.getString("image3") ;
				// add to List
				resultList.add(newProduct) ;
			}
		} catch ( SQLException e){
            System.err.println("Got an exception! ");
            System.err.println(e.getMessage());
		} finally {
    		try
    		{
				if ( pst != null ) pst.close();
    			conn.close();
    		} catch ( SQLException se ) {
    			 System.err.println( "close ResultSet or Statment or connection error: " + se.toString() ) ;
    		}
    	}
		return resultList ;
	}
	
	/**
	 * 依商品類型查詢商品資料
	 * @return   Product  商品資料
	 */
	public static List<Product> queryProductByType(String type ,int startLimit , int endLimit)
	{
		if( type == null || type.equals("")){
			return null ;
		}
		if( startLimit > endLimit){
			int temp =  endLimit ;
			endLimit = startLimit ;
			startLimit = temp ;
		}
		Connection conn = null;
    	try {
    		//連結資料庫
    		conn =  Connector.connection() ;
    	} catch ( Exception e ) {
            System.err.println( "Get DataSource or Connection error: " + e.toString() );
    		return null;
    	}
    	
    	PreparedStatement pst = null;
		List<Product> resultList = new ArrayList<>() ;
		try {
			// select data
			pst = conn.prepareStatement( "SELECT * FROM product_details Where product_type = ? " + " LIMIT " +  startLimit + "," +  endLimit ); 
			pst.clearParameters();  // 清空之前設定的參數
			pst.setString(1, type ); 
			ResultSet rs = pst.executeQuery() ;
			// print select result
			while (rs.next()) {
				Product newProduct = new Product() ;
				newProduct.productId =  rs.getString("product_id") ;
				newProduct.sellerId =  rs.getString("user_id") ;
				newProduct.name =  rs.getString("name") ;
				newProduct.price =  rs.getInt("price") ;
				newProduct.shippingFee =  rs.getInt("shipping_fee") ;
				newProduct.productType =  rs.getString("product_type") ;
				newProduct.salesType =  rs.getString("sales_type") ;
				newProduct.information =  rs.getString("information") ;
				newProduct.quantity =  rs.getInt("quantity") ;
				newProduct.salesState =  rs.getString("sales") ;
				newProduct.imageUrl1 =  rs.getString("image1") ;
				newProduct.imageUrl2 =  rs.getString("image2") ;
				newProduct.imageUrl3 =  rs.getString("image3") ;
				// add to List
				resultList.add(newProduct) ;
			}
		} catch ( SQLException e){
            System.err.println("Got an exception! ");
            System.err.println(e.getMessage());
		} finally {
    		try
    		{
				if ( pst != null ) pst.close();
    			conn.close();
    		} catch ( SQLException se ) {
    			 System.err.println( "close ResultSet or Statment or connection error: " + se.toString() ) ;
    		}
    	}
		return resultList ;
	}
	
	/**
	 * 依商品類型查詢商品資料並依條件排序
	 * @return   Product  商品資料
	 */
	public static List<Product> queryProductByTypeAndOrder(String type ,String orderAttribute , String orderSequence ,int startLimit , int endLimit)
	{
		if( type == null || type.equals("")){
			return null ;
		}
		if( orderAttribute == null || orderAttribute.equals("") ){
			return queryProductByType(type,startLimit,endLimit) ;
		}
		if( startLimit > endLimit){
			int temp =  endLimit ;
			endLimit = startLimit ;
			startLimit = temp ;
		}
		if( orderSequence == null || orderSequence.equals("") || ( !orderSequence.equals("asc")  && !orderSequence.equals("desc") ) ){
			orderSequence = "asc" ;
		}
		Connection conn = null;
    	try {
    		//連結資料庫
    		conn =  Connector.connection() ;
    	} catch ( Exception e ) {
            System.err.println( "Get DataSource or Connection error: " + e.toString() );
    		return null;
    	}
    	
    	PreparedStatement pst = null;
		List<Product> resultList = new ArrayList<>() ;
		try {
			// select data
			pst = conn.prepareStatement( "SELECT * FROM product_details Where product_type = ? Order By " +  orderAttribute + " " + orderSequence 
					+ " LIMIT " +  startLimit + "," +  endLimit ); 
			pst.clearParameters();  // 清空之前設定的參數
			pst.setString(1, type ); 
			ResultSet rs = pst.executeQuery() ;
			// print select result
			while (rs.next()) {
				Product newProduct = new Product() ;
				newProduct.productId =  rs.getString("product_id") ;
				newProduct.sellerId =  rs.getString("user_id") ;
				newProduct.name =  rs.getString("name") ;
				newProduct.price =  rs.getInt("price") ;
				newProduct.shippingFee =  rs.getInt("shipping_fee") ;
				newProduct.productType =  rs.getString("product_type") ;
				newProduct.salesType =  rs.getString("sales_type") ;
				newProduct.information =  rs.getString("information") ;
				newProduct.quantity =  rs.getInt("quantity") ;
				newProduct.salesState =  rs.getString("sales") ;
				newProduct.imageUrl1 =  rs.getString("image1") ;
				newProduct.imageUrl2 =  rs.getString("image2") ;
				newProduct.imageUrl3 =  rs.getString("image3") ;
				// add to List
				resultList.add(newProduct) ;
			}
		} catch ( SQLException e){
            System.err.println("Got an exception! ");
            System.err.println(e.getMessage());
		} finally {
    		try
    		{
				if ( pst != null ) pst.close();
    			conn.close();
    		} catch ( SQLException se ) {
    			 System.err.println( "close ResultSet or Statment or connection error: " + se.toString() ) ;
    		}
    	}
		return resultList ;
	}

    /**
 * 依不同情況查詢商品資料並依條件排序
 * @param keyword 關鍵字
 * @param product_type 商品類型
 * @param sales_type 
 * @param orderAttribute 條件排序
 * @param orderSequence 條件排序
 * @param startLimit 頁數
 * @param endLimit 頁數
 * @return   List of Product  商品資料List
 */
public static List<Product> queryProduct(String keyword  , String product_type , String sales_type ,String orderAttribute , String orderSequence ,int startLimit , int endLimit)
    {
        
        if( orderSequence == null || orderSequence.equals("") || ( !orderSequence.equals("asc")  && !orderSequence.equals("desc") ) ){
            orderSequence = "asc" ;
        }
        Connection conn = null;
        try {
            //連結資料庫
            conn =  Connector.connection() ;
        } catch ( Exception e ) {
            System.err.println( "Get DataSource or Connection error: " + e.toString() );
            return null;
        }
        
        PreparedStatement pst = null;
        List<String> parameterList = new ArrayList<String>() ;
        List<Product> resultList = new ArrayList<>() ;
        try {
            // select data
            String qryStat =  "SELECT * FROM product_details Where 1 and 1 " ;
            
            if( keyword != null && !keyword.equals("") ){
                qryStat += " And ( name like ? Or information like ? )  " ;
                parameterList.add("%" + keyword + "%") ;
                parameterList.add("%" + keyword + "%") ;
            }
            if( sales_type != null && ( sales_type.equals("S") || sales_type.equals("B") ) ){
                qryStat += " And sales_type = ? " ;
                parameterList.add(sales_type) ;
            }
            if( product_type != null && !product_type.equals("") ){
                qryStat += " And product_type = ? " ;
                parameterList.add(product_type) ;
            }
            if( orderAttribute != null && !orderAttribute.equals("")){
                qryStat += " Order By " +  orderAttribute + " " + orderSequence  ;
            }
            if( startLimit >= 0 ){
                qryStat +=  " LIMIT " +  startLimit + "," +  endLimit ;
            }
            
            pst = conn.prepareStatement( qryStat ); 
            pst.clearParameters();  // 清空之前設定的參數
            for( int i = 0 ; i < parameterList.size() ; i++ ){
                pst.setString(i+1, parameterList.get(i) ); 
            }
            ResultSet rs = pst.executeQuery() ;
            // print select result
            while (rs.next()) {
                Product newProduct = new Product() ;
                newProduct.productId =  rs.getString("product_id") ;
                newProduct.sellerId =  rs.getString("user_id") ;
                newProduct.name =  rs.getString("name") ;
                newProduct.price =  rs.getInt("price") ;
                newProduct.shippingFee =  rs.getInt("shipping_fee") ;
                newProduct.productType =  rs.getString("product_type") ;
                newProduct.salesType =  rs.getString("sales_type") ;
                newProduct.information =  rs.getString("information") ;
                newProduct.quantity =  rs.getInt("quantity") ;
                newProduct.salesState =  rs.getString("sales") ;
                newProduct.imageUrl1 =  rs.getString("image1") ;
                newProduct.imageUrl2 =  rs.getString("image2") ;
                newProduct.imageUrl3 =  rs.getString("image3") ;
                // add to List
                resultList.add(newProduct) ;
            }
        } catch ( SQLException e){
            System.err.println("Got an exception! ");
            System.err.println(e.getMessage());
        } finally {
            try
            {
                if ( pst != null ) pst.close();
                conn.close();
            } catch ( SQLException se ) {
                 System.err.println( "close ResultSet or Statment or connection error: " + se.toString() ) ;
            }
        }
        return resultList ;
    }
	/**
	 * 查詢特定商品資料
	 * @return   Product  商品資料
	 */
	public static Product queryProduct(String productId)
	{
		if( productId == null || productId.equals("")){
			return null ;
		}
		Connection conn = null;
    	try {
    		//連結資料庫
    		conn =  Connector.connection() ;
    	} catch ( Exception e ) {
            System.err.println( "Get DataSource or Connection error: " + e.toString() );
    		return null;
    	}
    	
    	PreparedStatement pst = null;
		Product newProduct = new Product() ;
		try {
			// select data
			pst = conn.prepareStatement( "SELECT * FROM product_details Where product_id = ? " ); 
			pst.clearParameters();  // 清空之前設定的參數
			pst.setString(1, productId ); 
			ResultSet rs = pst.executeQuery() ;
			// print select result
			if (rs.next()) {
				newProduct.productId =  rs.getString("product_id") ;
				newProduct.sellerId =  rs.getString("user_id") ;
				newProduct.name =  rs.getString("name") ;
				newProduct.price =  rs.getInt("price") ;
				newProduct.shippingFee =  rs.getInt("shipping_fee") ;
				newProduct.productType =  rs.getString("product_type") ;
				newProduct.salesType =  rs.getString("sales_type") ;
				newProduct.information =  rs.getString("information") ;
				newProduct.quantity =  rs.getInt("quantity") ;
				newProduct.salesState =  rs.getString("sales") ;
				newProduct.imageUrl1 =  rs.getString("image1") ;
				newProduct.imageUrl2 =  rs.getString("image2") ;
				newProduct.imageUrl3 =  rs.getString("image3") ;
				
				return newProduct ;
			}
		} catch ( SQLException e){
            System.err.println("Got an exception! ");
            System.err.println(e.getMessage());
		} finally {
    		try
    		{
				if ( pst != null ) pst.close();
    			conn.close();
    		} catch ( SQLException se ) {
    			 System.err.println( "close ResultSet or Statment or connection error: " + se.toString() ) ;
    		}
    	}
		return null ;
	}
	
	/**
	 * 查詢特定商品資料
	 * @return   Product  商品資料
	 */
	public static BiddingProduct queryBiddingProduct(String productId)
	{
		if( productId == null || productId.equals("")){
			return null ;
		}
		Connection conn = null;
    	try {
    		//連結資料庫
    		conn =  Connector.connection() ;
    	} catch ( Exception e ) {
            System.err.println( "Get DataSource or Connection error: " + e.toString() );
    		return null;
    	}
    	
    	PreparedStatement pst = null;
    	BiddingProduct newProduct = new BiddingProduct() ;
		try {
			// select data
			pst = conn.prepareStatement( "SELECT * FROM product_details Where product_id = ? " ); 
			pst.clearParameters();  // 清空之前設定的參數
			pst.setString(1, productId ); 
			ResultSet rs = pst.executeQuery() ;
			// print select result
			if (rs.next()) {
				newProduct.productId =  rs.getString("product_id") ;
				newProduct.sellerId =  rs.getString("user_id") ;
				newProduct.name =  rs.getString("name") ;
				newProduct.price =  rs.getInt("price") ;
				newProduct.shippingFee =  rs.getInt("shipping_fee") ;
				newProduct.productType =  rs.getString("product_type") ;
				newProduct.salesType =  rs.getString("sales_type") ;
				newProduct.information =  rs.getString("information") ;
				newProduct.quantity =  rs.getInt("quantity") ;
				newProduct.salesState =  rs.getString("sales") ;
				newProduct.imageUrl1 =  rs.getString("image1") ;
				newProduct.imageUrl2 =  rs.getString("image2") ;
				newProduct.imageUrl3 =  rs.getString("image3") ;
				
				pst = conn.prepareStatement( "SELECT * FROM bidding_product Where product_id = ? " ); 
				pst.clearParameters();  // 清空之前設定的參數
				pst.setString(1, productId ); 
				ResultSet rs2 = pst.executeQuery() ;
				if (rs2.next()) {
					newProduct.lastbid_user_id = rs2.getString("lastbid_user_id") ; 
					newProduct.original_price = rs2.getInt("original_price") ; 
					newProduct.minbid_price = rs2.getInt("minbid_price") ; 
					newProduct.start_time = rs2.getString("start_time") ; 
					newProduct.end_time = rs2.getString("end_time") ; 
					
					// 取得評價用戶基本資料
					if(newProduct.lastbid_user_id != null){
					User user = queryUserById( newProduct.lastbid_user_id );
						if (user != null) {
							newProduct.lastbid_userName =  user.name ;
						}
					}else {
						newProduct.lastbid_userName = "" ;
					}
					return newProduct ;
				}
			}
		} catch ( SQLException e){
            System.err.println("Got an exception! ");
            System.err.println(e.getMessage());
		} finally {
    		try
    		{
				if ( pst != null ) pst.close();
    			conn.close();
    		} catch ( SQLException se ) {
    			 System.err.println( "close ResultSet or Statment or connection error: " + se.toString() ) ;
    		}
    	}
		return null ;
	}
	/**
	 * 查詢未評價資料
	 * @return  List  of   Comment 
	 */
	public static List<String> queryNeedFeedbackProduct( String productId)
	{
		if( productId == null || productId.equals("")){
			return null ;
		}
		Connection conn = null;
    	try {
    		//連結資料庫
    		conn =  Connector.connection() ;
    	} catch ( Exception e ) {
            System.err.println( "Get DataSource or Connection error: " + e.toString() );
    		return null;
    	}
    	
    	PreparedStatement pst = null;
		List<String> ProductIdList = new ArrayList<>() ;
		try {
			// select data
			pst = conn.prepareStatement( "SELECT product_id FROM order_product_detail Where product_id not in(SELECT product_id From feedback Where user_id = ?)" ); 
			pst.clearParameters();  // 清空之前設定的參數
			pst.setString(1, productId ); 
			ResultSet rs = pst.executeQuery() ;
			// print select result
			while (rs.next()) {
				
				ProductIdList.add (rs.getString("product_id")) ;
				
			}
			
			return ProductIdList ;
		} catch ( SQLException e){
	        System.err.println("Got an exception! ");
	        System.err.println(e.getMessage());
		} finally {
    		try
    		{
				if ( pst != null ) pst.close();
    			conn.close();
    		} catch ( SQLException se ) {
    			 System.err.println( "close ResultSet or Statment or connection error: " + se.toString() ) ;
    		}
    	}
		return null ;
	}
	
	/**
	 * 查詢所有訂單資料
	 * @return  List  of   Order 
	 */
	public static List<Order> queryOrder(){
		Connection conn = null;
    	try {
    		//連結資料庫
    		conn =  Connector.connection() ;
    	} catch ( Exception e ) {
            System.err.println( "Get DataSource or Connection error: " + e.toString() );
    		return null;
    	}
    	
    	PreparedStatement pst = null;
		List<Order> resultList = new ArrayList<>() ;
		try {
			// select data
			pst = conn.prepareStatement( "SELECT * FROM order_details " ); 
			pst.clearParameters();  // 清空之前設定的參數
			ResultSet rs = pst.executeQuery() ;
			// print select result
			while (rs.next()) {
				Order newOrder = new Order() ;
				// 取得訂單基本資料
				newOrder.orderId =  rs.getString("order_id") ;
				newOrder.userId =  rs.getString("user_id") ;
				newOrder.orderTime =  rs.getString("orderTime") ;
				newOrder.payment =  rs.getString("payment") ;
				newOrder.shipping_method =  rs.getString("shipping_method") ;
				newOrder.price =  rs.getInt("price") ;
				newOrder.shippingFee =  rs.getInt("shipping_fee") ;
				newOrder.destination =  rs.getString("destination") ;
				newOrder.recipient =  rs.getString("recipient") ;
				newOrder.shippingState =  rs.getString("state") ;
				newOrder.shipDate =  rs.getString("ship_date") ;
				newOrder.toStroeDate =  rs.getString("toStroe_date") ;
				newOrder.receiveDate =  rs.getString("receive_date") ;
				
				// 取得訂單商品基本資料
				pst = conn.prepareStatement( "SELECT * FROM order_product_detail Where order_id = ? " ); 
				pst.clearParameters();  // 清空之前設定的參數
				pst.setString(1, newOrder.orderId  );
				ResultSet rs2 = pst.executeQuery() ;
				
				while (rs2.next()) {
					OrderProduct newOrderProduct = new OrderProduct() ;
					newOrderProduct.orderId = rs2.getString("order_id") ;
					newOrderProduct.productId = rs2.getString("product_id") ;
					newOrderProduct.buyQuantity = rs2.getInt("buy_quantity") ;
					newOrderProduct.name = rs2.getString("name") ;
					newOrderProduct.price = rs2.getInt("price") ;
					newOrderProduct.shippingFee =  rs2.getInt("shipping_fee") ;
					newOrderProduct.productType = rs2.getString("product_type") ;
					newOrderProduct.salesType = rs2.getString("sales_type") ;
					newOrderProduct.information = rs2.getString("information") ;
					newOrderProduct.quantity = rs2.getInt("product_quantity") ;
					newOrderProduct.salesState = rs2.getString("sales") ;
					
					newOrder.productList.add(newOrderProduct) ;
				}
				
				// add to List
				resultList.add(newOrder) ;
			}
		} catch ( SQLException e){
            System.err.println("Got an exception! ");
            System.err.println(e.getMessage());
		} finally {
    		try
    		{
				if ( pst != null ) pst.close();
    			conn.close();
    		} catch ( SQLException se ) {
    			 System.err.println( "close ResultSet or Statment or connection error: " + se.toString() ) ;
    		}
    	}
		return resultList ;
	}
	
	/**
	 * 查詢用戶訂單清單
	 * @return  Order  訂單資料
	 */
	public static List<Order> queryOrderByUserId(String userId)
	{
		if( userId == null || userId.equals("") ){
			return null ;
		}
		Connection conn = null;
    	try {
    		//連結資料庫
    		conn =  Connector.connection() ;
    	} catch ( Exception e ) {
            System.err.println( "Get DataSource or Connection error: " + e.toString() );
    		return null;
    	}
    	
    	PreparedStatement pst = null;
    	List<Order> resultList = new ArrayList<>() ;
		try {
			// select data
			pst = conn.prepareStatement( "SELECT * FROM order_details Where user_id = ? " ); 
			pst.clearParameters();  // 清空之前設定的參數
			pst.setString(1, userId ); 
			ResultSet rs = pst.executeQuery() ;
			// print select result
			while (rs.next()) {
				Order newOrder = new Order() ;
				// 取得訂單基本資料
				newOrder.orderId =  rs.getString("order_id") ;
				newOrder.userId =  rs.getString("user_id") ;
				newOrder.orderTime =  rs.getString("orderTime") ;
				newOrder.payment =  rs.getString("payment") ;
				newOrder.shipping_method =  rs.getString("shipping_method") ;
				newOrder.price =  rs.getInt("price") ;
				newOrder.shippingFee =  rs.getInt("shipping_fee") ;
				newOrder.destination =  rs.getString("destination") ;
				newOrder.recipient =  rs.getString("recipient") ;
				newOrder.shippingState =  rs.getString("state") ;
				newOrder.shipDate =  rs.getString("ship_date") ;
				newOrder.toStroeDate =  rs.getString("toStroe_date") ;
				newOrder.receiveDate =  rs.getString("receive_date") ;
				
				// 取得訂單商品基本資料
				pst = conn.prepareStatement( "SELECT * FROM order_product_detail Where order_id = ? " ); 
				pst.clearParameters();  // 清空之前設定的參數
				pst.setString(1, newOrder.orderId ); 
				ResultSet rs2 = pst.executeQuery() ;
				
				while (rs2.next()) {
					OrderProduct newOrderProduct = new OrderProduct() ;
					newOrderProduct.orderId = rs2.getString("order_id") ;
					newOrderProduct.productId = rs2.getString("product_id") ;
					newOrderProduct.buyQuantity = rs2.getInt("buy_quantity") ;
					newOrderProduct.name = rs2.getString("name") ;
					newOrderProduct.price = rs2.getInt("price") ;
					newOrderProduct.shippingFee =  rs2.getInt("shipping_fee") ;
					newOrderProduct.productType = rs2.getString("product_type") ;
					newOrderProduct.salesType = rs2.getString("sales_type") ;
					newOrderProduct.information = rs2.getString("information") ;
					newOrderProduct.quantity = rs2.getInt("product_quantity") ;
					newOrderProduct.salesState = rs2.getString("sales") ;
					
					newOrder.productList.add(newOrderProduct) ;
				}
				resultList.add(newOrder) ;
			}
			return resultList ;
		} catch ( SQLException e){
            System.err.println("Got an exception! ");
            System.err.println(e.getMessage());
		} finally {
    		try
    		{
				if ( pst != null ) pst.close();
    			conn.close();
    		} catch ( SQLException se ) {
    			 System.err.println( "close ResultSet or Statment or connection error: " + se.toString() ) ;
    		}
    	}
		return null ;
	}
	
	/**
	 * 查詢特定訂單資料
	 * @return  Order  訂單資料
	 */
	public static Order queryOrderByOrderId(String orderId)
	{
		if( orderId == null || orderId.equals("") ){
			return null ;
		}
		Connection conn = null;
    	try {
    		//連結資料庫
    		conn =  Connector.connection() ;
    	} catch ( Exception e ) {
            System.err.println( "Get DataSource or Connection error: " + e.toString() );
    		return null;
    	}
    	
    	PreparedStatement pst = null;
		try {
			// select data
			pst = conn.prepareStatement( "SELECT * FROM order_details Where order_id = ? " ); 
			pst.clearParameters();  // 清空之前設定的參數
			pst.setString(1, orderId ); 
			ResultSet rs = pst.executeQuery() ;
			// print select result
			if (rs.next()) {
				Order newOrder = new Order() ;
				// 取得訂單基本資料
				newOrder.orderId =  rs.getString("order_id") ;
				newOrder.userId =  rs.getString("user_id") ;
				newOrder.orderTime =  rs.getString("orderTime") ;
				newOrder.payment =  rs.getString("payment") ;
				newOrder.shipping_method =  rs.getString("shipping_method") ;
				newOrder.price =  rs.getInt("price") ;
				newOrder.shippingFee =  rs.getInt("shipping_fee") ;
				newOrder.destination =  rs.getString("destination") ;
				newOrder.recipient =  rs.getString("recipient") ;
				newOrder.shippingState =  rs.getString("state") ;
				newOrder.shipDate =  rs.getString("ship_date") ;
				newOrder.toStroeDate =  rs.getString("toStroe_date") ;
				newOrder.receiveDate =  rs.getString("receive_date") ;
				
				// 取得訂單商品基本資料
				pst = conn.prepareStatement( "SELECT * FROM order_product_detail Where order_id = ? " ); 
				pst.clearParameters();  // 清空之前設定的參數
				pst.setString(1, orderId ); 
				ResultSet rs2 = pst.executeQuery() ;
				
				while (rs2.next()) {
					OrderProduct newOrderProduct = new OrderProduct() ;
					newOrderProduct.orderId = rs2.getString("order_id") ;
					newOrderProduct.productId = rs2.getString("product_id") ;
					newOrderProduct.buyQuantity = rs2.getInt("buy_quantity") ;
					newOrderProduct.name = rs2.getString("name") ;
					newOrderProduct.price = rs2.getInt("price") ;
					newOrderProduct.shippingFee =  rs2.getInt("shipping_fee") ;
					newOrderProduct.productType = rs2.getString("product_type") ;
					newOrderProduct.salesType = rs2.getString("sales_type") ;
					newOrderProduct.information = rs2.getString("information") ;
					newOrderProduct.quantity = rs2.getInt("product_quantity") ;
					newOrderProduct.salesState = rs2.getString("sales") ;
					
					HashMap<String, String> imageMap = queryProductImage(newOrderProduct.productId) ;
					newOrderProduct.imageUrl1 = imageMap.get("image1") ;
					newOrderProduct.imageUrl2 = imageMap.get("image2") ;
					newOrderProduct.imageUrl3 = imageMap.get("image3") ;
					
					newOrder.productList.add(newOrderProduct) ;
				}
				
				return newOrder ;
			}
		} catch ( SQLException e){
            System.err.println("Got an exception! ");
            System.err.println(e.getMessage());
		} finally {
    		try
    		{
				if ( pst != null ) pst.close();
    			conn.close();
    		} catch ( SQLException se ) {
    			 System.err.println( "close ResultSet or Statment or connection error: " + se.toString() ) ;
    		}
    	}
		return null ;
	}
	
	/**
	 * 查詢商品留言資料
	 * @return  List  of   Comment 
	 */
	public static List<Comment> queryProductComment( String productId)
	{
		if( productId == null || productId.equals("")){
			return null ;
		}
		Connection conn = null;
    	try {
    		//連結資料庫
    		conn =  Connector.connection() ;
    	} catch ( Exception e ) {
            System.err.println( "Get DataSource or Connection error: " + e.toString() );
    		return null;
    	}
    	
    	PreparedStatement pst = null;
		List<Comment> resultList = new ArrayList<>() ;
		try {
			// select data
			pst = conn.prepareStatement( "SELECT * FROM comment Where product_id = ? " ); 
			pst.clearParameters();  // 清空之前設定的參數
			pst.setString(1, productId ); 
			ResultSet rs = pst.executeQuery() ;
			// print select result
			while (rs.next()) {
				Comment newComment = new Comment() ;
				// 取得商品留言基本資料
				newComment.commentId =  rs.getString("comment_id") ;
				newComment.productId =  productId ;
				newComment.userId =  rs.getString("user_id") ;
				newComment.opinion =  rs.getString("opinion") ;
				newComment.addTime =  rs.getString("add_time") ;
				newComment.updTime =  rs.getString("upd_time") ;

				// 取得留言用戶基本資料
				User user = queryUserById(  newComment.userId );
				
				if (user != null) {
					newComment.userName =  user.name ;

					// add to List
					resultList.add(newComment) ;
				}
			}
			
			return resultList ;
		} catch ( SQLException e){
	        System.err.println("Got an exception! ");
	        System.err.println(e.getMessage());
		} finally {
    		try
    		{
				if ( pst != null ) pst.close();
    			conn.close();
    		} catch ( SQLException se ) {
    			 System.err.println( "close ResultSet or Statment or connection error: " + se.toString() ) ;
    		}
    	}
		return null ;
	}
	
	/**
	 * 查詢商品評價資料
	 * @return  List  of   Feedback 
	 */
	public static List<Feedback> queryProductFeedback( String productId)
	{
		if( productId == null || productId.equals("")){
			return null ;
		}
		Connection conn = null;
    	try {
    		//連結資料庫
    		conn =  Connector.connection() ;
    	} catch ( Exception e ) {
            System.err.println( "Get DataSource or Connection error: " + e.toString() );
    		return null;
    	}
    	
    	PreparedStatement pst = null;
		List<Feedback> resultList = new ArrayList<>() ;
		try {
			// select data
			pst = conn.prepareStatement( "SELECT * FROM feedback Where product_id = ? " ); 
			pst.clearParameters();  // 清空之前設定的參數
			pst.setString(1, productId ); 
			ResultSet rs = pst.executeQuery() ;
			// print select result
			while (rs.next()) {
				Feedback newFeedback = new Feedback() ;
				// 取得商品評價基本資料
				newFeedback.feedbackId =  rs.getString("feedback_id") ;
				newFeedback.productId =  productId ;
				newFeedback.userId =  rs.getString("user_id") ;
				newFeedback.mark =  rs.getInt("mark") ;
				newFeedback.addTime =  rs.getString("add_time") ;
				newFeedback.updTime =  rs.getString("upd_time") ;

				// 取得評價用戶基本資料
				User user = queryUserById(  newFeedback.userId );
				
				if (user != null) {
					newFeedback.userName =  user.name ;

					// add to List
					resultList.add(newFeedback) ;
				}
			}

			return resultList ;
		} catch ( SQLException e){
	        System.err.println("Got an exception! ");
	        System.err.println(e.getMessage());
		} finally {
    		try
    		{
				if ( pst != null ) pst.close();
    			conn.close();
    		} catch ( SQLException se ) {
    			 System.err.println( "close ResultSet or Statment or connection error: " + se.toString() ) ;
    		}
    	}
		return null ;
	}
	
	/**
	 * 查詢購物車資料
	 * @return  List  of   CartProduct 
	 */
	public static List<CartProduct> queryCart(String userId)
	{
		if( userId == null || userId.equals("")){
			return null ;
		}
		Connection conn = null;
    	try {
    		//連結資料庫
    		conn =  Connector.connection() ;
    	} catch ( Exception e ) {
            System.err.println( "Get DataSource or Connection error: " + e.toString() );
    		return null;
    	}
    	
    	PreparedStatement pst = null;
		List<CartProduct> resultList = new ArrayList<>() ;
		try {
			// select data
			pst = conn.prepareStatement( "SELECT * FROM cart Where user_id = ? " ); 
			pst.clearParameters();  // 清空之前設定的參數
			pst.setString(1, userId ); 
			ResultSet rs = pst.executeQuery() ;
			// print select result
			while (rs.next()) {
				CartProduct newProduct = new CartProduct() ;
				//resultMap.put("userId", rs.getString("user_id") ) ;
				//resultMap.put("productId", rs.getString("product_id") ) ;
				newProduct.buyQuantity = rs.getInt("quantity")  ;
				
				// 取得購物車商品基本資料
				pst = conn.prepareStatement( "SELECT * FROM product_details Where product_id = ? " ); 
				pst.clearParameters();  // 清空之前設定的參數
				pst.setString(1, rs.getString("product_id") ); 
				ResultSet rs2 = pst.executeQuery() ;
				
				if (rs2.next()) {
					newProduct.productId =  rs2.getString("product_id") ;
					newProduct.sellerId =  rs2.getString("user_id") ;
					newProduct.name =  rs2.getString("name") ;
					newProduct.price =  rs2.getInt("price") ;
					newProduct.shippingFee =  rs2.getInt("shipping_fee") ;
					newProduct.productType =  rs2.getString("product_type") ;
					newProduct.salesType =  rs2.getString("sales_type") ;
					newProduct.information =  rs2.getString("information") ;
					newProduct.quantity =  rs2.getInt("quantity") ;
					newProduct.salesState =  rs2.getString("sales") ;
					newProduct.imageUrl1 =  rs2.getString("image1") ;
					newProduct.imageUrl2 =  rs2.getString("image2") ;
					newProduct.imageUrl3 =  rs2.getString("image3") ;

					// add to List
					resultList.add(newProduct) ;
				}
			}
		} catch ( SQLException e){
            System.err.println("Got an exception! ");
            System.err.println(e.getMessage());
		} finally {
    		try
    		{
				if ( pst != null ) pst.close();
    			conn.close();
    		} catch ( SQLException se ) {
    			 System.err.println( "close ResultSet or Statment or connection error: " + se.toString() ) ;
    		}
    	}
		return resultList ;
	}

	/**
	 * 查詢購物車現有商品總價
	 * @return  商品總價int
	 */
	public static int queryCartProductTotalPrice(String userId)
	{
		if( userId == null || userId.equals("")){
			return 0 ;
		}
		List<CartProduct> userCart = queryCart(userId) ;
		int totalPrice = 0 ;
    	for (CartProduct cartProduct : userCart)
		{
    		totalPrice += cartProduct.getBuyQuantity() * cartProduct.getPrice() ;
		}
    	return totalPrice ;
	}
	
	/**
	 * 查詢店家優惠卷資料
	 * @return  List  of   Coupon 
	 */
	public static List<Coupon> queryCoupon(String userId)
	{
		if( userId == null || userId.equals("") ){
			return null ;
		}
		Connection conn = null;
    	try {
    		//連結資料庫
    		conn =  Connector.connection() ;
    	} catch ( Exception e ) {
            System.err.println( "Get DataSource or Connection error: " + e.toString() );
    		return null;
    	}
    	
    	PreparedStatement pst = null;
		List<Coupon> resultList = new ArrayList<>() ;
		try {
			// select data
			pst = conn.prepareStatement( "SELECT * FROM coupon Where user_id = ? " ); 
			pst.clearParameters();  // 清空之前設定的參數
			pst.setString(1, userId ); 
			ResultSet rs = pst.executeQuery() ;
			// print select result
			while (rs.next()) {
				Coupon newCoupon = new Coupon() ;
				// 取得商品留言基本資料
				newCoupon.couponId =  rs.getString("coupon_id") ;
				newCoupon.storeId =  rs.getString("user_id") ;
				newCoupon.name =  rs.getString("name") ;
				newCoupon.information =  rs.getString("information") ;
				newCoupon.discount =  rs.getDouble("discount") ;

				// add to List
				resultList.add(newCoupon) ;
			}
			return resultList ;
			
		} catch ( SQLException e){
	        System.err.println("Got an exception! ");
	        System.err.println(e.getMessage());
		} finally {
    		try
    		{
				if ( pst != null ) pst.close();
    			conn.close();
    		} catch ( SQLException se ) {
    			 System.err.println( "close ResultSet or Statment or connection error: " + se.toString() ) ;
    		}
    	}
		return null ;
	}
	
	/**
	 * 查詢商品圖片
	 * @return 資料結果HashMap List
	 * HashMapproduct_id , image1, image2 ,image3
	 */
	@SuppressWarnings("rawtypes")
	public static HashMap queryProductImage(String productId)
	{
		Connection conn = null;
    	try {
    		//連結資料庫
    		conn =  Connector.connection() ;
    	} catch ( Exception e ) {
            System.err.println( "Get DataSource or Connection error: " + e.toString() );
    		return null;
    	}
    	
    	PreparedStatement pst = null;
    	HashMap<String, Object> resultMap = new HashMap<>() ;
		try {
			// select data
			pst = conn.prepareStatement( "SELECT `product_id` , IFNULL(`image1`,'') image1 , IFNULL(`image2`,'') image2 , IFNULL(`image3`,'') image3 FROM `product_image` "
					+ "where product_id = ?" ); 

			pst.clearParameters();  // 清空之前設定的參數
			pst.setString(1, productId ); 
			ResultSet rs = pst.executeQuery() ;
			// print select result
			while (rs.next()) {
				
				resultMap.put("product_id", rs.getString("product_id") ) ;
				resultMap.put("image1", rs.getString("image1") ) ;
				resultMap.put("image2", rs.getString("image2") ) ;
				resultMap.put("image3", rs.getString("image3") ) ;
			}
		} catch ( SQLException e){
            System.err.println("Got an exception! ");
            System.err.println(e.getMessage());
		} finally {
    		try
    		{
				if ( pst != null ) pst.close();
    			conn.close();
    		} catch ( SQLException se ) {
    			 System.err.println( "close ResultSet or Statment or connection error: " + se.toString() ) ;
    		}
    	}
		return resultMap ;
	}

	/**
	 * 合拼訂單
	 * @param userID  希望合拼訂單用戶id
	 * @param targetUserID  抓取訂單目標用戶之ID
	 */
	public static void mergeOrder(String userID , String targetUserID)
	{
		if( Integer.parseInt(userID) == Integer.parseInt(targetUserID) ){
			return ;
		}
		Connection conn = null;
    	try {
    		//連結資料庫
    		conn =  Connector.connection() ;
    	} catch ( Exception e ) {
            System.err.println( "Get DataSource or Connection error: " + e.toString() );
    		return ;
    	}
    	
    	PreparedStatement pst = null;
		try {
			// 取得需要合拼的訂單資料
			pst = conn.prepareStatement( "SELECT product_id , quantity FROM cart where user_id = ? " ); 
			pst.clearParameters();  // 清空之前設定的參數
			pst.setInt(1, Integer.parseInt(targetUserID) ) ; 

			
			ResultSet rs = pst.executeQuery() ;
			// 將取得的資料加入至目標使用者的訂單
			while (rs.next()) {
				// 檢查現在用戶的購物車是否已有相同的商品
				pst = conn.prepareStatement( "SELECT product_id FROM cart where user_id = ? and product_id = ? " ); 
				pst.clearParameters();  // 清空之前設定的參數
				pst.setInt(1, Integer.parseInt(userID) ) ; 
				pst.setInt(2, rs.getInt("product_id") ) ; 
				ResultSet rs2 = pst.executeQuery() ;
				if( rs2.next() ){     // 已有相同的商品 > 更新購買數量(相加)
					String insertNewPoiductSQL = "update cart set quantity = quantity + ? where user_id = ? and product_id = ? " ; 

					pst.clearParameters();  // 清空之前設定的參數
					pst = conn.prepareStatement(insertNewPoiductSQL);    // 設定Sql statement 
				      
					//設定insert中的每個參數
					pst.setInt(1, rs.getInt("quantity") );
					pst.setInt(2, Integer.parseInt(userID) ); 
					pst.setInt(3, rs.getInt("product_id") ); 
					pst.executeUpdate();   // 更新DB
				} else { // 沒有相同的商品 > 新增
					String insertNewPoiductSQL = "insert into cart(user_id,product_id,quantity) VALUES (?,?,?)"; 

					pst.clearParameters();  // 清空之前設定的參數
					pst = conn.prepareStatement(insertNewPoiductSQL);    // 設定Sql statement 
				      
					//設定insert中的每個參數
					pst.setInt(1, Integer.parseInt(userID) ); 
					pst.setInt(2, rs.getInt("product_id") ); 
					pst.setInt(3, rs.getInt("quantity") );
					pst.executeUpdate();   // 更新DB
				}
			}
		} catch ( SQLException e){
            System.err.println("Got an exception! ");
            System.err.println(e.getMessage());
		} finally {
    		try
    		{
				if ( pst != null ) pst.close();
    			conn.close();
    		} catch ( SQLException se ) {
    			 System.err.println( "close ResultSet or Statment or connection error: " + se.toString() ) ;
    		}
    	}
	}
	
	/** 
	 * 新增用戶
	 * @param newUser 新用戶資料
	 * @param 新用戶需包含以下資料
	 * @param name 用戶名
	 * @param password 密碼
	 * @param email 
	 * @param phone 
	 */
	public static void addUser(User newUser )
	{
		Connection conn = null;
    	try {
    		//連結資料庫
    		conn =  Connector.connection() ;
    	} catch ( Exception e ) {
            System.err.println( "Get DataSource or Connection error: " + e.toString() );
    		return ;
    	}
    	
    	PreparedStatement pst = null;
		try {
			String insertSQL = "insert into user(name,password,email,phone) VALUES (?,?,?,?)"; 
	
			pst = conn.prepareStatement(insertSQL);    // 設定Sql statement 
			pst.clearParameters();  // 清空之前設定的參數
		      
			//設定insert中的每個參數
			pst.setString(1, newUser.name ); 
			pst.setString(2, newUser.password ); 
			pst.setString(3, newUser.email );
			pst.setString(4, newUser.phone );
			pst.executeUpdate();   // 更新DB
		} catch ( SQLException e){
            System.err.println("Got an exception! ");
            System.err.println(e.getMessage());
		} finally {
    		try
    		{
				if ( pst != null ) pst.close();
    			conn.close();
    		} catch ( SQLException se ) {
    			 System.err.println( "close ResultSet or Statment or connection error: " + se.toString() ) ;
    		}
    	}
	}
	
	/**
	 * 新增優惠卷
	 * @param newCoupon  新優惠卷資料
	 * @param 新優惠卷需包含以下資料
	 * @param storeId  優惠卷發行賣場ID = 可使用賣場ID = 該賣場的用戶ID
	 * @param name  優惠卷名稱
	 * @param information
	 * @param discount
	 */
	public static void addCoupon(Coupon newCoupon )
	{
		Connection conn = null;
    	try {
    		//連結資料庫
    		conn =  Connector.connection() ;
    	} catch ( Exception e ) {
            System.err.println( "Get DataSource or Connection error: " + e.toString() );
    		return ;
    	}
    	
    	PreparedStatement pst = null;
		try {
			String insertSQL = "insert into coupon(user_id,name,information,discount) VALUES (?,?,?,?)"; 
			pst = conn.prepareStatement(insertSQL);    // 設定Sql statement 
			pst.clearParameters();  // 清空之前設定的參數
		      System.out.println("aa"+newCoupon);
			//設定insert中的每個參數
			pst.setString(1, newCoupon.storeId ); 
			pst.setString(2, newCoupon.name ); 
			pst.setString(3, newCoupon.information );
			pst.setDouble(4, newCoupon.discount );
			pst.executeUpdate();  // 更新DB
		} catch ( SQLException e){
            System.err.println("Got an exception! ");
            System.err.println(e.getMessage());
		} finally {
    		try
    		{
				if ( pst != null ) pst.close();
    			conn.close();
    		} catch ( SQLException se ) {
    			 System.err.println( "close ResultSet or Statment or connection error: " + se.toString() ) ;
    		}
    	}
	}
	
	/**
	 * 刪除優惠券裡的一筆資料
	 * @param userId
	 * @param couponId
	 */
	public static void deleteCoupon(String userId , String coupon_id )
	{
		if( userId == null || userId.equals("") || coupon_id == null || coupon_id.equals("") ){
			return  ;
		}
		Connection conn = null;
    	try {
    		//連結資料庫
    		conn =  Connector.connection() ;
    	} catch ( Exception e ) {
            System.err.println( "Get DataSource or Connection error: " + e.toString() );
    		return ;
    	}
    	
    	PreparedStatement pst = null;
		List<CartProduct> resultList = new ArrayList<>() ;
		try {
			// select data
			pst = conn.prepareStatement( "Delete  FROM coupon Where user_id = ? and coupon_id = ?  " ); 
			pst.clearParameters();  // 清空之前設定的參數
			pst.setString(1, userId ); 
			pst.setString(2, coupon_id ); 
			int rs = pst.executeUpdate() ;
			
		} catch ( SQLException e){
            System.err.println("Got an exception! ");
            System.err.println(e.getMessage());
		} finally {
    		try
    		{
				if ( pst != null ) pst.close();
    			conn.close();
    		} catch ( SQLException se ) {
    			 System.err.println( "close ResultSet or Statment or connection error: " + se.toString() ) ;
    		}
    	}
		return  ;
	}
	/**
	 * 新增一般販賣商品資料(含圖片)
	 * @param newProduct  新產品資料
	 * @param 新產品需包含以下資料
	 * @param sellerId 賣家ID
	 * @param productName 產品名稱
	 * @param price 價格
	 * @param productType 商品類型
	 * @param salesType 商品販賣型式
	 * @param information 商品說明/描述
	 * @param quantity 存貨數量
	 * @param salesState 販售狀態
	 * @param image1Url 商品圖片1
	 * @param image2Url 商品圖片2
	 * @param image3Url 商品圖片3
	 */
	public static void addProduct(Product newProduct )
	{
		Connection conn = null;
    	try {
    		//連結資料庫
    		conn =  Connector.connection() ;
    	} catch ( Exception e ) {
            System.err.println( "Get DataSource or Connection error: " + e.toString() );
    		return ;
    	}
    	
    	PreparedStatement pst = null;
		// 先新增商品資料再資料圖片
		try {
			// 新增商品資料
			String insertSQL = "insert into product(user_id,name,price,product_type,"
					+ "sales_type,information,quantity,sales,shipping_fee) VALUES (?,?,?,?,?,?,?,?,?)"; 
			pst = conn.prepareStatement(insertSQL);   // 設定Sql statement    
			pst.clearParameters();  // 清空之前設定的參數
			//設定insert中的每個參數
			pst.setString(1, newProduct.sellerId );	
			pst.setString(2, newProduct.name ); 
			pst.setInt(3, newProduct.price );
			pst.setString(4, newProduct.productType );
			pst.setString(5, newProduct.salesType );
			pst.setString(6, newProduct.information );
			pst.setInt(7, newProduct.quantity );
			pst.setString(8, newProduct.salesState );
			pst.setInt(9, newProduct.shippingFee );
			pst.executeUpdate();  // 更新DB
			
			// 取得剛剛所加入的商品的商品ID
			int productId =getMaxProductId() ;
			
			// 加入商品的圖片資料
			insertSQL = "insert into product_image(product_id,image1,image2,image3) VALUES (?,?,?,?)"; 
			pst = conn.prepareStatement(insertSQL);   // 設定Sql statement    
			pst.clearParameters();  // 清空之前設定的參數
			//設定insert中的每個參數
			pst.setInt(1, productId );	
			pst.setString(2, newProduct.imageUrl1 ); 
			pst.setString(3, newProduct.imageUrl2 );
			pst.setString(4, newProduct.imageUrl3 );
			pst.executeUpdate();  // 更新DB
			
		} catch ( SQLException e){
            System.err.println("Got an exception! ");
            System.err.println(e.getMessage());
		} finally {
    		try
    		{
				if ( pst != null ) pst.close();
    			conn.close();
    		} catch ( SQLException se ) {
    			 System.err.println( "close ResultSet or Statment or connection error: " + se.toString() ) ;
    		}
    	}
	}
	/**
	 * 新增競標商品資料(含圖片)
	 * @param newProduct  新產品資料
	 * @param 新產品需包含以下資料
	 * @param sellerId 賣家ID
	 * @param productName 產品名稱
	 * @param price 價格
	 * @param productType 商品類型
	 * @param salesType 商品販賣型式
	 * @param information 商品說明/描述
	 * @param quantity 存貨數量
	 * @param salesState 販售狀態
	 * @param image1Url 商品圖片1
	 * @param image2Url 商品圖片2
	 * @param image3Url 商品圖片3
	 * @param original_price  商品初始價格
	 * @param minbid_price  商品最低出價
	 * @param start_time   開始競標時間
	 * @param end_time  結束競標時間
	 */
	public static void addProduct(BiddingProduct newProduct )
	{
		Connection conn = null;
    	try {
    		//連結資料庫
    		conn =  Connector.connection() ;
    	} catch ( Exception e ) {
            System.err.println( "Get DataSource or Connection error: " + e.toString() );
    		return ;
    	}
    	
    	PreparedStatement pst = null;
		// 新增順序：商品資料 > 商品圖片> 競標資料
		try {
			// 新增商品資料
			addProduct((Product)newProduct);

			// 取得剛剛所加入的商品的商品ID
			int productId = getMaxProductId() ;

			// 新增競標資料
			String insertSQL = "insert into bidding_product( product_id , original_price,minbid_price,start_time,end_time) "
					+ " values (?,?,?,?,?) "; 
			pst = conn.prepareStatement(insertSQL);   // 設定Sql statement    
			pst.clearParameters();  // 清空之前設定的參數
			//設定insert中的每個參數
			pst.setInt(1, productId );	
			pst.setInt(2, newProduct.original_price ); 
			pst.setInt(3, newProduct.minbid_price );
			pst.setString(4, newProduct.start_time );
			pst.setString(5, newProduct.end_time );
			pst.executeUpdate();  // 更新DB
			
		} catch ( SQLException e){
            System.err.println("Got an exception! ");
            System.err.println(e.getMessage());
		} finally {
    		try
    		{
				if ( pst != null ) pst.close();
    			conn.close();
    		} catch ( SQLException se ) {
    			 System.err.println( "close ResultSet or Statment or connection error: " + se.toString() ) ;
    		}
    	}
		
	}
	
	/**
	 * 新增商品留言
	 * @param productId  商品代碼
	 * @param userId  留言用戶代碼
	 * @param opinion 留言
	 */
	public static void addProductComment(String productId , String userId , String opinion )
	{
		Connection conn = null;
    	try {
    		//連結資料庫
    		conn =  Connector.connection() ;
    	} catch ( Exception e ) {
            System.err.println( "Get DataSource or Connection error: " + e.toString() );
    		return ;
    	}
    	
    	PreparedStatement pst = null;
		try {
			String insertSQL = "insert into comment(product_id,user_id,opinion) VALUES (?,?,?)"; 
	
			pst = conn.prepareStatement(insertSQL);    // 設定Sql statement 
			pst.clearParameters();  // 清空之前設定的參數
		      
			//設定insert中的每個參數
			pst.setString(1, productId ); 
			pst.setString(2, userId );
			pst.setString(3, opinion );
			pst.executeUpdate();  // 更新DB
		} catch ( SQLException e){
            System.err.println("Got an exception! ");
            System.err.println(e.getMessage());
		} finally {
    		try
    		{
				if ( pst != null ) pst.close();
    			conn.close();
    		} catch ( SQLException se ) {
    			 System.err.println( "close ResultSet or Statment or connection error: " + se.toString() ) ;
    		}
    	}
	}
	
	/**
	 * 新增商品評價
	 * @param productId  被評分的商品ID
	 * @param userId  評分的使用者ID
	 * @param mark  評分
	 */
	public static void addProductFeedBack(String productId , String userId , int mark)
	{
		Connection conn = null;
    	try {
    		//連結資料庫
    		conn =  Connector.connection() ;
    	} catch ( Exception e ) {
            System.err.println( "Get DataSource or Connection error: " + e.toString() );
    		return ;
    	}
    	
    	PreparedStatement pst = null;
		try {
			String insertSQL = "insert into feedback(product_id,user_id,mark) VALUES (?,?,?)"; 
	
			pst = conn.prepareStatement(insertSQL);    // 設定Sql statement 
			pst.clearParameters();  // 清空之前設定的參數
		      
			//設定insert中的每個參數
			pst.setString(1, productId ); 
			pst.setString(2, userId );
			pst.setInt(3, mark );
			pst.executeUpdate();  // 更新DB
		} catch ( SQLException e){
            System.err.println("Got an exception! ");
            System.err.println(e.getMessage());
		} finally {
    		try
    		{
				if ( pst != null ) pst.close();
    			conn.close();
    		} catch ( SQLException se ) {
    			 System.err.println( "close ResultSet or Statment or connection error: " + se.toString() ) ;
    		}
    	}
	}
	
	/**
	 * 新增一筆新的訂單資訊
	 * @param newOrder  新訂單資訊
	 * @param 新訂單需包含以下資料
	 * @param userId  下訂單的用戶ID
	 * @param payment  繳費方式
	 * @param shipping_method  運送方式
	 * @param price  訂單總價(不含運費
	 * @param shippingFee  運費
	 * @param destination  目的地
	 * @param recipient  收件人/取貨人
	 * @param productList  下訂商品的資料List， List的型態為OrderProduct，List中每筆資料需包含商品ID(productId)及下訂數量(buyQuantity)
	 */
	public static void addOrder(Order newOrder)
	{
		Connection conn = null;
    	try {
    		//連結資料庫
    		conn =  Connector.connection() ;
    	} catch ( Exception e ) {
            System.err.println( "Get DataSource or Connection error: " + e.toString() );
    		return ;
    	}
    	
    	PreparedStatement pst = null;
		// 新增順序：訂單基本資料 > 訂單商品 > 建立運送資料
		try {
			// 新增訂單基本資料
			String insertSQL = "insert into user_order(user_id , payment , shipping_method , price , shipping_fee , destination , recipient) "
					+ " values (?,?,?,?,?,?,?) " ; 
			pst = conn.prepareStatement(insertSQL);   // 設定Sql statement   
			pst.clearParameters();  // 清空之前設定的參數 
			//設定insert中的每個參數
			pst.setString(1, newOrder.userId );	
			pst.setString(2, newOrder.payment ); 
			pst.setString(3, newOrder.shipping_method ); 
			pst.setInt(4, newOrder.price ); 
			pst.setInt(5, newOrder.shippingFee ); 
			pst.setString(6, newOrder.destination ); 
			pst.setString(7, newOrder.recipient ); 
			pst.executeUpdate();  // 更新DB
			
			// 取得剛剛所加入的訂單的訂單ID
			int OrderId = getMaxOrderId() ;
			
			// 加入訂單商品資料
			for( int i = 0 ; i < newOrder.productList.size() ; i++ )
			{
				OrderProduct newOrderProduct = newOrder.productList.get(i) ;
				insertSQL = "insert into order_product(order_id , product_id , quantity ) VALUES (?,?,?)"; 
				pst = conn.prepareStatement(insertSQL);   // 設定Sql statement    
				pst.clearParameters();  // 清空之前設定的參數
				//設定insert中的每個參數
				pst.setInt(1, OrderId );	
				pst.setString(2, newOrderProduct.productId ); 
				pst.setInt(3, newOrderProduct.buyQuantity );
				pst.executeUpdate();  // 更新DB
			}
			
			// 建立運送資料
			insertSQL = "insert into shipping(order_id , state ) VALUES (?,?)"; 
			pst = conn.prepareStatement(insertSQL);   // 設定Sql statement    
			pst.clearParameters();  // 清空之前設定的參數
			//設定insert中的每個參數
			pst.setInt(1, OrderId );	
			pst.setString(2, "已收到訂單" );
			pst.executeUpdate();  // 更新DB
			
		} catch ( SQLException e){
            System.err.println("Got an exception! ");
            System.err.println(e.getMessage());
		} finally {
    		try
    		{
				if ( pst != null ) pst.close();
    			conn.close();
    		} catch ( SQLException se ) {
    			 System.err.println( "close ResultSet or Statment or connection error: " + se.toString() ) ;
    		}
    	}
	}
	
	/**
	 * 新增一筆新的購物車資料
	 * @param userId
	 * @param productId
	 * @param buyQuantity
	 */
	public static void addCartProduct(String userId , String productId , int buyQuantity )
	{
		if( userId == null || userId.equals("") || productId == null || productId.equals("") ){
			return  ;
		}
		Connection conn = null;
    	try {
    		//連結資料庫
    		conn =  Connector.connection() ;
    	} catch ( Exception e ) {
            System.err.println( "Get DataSource or Connection error: " + e.toString() );
    		return ;
    	}
    	
    	PreparedStatement pst = null;
		try {
			// 新增一筆新的購物車資料
			String insertSQL = "insert into cart(user_id , product_id , quantity) "
					+ " values (?,?,?) " ; 
			pst = conn.prepareStatement(insertSQL);   // 設定Sql statement
			pst.clearParameters();  // 清空之前設定的參數   
			pst.setString(1, userId ); 
			pst.setString(2, productId ); 
			pst.setInt(3, buyQuantity ); 
			pst.executeUpdate();  // 更新DB
			
		} catch ( SQLException e){
            System.err.println("Got an exception! ");
            System.err.println(e.getMessage());
		} finally {
    		try
    		{
				if ( pst != null ) pst.close();
    			conn.close();
    		} catch ( SQLException se ) {
    			 System.err.println( "close ResultSet or Statment or connection error: " + se.toString() ) ;
    		}
    	}
		return  ;
	}
	
	/**
	 * 更新競標商品價格
	 * @param userId
	 * @param productId
	 * @param addValue
	 */
	public static void updateBiddingProductPrice(String userId , String productId , int addValue )
	{
		if( userId == null || userId.equals("") || productId == null || productId.equals("") ){
			return  ;
		}
		Connection conn = null;
    	try {
    		//連結資料庫
    		conn =  Connector.connection() ;
    	} catch ( Exception e ) {
            System.err.println( "Get DataSource or Connection error: " + e.toString() );
    		return ;
    	}
    	
    	PreparedStatement pst = null;
		try {
			//更新競標商品價格
			String updateSQL = "update product set price = price + ? where product_id = ? " ;
			pst = conn.prepareStatement(updateSQL);   // 設定Sql statement
			pst.clearParameters();  // 清空之前設定的參數   
			pst.setInt(1, addValue ); 
			pst.setString(2, productId ); 
			pst.executeUpdate();  // 更新DB
			
			//更新最後出價人
			updateSQL = "update bidding_product set lastbid_user_id = ? where product_id = ? " ;
			pst = conn.prepareStatement(updateSQL);   // 設定Sql statement
			pst.clearParameters();  // 清空之前設定的參數   
			pst.setString(1, userId ); 
			pst.setString(2, productId ); 
			pst.executeUpdate();  // 更新DB
			
		} catch ( SQLException e){
            System.err.println("Got an exception! ");
            System.err.println(e.getMessage());
		} finally {
    		try
    		{
				if ( pst != null ) pst.close();
    			conn.close();
    		} catch ( SQLException se ) {
    			 System.err.println( "close ResultSet or Statment or connection error: " + se.toString() ) ;
    		}
    	}
		return  ;
	}
	
	/**
	 * 更新競標商品價格
	 * @param userId
	 * @param productId
	 * @param addValue
	 */
	public static void updateCartBuyQuantity(String userId , String productId , int newBuyQuantity )
	{
		if( userId == null || userId.equals("") || productId == null || productId.equals("") ){
			return  ;
		}
		Connection conn = null;
    	try {
    		//連結資料庫
    		conn =  Connector.connection() ;
    	} catch ( Exception e ) {
            System.err.println( "Get DataSource or Connection error: " + e.toString() );
    		return ;
    	}
    	
    	PreparedStatement pst = null;
		try {
			//更新競標商品價格
			String updateSQL = "update cart set quantity = ? where product_id = ? and user_id = ? " ;
			pst = conn.prepareStatement(updateSQL);   // 設定Sql statement
			pst.clearParameters();  // 清空之前設定的參數   
			pst.setInt(1, newBuyQuantity ); 
			pst.setString(2, productId ); 
			pst.setString(3, userId ); 
			pst.executeUpdate();  // 更新DB
			
		} catch ( SQLException e){
            System.err.println("Got an exception! ");
            System.err.println(e.getMessage());
		} finally {
    		try
    		{
				if ( pst != null ) pst.close();
    			conn.close();
    		} catch ( SQLException se ) {
    			 System.err.println( "close ResultSet or Statment or connection error: " + se.toString() ) ;
    		}
    	}
		return  ;
	}
	
	/**
	 * 刪除購物車裡的一筆資料
	 * @param userId
	 * @param productId
	 */
	public static void deleteCartProduct(String userId , String productId )
	{
		if( userId == null || userId.equals("") || productId == null || productId.equals("") ){
			return  ;
		}
		Connection conn = null;
    	try {
    		//連結資料庫
    		conn =  Connector.connection() ;
    	} catch ( Exception e ) {
            System.err.println( "Get DataSource or Connection error: " + e.toString() );
    		return ;
    	}
    	
    	PreparedStatement pst = null;
		List<CartProduct> resultList = new ArrayList<>() ;
		try {
			// select data
			pst = conn.prepareStatement( "Delete  FROM cart Where user_id = ? and product_id = ?  " ); 
			pst.clearParameters();  // 清空之前設定的參數
			pst.setString(1, userId ); 
			pst.setString(2, productId ); 
			int rs = pst.executeUpdate() ;
			
		} catch ( SQLException e){
            System.err.println("Got an exception! ");
            System.err.println(e.getMessage());
		} finally {
    		try
    		{
				if ( pst != null ) pst.close();
    			conn.close();
    		} catch ( SQLException se ) {
    			 System.err.println( "close ResultSet or Statment or connection error: " + se.toString() ) ;
    		}
    	}
		return  ;
	}
	
	/**
	 * 取得現在最大的商品ID(最後新增的商品ID)
	 * @return 最後新增的商品ID
	 */
	public static int getMaxProductId()
	{
		Connection conn = null;
    	try {
    		//連結資料庫
    		conn =  Connector.connection() ;
    	} catch ( Exception e ) {
            System.err.println( "Get DataSource or Connection error: " + e.toString() );
    		return -1;
    	}
    	
    	PreparedStatement pst = null;
		try{
			pst = conn.prepareStatement( "SELECT MAX(`product_id`) product_id FROM `product`" ); 
			pst.clearParameters();  // 清空之前設定的參數
			ResultSet rs = pst.executeQuery() ;
			rs.next() ;
			return rs.getInt("product_id") ;
		} catch ( SQLException e){
            System.err.println("Got an exception! ");
            System.err.println(e.getMessage());
		} finally {
    		try
    		{
				if ( pst != null ) pst.close();
    			conn.close();
    		} catch ( SQLException se ) {
    			 System.err.println( "close ResultSet or Statment or connection error: " + se.toString() ) ;
    		}
    	}
		return -1 ;
	}
	
	
	/**
	 * 取得現在最大的訂單編號(ID) (最後新增的訂單編號/ID)
	 * @return  最後新增的訂單編號/ID
	 */
	public static int getMaxOrderId()
	{
		Connection conn = null;
    	try {
    		//連結資料庫
    		conn =  Connector.connection() ;
    	} catch ( Exception e ) {
            System.err.println( "Get DataSource or Connection error: " + e.toString() );
    		return -1;
    	}
    	
    	PreparedStatement pst = null;
		try{
			pst = conn.prepareStatement( "SELECT MAX(`order_id`) order_id FROM `user_order`" ); 
			pst.clearParameters();  // 清空之前設定的參數
			ResultSet rs = pst.executeQuery() ;
			rs.next() ;
			return rs.getInt("order_id") ;
		} catch ( SQLException e){
            System.err.println("Got an exception! ");
            System.err.println(e.getMessage());
		} finally {
    		try
    		{
				if ( pst != null ) pst.close();
    			conn.close();
    		} catch ( SQLException se ) {
    			 System.err.println( "close ResultSet or Statment or connection error: " + se.toString() ) ;
    		}
    	}
		return -1 ;
	}
	
	
	/**
	 * 取得所有商品類型
	 * @return
	 */
	public static List<String> getAllProductType()
	{
		Connection conn = null;
    	try {
    		//連結資料庫
    		conn =  Connector.connection() ;
    	} catch ( Exception e ) {
            System.err.println( "Get DataSource or Connection error: " + e.toString() );
    		return null;
    	}
    	
    	PreparedStatement pst = null;
		try{
			pst = conn.prepareStatement( "SELECT DISTINCT `product_type` FROM `product`" ); 
			pst.clearParameters();  // 清空之前設定的參數
			ResultSet rs = pst.executeQuery() ;

			List<String> productTypes = new ArrayList<String>() ;
			while (rs.next()) {
				productTypes.add( rs.getString("product_type") ) ;
			}
			return productTypes ;
		} catch ( SQLException e){
            System.err.println("Got an exception! ");
            System.err.println(e.getMessage());
		} finally {
    		try
    		{
				if ( pst != null ) pst.close();
    			conn.close();
    		} catch ( SQLException se ) {
    			 System.err.println( "close ResultSet or Statment or connection error: " + se.toString() ) ;
    		}
    	}
		return null;
	}
	/**
	 *修改使用者密碼
	 * */
	public static void ChangePassword(String userId ,String password)
	{
		if( userId == null || userId.equals("") ){
			return  ;
		}
		Connection conn = null;
    	try {
    		//連結資料庫
    		conn =  Connector.connection() ;
    	} catch ( Exception e ) {
            System.err.println( "Get DataSource or Connection error: " + e.toString() );
    		return ;
    	}
    	
    	PreparedStatement pst = null;
		try {
			// 新增一筆新的購物車資料
			String updateSQL = "UPDATE user set  password = ? WHERE user_id = ?" ; 
			pst = conn.prepareStatement(updateSQL);   // 設定Sql statement
			pst.clearParameters();  // 清空之前設定的參數   
			pst.setString(1, password); 
			pst.setString(2, userId ); 
			pst.executeUpdate();  // 更新DB
			
		} catch ( SQLException e){
            System.err.println("Got an exception! ");
            System.err.println(e.getMessage());
		} finally {
    		try
    		{
				if ( pst != null ) pst.close();
    			conn.close();
    		} catch ( SQLException se ) {
    			 System.err.println( "close ResultSet or Statment or connection error: " + se.toString() ) ;
    		}
    	}
		return  ;
	}
	/**
	 *修改使用者Email
	 * */
	public static void ChangeUserEmail(String userId ,String email)
	{
		if( userId == null || userId.equals("") ){
			return  ;
		}
		Connection conn = null;
    	try {
    		//連結資料庫
    		conn =  Connector.connection() ;
    	} catch ( Exception e ) {
            System.err.println( "Get DataSource or Connection error: " + e.toString() );
    		return ;
    	}
    	
    	PreparedStatement pst = null;
		try {
			String updateSQL = "UPDATE user set  email = ? WHERE user_id = ?" ; 
			pst = conn.prepareStatement(updateSQL);   // 設定Sql statement
			pst.clearParameters();  // 清空之前設定的參數   
			pst.setString(1, email); 
			pst.setString(2, userId ); 
			pst.executeUpdate();  // 更新DB
			
		} catch ( SQLException e){
            System.err.println("Got an exception! ");
            System.err.println(e.getMessage());
		} finally {
    		try
    		{
				if ( pst != null ) pst.close();
    			conn.close();
    		} catch ( SQLException se ) {
    			 System.err.println( "close ResultSet or Statment or connection error: " + se.toString() ) ;
    		}
    	}
		return  ;
	}
	/**
	 *修改使用者手機
	 * */
	public static void ChangeUserPhone(String userId ,String phone)
	{
		if( userId == null || userId.equals("") ){
			return  ;
		}
		Connection conn = null;
    	try {
    		//連結資料庫
    		conn =  Connector.connection() ;
    	} catch ( Exception e ) {
            System.err.println( "Get DataSource or Connection error: " + e.toString() );
    		return ;
    	}
    	
    	PreparedStatement pst = null;
		try {
			String updateSQL = "UPDATE user set  phone = ? WHERE user_id = ?" ; 
			pst = conn.prepareStatement(updateSQL);   // 設定Sql statement
			pst.clearParameters();  // 清空之前設定的參數   
			pst.setString(1, phone); 
			pst.setString(2, userId ); 
			pst.executeUpdate();  // 更新DB
			
		} catch ( SQLException e){
            System.err.println("Got an exception! ");
            System.err.println(e.getMessage());
		} finally {
    		try
    		{
				if ( pst != null ) pst.close();
    			conn.close();
    		} catch ( SQLException se ) {
    			 System.err.println( "close ResultSet or Statment or connection error: " + se.toString() ) ;
    		}
    	}
		return  ;
	}
	/**
	 *修改使用者Authorize
	 * */
	public static void ChangeUserAuthorize(String userId ,String authorize)
	{
		if( userId == null || userId.equals("") ){
			return  ;
		}
		Connection conn = null;
    	try {
    		//連結資料庫
    		conn =  Connector.connection() ;
    	} catch ( Exception e ) {
            System.err.println( "Get DataSource or Connection error: " + e.toString() );
    		return ;
    	}
    	
    	PreparedStatement pst = null;
		try {
			String updateSQL = "UPDATE user set  authorize = ? WHERE user_id = ?" ; 
			pst = conn.prepareStatement(updateSQL);   // 設定Sql statement
			pst.clearParameters();  // 清空之前設定的參數   
			pst.setString(1, authorize); 
			pst.setString(2, userId ); 
			pst.executeUpdate();  // 更新DB
			
		} catch ( SQLException e){
            System.err.println("Got an exception! ");
            System.err.println(e.getMessage());
		} finally {
    		try
    		{
				if ( pst != null ) pst.close();
    			conn.close();
    		} catch ( SQLException se ) {
    			 System.err.println( "close ResultSet or Statment or connection error: " + se.toString() ) ;
    		}
    	}
		return  ;
	}
	public static void main(String[] args)
	{
		DBImplement connecter = new DBImplement() ;
		//connecter.connection() ;
		List<CartProduct> result = connecter.queryCart("00000001") ;
		for (Product resultMap : result)
		{
			System.out.println( resultMap + "\n");
		}
		
		List<User> result2 = connecter.queryUser() ;
		for (User resultMap : result2)
		{
			System.out.println( resultMap + "\n");
		}
		
		//connecter.mergeOrder("2", "1");
		
		//connecter.close() ;
	}
	
}
