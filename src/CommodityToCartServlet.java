import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CommodityToCartServlet")
public class CommodityToCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	public CommodityToCartServlet(){
		super();
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String number = request.getParameter("number");
		String count = request.getParameter("count");
		System.out.println(number);
		System.out.println(count);
		response.sendRedirect("ShoppingCart1.jsp");
//		RequestDispatcher view = request.getRequestDispatcher("ShoppingCart1.jsp");
//		view.forward(request, response);
	}

}
