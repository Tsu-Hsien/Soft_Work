package Controll;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;
import org.json.JSONException;
import org.json.JSONObject;
import java.util.*;
import java.text.*;

/**
 * Servlet implementation class ChangeInformation
 */
@WebServlet("/ChangeInformation")
public class ChangeInformation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChangeInformation() {
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
		response.setContentType("application/json");

		// 對Post中文參數進行解碼

		request.setCharacterEncoding("UTF-8");
		JSONObject json = new JSONObject();
		String email = request.getParameter("email");
		 Date dNow = new Date( );
	      SimpleDateFormat ft = 
	      new SimpleDateFormat ("yyyy/MM/dd hh:mm:ss");
//修改db的修改日期
	      System.out.println("Current Date: " + ft.format(dNow));
		// 取得Ajax傳入的參數
		try {
			
				//將db的email改掉
				
				json.put("email", email);

		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		System.out.print(email + "\n");

		// Get the printwriter object from response to write the required json
		// object to the output stream
		response.getWriter().write(json.toString());
		// Assuming your json object is **jsonObject**, perform the following,
		// it will return your json object

	}

}
