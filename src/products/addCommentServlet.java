package products;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pimiya.db.DBImplement;

/**
 * Servlet implementation class addCommentServlet
 */
@WebServlet("/addCommentServlet")
public class addCommentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addCommentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String productId = request.getParameter("productId");
		String userId = (String)request.getSession().getAttribute("currentUserID");
		String comment = new String( request.getParameter("commentText").getBytes("ISO-8859-1"), "UTF-8");
		String isBidProduct = request.getParameter("isBidProduct");
		if( comment != null && !comment.equals("")) {
			DBImplement.addProductComment(productId, userId, comment);
		}
		if( isBidProduct.equals("B") ){
			response.sendRedirect("BiddingPage.jsp?productId=" + productId );
		} else {
			response.sendRedirect("CommodityPage.jsp?productId=" + productId );
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
