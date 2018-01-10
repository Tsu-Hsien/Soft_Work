package shopCart;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import pimiya.CartProduct;
import pimiya.Coupon;
import pimiya.db.DBImplement;

/**
 * Servlet implementation class shopCart
 */
@WebServlet("/shopCartServlet")
public class shopCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public shopCartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		//DB找訂單
		String g_userID = (String)session.getAttribute("currentUserID");
		List<CartProduct> productList  = DBImplement.queryCart( g_userID ) ;
		
		List<Coupon> couponList = new ArrayList<Coupon>() ;
		for( CartProduct product : productList){
			couponList.addAll(DBImplement.queryCoupon(product.sellerId)) ;
		}

		session.setAttribute("productList", productList );
		session.setAttribute("couponList", couponList );
		session.setAttribute("cartTotalPrice", DBImplement.queryCartProductTotalPrice(g_userID) );
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("utf-8");
		response.sendRedirect("shopcart.jsp");
		response.setContentType("text/html");


	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
