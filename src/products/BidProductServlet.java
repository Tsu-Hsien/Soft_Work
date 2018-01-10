package products;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pimiya.db.DBImplement;

/**
 * Servlet implementation class BidProductServlet
 */
@WebServlet("/BidProductServlet")
public class BidProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BidProductServlet() {
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
		String addValueString = request.getParameter("addValue");
		if( addValueString != null && !addValueString.equals("") ){
			int addValue = Integer.parseInt(addValueString) ;
			if( addValue >= 10 ){
				DBImplement.updateBiddingProductPrice(userId, productId, addValue);
			}
		}
		response.sendRedirect("BiddingPage.jsp?productId=" + productId );
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
