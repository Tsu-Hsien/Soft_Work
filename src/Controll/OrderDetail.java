package Controll;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		
		String orderID = request.getParameter("orderID");
		System.out.print(orderID);
		//從訂單編號去查購買的產品等資訊
		ArrayList<OrderProduct> OrderProducts =new ArrayList<OrderProduct>(); //到時候改成用迴圈
		OrderProduct OrderProduct;
		OrderProduct= new OrderProduct("a01","assets/img/e.jpg",1,"ring",300);
		OrderProducts.add(OrderProduct);
		OrderProduct= new OrderProduct("a02","assets/img/f.jpg",2,"bracelet",600);
		OrderProducts.add(OrderProduct);
		String destination = "address";
		String orderTime = "orderTime";
		String payment = "7-11";
		String shippingMethod = "tohome";
		int price = 50000;
		int shippingFee = 60;
		String recipient = "snee";
		String state = "get";
		String solderID = "solder";
		OrderDetailData OrderData = new OrderDetailData(solderID,orderID,destination,  orderTime, payment,  shippingMethod,  price,
				shippingFee,  recipient, OrderProducts, state);
		request.setAttribute("OrderData", OrderData);
		RequestDispatcher view = request.getRequestDispatcher("AccountDetail.jsp");
		view.forward(request, response);
		
	}

}
