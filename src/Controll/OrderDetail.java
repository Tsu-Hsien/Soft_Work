package Controll;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import pimiya.Order;
import pimiya.db.DBImplement;

/**
 * Servlet implementation class OrderDetail
 */
@WebServlet("/OrderDetail")
public class OrderDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public OrderDetail() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String orderID = request.getParameter("orderID");
		//System.out.print(orderID);
		//從訂單編號去查購買的產品等資訊
		Order orderDetail  ;
		if( orderID != null && !orderID.equals("") ){
			orderDetail = DBImplement.queryOrderByOrderId(orderID) ;
			session.setAttribute("OrderData", orderDetail);
			System.out.print(orderDetail.getProductList().toString());
		}
		RequestDispatcher view = request.getRequestDispatcher("AccessRecord.jsp");
		view.forward(request, response);
		
	}

}
