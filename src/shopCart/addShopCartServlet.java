package shopCart;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import javaBean.dingdan;
import pimiya.db.DBImplement;

/**
 * Servlet implementation class addShopCartServlet
 */
@WebServlet("/addShopCartServlet")
public class addShopCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addShopCartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		request.setCharacterEncoding("UTF-8");
		String productId = request.getParameter("productId");
		String userId = (String)session.getAttribute("currentUserID");
		String buyQuantityString = request.getParameter("buyQuantity") ;
		String isBidProduct = request.getParameter("isBidProduct");
		if( buyQuantityString != null && !buyQuantityString.equals("") ){
			int buyQuantity = Integer.parseInt( buyQuantityString ) ;
			DBImplement.addCartProduct(userId, productId, buyQuantity);
		}
		
		response.setCharacterEncoding("utf-8");
		if( isBidProduct.equals("B") ){
			response.sendRedirect("BiddingPage.jsp?productId=" + productId );
		} else {
			response.sendRedirect("CommodityPage.jsp?productId=" + productId );
		}
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
