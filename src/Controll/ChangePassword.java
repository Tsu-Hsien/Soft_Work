package Controll;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.*;
import org.json.JSONException;
import org.json.JSONObject;

/**
 * Servlet implementation class ChangePassword
 */
@WebServlet("/ChangePassword")
public class ChangePassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChangePassword() {
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

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("application/json");

		// 癸Postいゅ把计秈︽秆絏

		request.setCharacterEncoding("UTF-8");
		JSONObject json = new JSONObject();
		String oldpassword = request.getParameter("oldpassword");
		String nowpassword = "qwer";// 眖database
		// 眔Ajax肚把计
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
