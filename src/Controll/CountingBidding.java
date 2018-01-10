package Controll;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date; 
import java.text.SimpleDateFormat;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pimiya.db.DBImplement;
import pimiya.BiddingProduct;
import pimiya.CartProduct;
import pimiya.Comment;
import pimiya.Coupon;
import pimiya.Feedback;
import pimiya.Order;
import pimiya.OrderProduct;
import pimiya.Product;
import pimiya.User;
import pimiya.db.Connector;
import Controll.JavaEmail;

/**
 * Servlet implementation class CountingBidding
 */
@WebServlet("/CountingBidding")
public class CountingBidding extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String email;
	private String name;
    /**
     * @see HttpServlet#HttpServlet()
     */
	public static BiddingProduct queryBiddingProduct(String user_id)
	{
		if( user_id == null || user_id.equals("")){
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
				
				pst = conn.prepareStatement( "SELECT * FROM bidding_product Where lastbid_user_id = ? " ); 
				pst.clearParameters();  // 清空之前設定的參數
				pst.setString(1, user_id ); 
				ResultSet rs2 = pst.executeQuery() ;
				if (rs2.next()) {
					newProduct.lastbid_user_id = rs2.getString("lastbid_user_id") ; 
					newProduct.original_price = rs2.getInt("original_price") ; 
					newProduct.minbid_price = rs2.getInt("minbid_price") ; 
					newProduct.start_time = rs2.getString("start_time") ; 
					newProduct.end_time = rs2.getString("end_time") ; 
					
					// 取得評價用戶基本資料
					return newProduct;
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
	public  int Date(String Date1,String Date2){
		
		String s1=Date1;
		String s2=Date2;
		java.text.DateFormat df=new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		java.util.Calendar c1=java.util.Calendar.getInstance();
		java.util.Calendar c2=java.util.Calendar.getInstance();
		try
		{
		c1.setTime(df.parse(s1));
		c2.setTime(df.parse(s2));
		}catch(java.text.ParseException e){
		System.err.println("格式不正確");
		return -1;
		}
		int result=c1.compareTo(c2);
		if(result==0)
		{System.out.println("-1");
		return -1;}
		else if(result<0){
		System.out.println("還沒結束");
		return 1;}
		else{
		System.out.println("已結束");
		return 0;}
		
	}
    public CountingBidding() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		name = request.getParameter("name");
		String price = request.getParameter("price");
		System.out.print(name);
		System.out.print(price);
		
		DBImplement im = new DBImplement();
		User user =im.queryUserByName(name);
		SimpleDateFormat sdFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		Date date = new Date();
		String strDate = sdFormat.format(date);
		System.out.print(strDate);
		System.out.print(queryBiddingProduct(user.id).end_time);
		if(Date(strDate,queryBiddingProduct(user.id).end_time)==0)
		{
		email=user.email;
		System.out.print(user.email);
		JavaEmail sendEmail = new JavaEmail(name+"，您好，恭喜您成功完成競標。","競標成功通知函",email);
		sendEmail.send();
		}
		response.sendRedirect("index.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		
		
	}

}
