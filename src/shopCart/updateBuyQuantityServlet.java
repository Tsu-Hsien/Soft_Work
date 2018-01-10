package shopCart;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pimiya.db.DBImplement;

/**
 * Servlet implementation class updateBuyQuantityServlet
 */
@WebServlet("/updateBuyQuantityServlet")
public class updateBuyQuantityServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateBuyQuantityServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String productId = request.getParameter("productId");
		String userId = (String)request.getSession().getAttribute("currentUserID");
		String newBuyQuantityString = request.getParameter("newBuyQuantity");
		if( newBuyQuantityString != null && !newBuyQuantityString.equals("") ){
			int newBuyQuantity = Integer.parseInt(newBuyQuantityString) ;
			if( newBuyQuantity >= 1 ){
				DBImplement.updateCartBuyQuantity(userId, productId, newBuyQuantity);
			}
		}
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
