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

import com.mysql.fabric.xmlrpc.base.Array;

import Controll.JavaEmail;
import pimiya.CartProduct;
import pimiya.Order;
import pimiya.OrderProduct;
import pimiya.User;
import pimiya.db.DBImplement;

/**
 * Servlet implementation class CreateOrderServlet
 */
@WebServlet("/CreateOrderServlet")
public class CreateOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateOrderServlet() {
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
		
		int totalPrice = 0 , shippingFee = 0 ;
		ArrayList<OrderProduct> productsList = new ArrayList<OrderProduct>() ;
		for (CartProduct cartProduct : productList)
		{
			productsList.add( new OrderProduct(cartProduct.productId, cartProduct.buyQuantity) ) ;
			totalPrice += cartProduct.price * cartProduct.buyQuantity ;
			shippingFee += cartProduct.shippingFee ;
		}
		Order newOrder = new Order(g_userID, "", "ATM", "宅配", totalPrice, shippingFee, " ", " ", productsList) ;
		DBImplement.addOrder(newOrder);
		for (CartProduct cartProduct : productList)
		{
			DBImplement.deleteCartProduct(g_userID, cartProduct.productId);
		}
		String information;
		 String subject;
		String ID = (String) request.getSession().getAttribute("currentUserID");
		User user =DBImplement.queryUserById(ID);
		String mail = user.email;
		subject = "PiMiYa";
		information = "您好，感謝您這次的消費。您可以點選下列網址來對這次的購買進行評分。: http://localhost:8080/pimiya/EvaluationEntry?userID="+ID;
		JavaEmail email = new JavaEmail(information, subject, mail);
		email.send();
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
