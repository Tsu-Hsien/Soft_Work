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
		ArrayList<Record> Choose = new ArrayList();
		ArrayList<Record> RecordList = new ArrayList();
		ArrayList<Record> temp = new ArrayList();

		RecordList = (ArrayList<Record>)session.getAttribute("RecordList");
		
		if(RecordList == null)
		{

			session.setAttribute("RecordList", temp);
		}
		else{

			session.setAttribute("RecordList", RecordList);
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
