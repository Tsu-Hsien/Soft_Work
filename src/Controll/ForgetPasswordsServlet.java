package Controll;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import jdk.internal.dynalink.beans.StaticClass;
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
 * Servlet implementation class ForgetPasswordsServlet
 */
@WebServlet("/ForgetPasswordsServlet")
public class ForgetPasswordsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String password;
	private String email;

	public static User queryUserByEmail(String Email)
	{
		if( Email == null || Email.equals("")){
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
			pst = conn.prepareStatement( "SELECT * FROM user Where email = ? " ); 
			pst.clearParameters();  // 清空之前設定的參數
			pst.setString(1, Email ); 
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
     * @see HttpServlet#HttpServlet()
     */
    public ForgetPasswordsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		email = request.getParameter("UserEmail");
		password = queryUserByEmail(email).password;
		System.out.print(password);
		System.out.print(email);
		JavaEmail sendEmail = new JavaEmail("您的密碼是：    "+password,"PiMiYa-忘記密碼",email);
		sendEmail.send();
		response.sendRedirect("index.jsp");
	}

}
