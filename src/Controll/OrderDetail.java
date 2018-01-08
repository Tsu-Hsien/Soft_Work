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

import Model.OrderDetailData;
import Model.OrderProduct;

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
		System.out.print(orderID);
		//�q�q��s���h�d�ʶR�����~����T
		ArrayList<OrderProduct> OrderProducts =new ArrayList<OrderProduct>(); //��ɭԧ令�ΰj��
		OrderProduct OrderProduct;
		OrderProduct= new OrderProduct("a01","e.jpg",1,"ring",300);
		OrderProducts.add(OrderProduct);
		OrderProduct= new OrderProduct("a02","f.jpg",2,"bracelet",600);
		OrderProducts.add(OrderProduct);
		String destination = "address";
		String orderTime = "orderTime";
		String payment = "7-11";
		String shippingMethod = "tohome";
		int price = 50000;
		int shippingFee = 60;
		String recipient = "snee";
		String state = "get";
		OrderDetailData OrderData = new OrderDetailData(orderID,destination,  orderTime, payment,  shippingMethod,  price,
				shippingFee,  recipient, OrderProducts, state);
		session.setAttribute("OrderData", OrderData);
		RequestDispatcher view = request.getRequestDispatcher("AccessRecord.jsp");
		view.forward(request, response);
		
	}

}
