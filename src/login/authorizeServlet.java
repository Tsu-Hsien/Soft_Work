package login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pimiya.User;
import pimiya.db.DBImplement;

/**
 * Servlet implementation class authorizeServlet
 */
@WebServlet("/authorizeServlet")
public class authorizeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public authorizeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String userId=request.getParameter("userId");
		String merge=request.getParameter("merge");
		User user = DBImplement.queryUserById(userId);
		if(merge==null){
		DBImplement.ChangeUserAuthorize(userId, "C");
		request.getSession().setAttribute("currentAuthorize", "C");
		}
		else{
		DBImplement.ChangeUserAuthorize(userId, "O");
		request.getSession().setAttribute("currentAuthorize", "O" );
		}
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("utf-8");
		response.sendRedirect("index.jsp");
		response.setContentType("text/html");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
