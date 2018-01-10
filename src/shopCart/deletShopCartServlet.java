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
import pimiya.db.DBImplement;

/**
 * Servlet implementation class deletShopCartServlet
 */
@WebServlet("/deletShopCartServlet")
public class deletShopCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public deletShopCartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		HttpSession session = request.getSession();
		List<CartProduct> cartProducts=(List<CartProduct>) session.getAttribute("productList");
		String deletProductID=request.getParameter("productID");
		for(int i=0;i<cartProducts.size();i++){
			if(cartProducts.get(i).getProductId().equals(deletProductID)){
				String userId = cartProducts.get(i).getSellerId() ;
				DBImplement.deleteCartProduct( userId , deletProductID ) ;
				cartProducts.remove(i);

				request.getSession().setAttribute("cartTotalPrice", DBImplement.queryCartProductTotalPrice(userId) );
			}
		}
		session.setAttribute("cartProducts", cartProducts);
		response.sendRedirect("shopcart.jsp");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
