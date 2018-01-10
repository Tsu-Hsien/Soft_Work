package userInformation;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONException;
import org.json.JSONObject;

import pimiya.User;
import pimiya.db.DBImplement;

/**
 * Servlet implementation class modifyPersonalDataServlet
 */
@WebServlet("/modifyPersonalDataServlet")
public class modifyPersonalDataServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public modifyPersonalDataServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("application/json");

		// ��Post����Ѽƶi��ѽX

		request.setCharacterEncoding("UTF-8");
		String ID = (String) request.getSession().getAttribute("currentUserID");

		User user = DBImplement.queryUserById(ID);
		JSONObject json = new JSONObject();
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		// ���oAjax�ǤJ���Ѽ�
		try {

				DBImplement.ChangeUserEmail(ID, email);
				DBImplement.ChangeUserPhone(ID, phone);
				json.put("flag", "1");


		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}


		// Get the printwriter object from response to write the required json
		// object to the output stream
		response.getWriter().write(json.toString());
		// Assuming your json object is **jsonObject**, perform the following,
		// it will return your json object

	}

}
