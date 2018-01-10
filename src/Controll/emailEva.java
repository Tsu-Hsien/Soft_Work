package Controll;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pimiya.User;
import pimiya.db.DBImplement;

/**
 * Servlet implementation class emailEva
 */
@WebServlet("/emailEva")
public class emailEva extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public emailEva() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String information;
		 String subject;
		String ID = (String) request.getSession().getAttribute("currentUserID");
		User user =DBImplement.queryUserById(ID);
		String mail = user.email;
		subject = "PiMiYa";
		information = "您好，感謝您這次的消費。您可以點選下列網址來對這次的購買進行評分。: http://localhost:8080/PiMiYa/EvaluationEntry?userID="+ID;
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
