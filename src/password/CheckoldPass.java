package password;

import java.io.IOException;
import java.io.PrintWriter;
import org.json.*;

import pimiya.User;
import pimiya.db.DBImplement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PasswordServlet
 */
@WebServlet("/CheckoldPass")
public class CheckoldPass extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CheckoldPass() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("application/json");
		
		String ID = (String) request.getSession().getAttribute("currentUserID");
		
		User user = DBImplement.queryUserById(ID);
		System.out.println(user.password);
		request.setCharacterEncoding("UTF-8");
		JSONObject json = new JSONObject();
		String oldpassword = request.getParameter("oldpassword");
		String nowpassword = user.password;// �qdatabase��
		// ���oAjax�ǤJ���Ѽ�
		try {
			
			if (oldpassword.equals(nowpassword)) {
				
				json.put("flag", "1");
			} else {
				json.put("flag", "0");
			}

		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		System.out.print(oldpassword + "\n");

		// Get the printwriter object from response to write the required json
		// object to the output stream
		response.getWriter().write(json.toString());
		// Assuming your json object is **jsonObject**, perform the following,
		// it will return your json object

	}

}
