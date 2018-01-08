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

import Model.OrderProduct;
import Model.OrderDetailData;

/**
 * Servlet implementation class AccessRecordServlet
 */
@WebServlet("/AccessRecordServlet")
public class AccessRecordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AccessRecordServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String ID = request.getParameter("orderID");
		String img = "assets/img/a.jpg";
		String name = "ring";
		HttpSession session = request.getSession();
		ArrayList<OrderProduct> Choose = new ArrayList();
		ArrayList<OrderProduct> sessionList = new ArrayList();
		ArrayList<OrderProduct> temp = new ArrayList();
		OrderProduct temp1 = new OrderProduct(ID,img,2,name,100);
		sessionList = (ArrayList<OrderProduct>)session.getAttribute("session");
		
		if(sessionList == null)
		{
			temp.add(temp1);
			session.setAttribute("session", temp);
		}
		else{
			sessionList.add(temp1);
			session.setAttribute("session", sessionList);
		}
		RequestDispatcher view = request.getRequestDispatcher("Account.jsp");
		view.forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
