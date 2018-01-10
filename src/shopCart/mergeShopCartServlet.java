package shopCart;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import javaBean.Product;
import pimiya.User;
import pimiya.db.DBImplement;

/**
 * Servlet implementation class mergeShopCartServlet
 */
@WebServlet("/mergeShopCartServlet")
public class mergeShopCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public mergeShopCartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		String g_userID = (String)request.getSession().getAttribute("currentUserID");
		
		String otherId=request.getParameter("otherId");
		User otherUser = DBImplement.queryUserById(otherId);
		if(otherUser.authorize.equals("O")){
		if ( g_userID != null && !g_userID.equals("")){
			DBImplement.mergeOrder(g_userID, otherId);
		}
		}
		response.sendRedirect("shopCartServlet");

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
