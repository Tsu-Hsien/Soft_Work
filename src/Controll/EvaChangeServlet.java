package Controll;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONException;
import org.json.JSONObject;

/**
 * Servlet implementation class EvaChangeServlet
 */
@WebServlet("/EvaChangeServlet")
public class EvaChangeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EvaChangeServlet() {
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
		// TODO Auto-generated method stub
		response.setContentType("application/json");
		// 癸Postいゅ把计秈︽秆絏
		request.setCharacterEncoding("UTF-8");
		JSONObject json = new JSONObject();
		String productID = request.getParameter("productID");
		
		
		System.out.println(productID+"aaaaa");
		int price = 299;
		String name = "box";
		String date = "2015/05/05";
		String img1 ="assets/img/e.jpg";
		String img2 ="assets/img/e.jpg";
		String img3 ="assets/img/e.jpg";
		// 眔Ajax肚把计
		try {

			// 盢dbemailэ奔

			json.put("img1",img1);
			json.put("img2",img2);
			json.put("img3",img3);
			json.put("name",name);
			json.put("date",date);
			json.put("price",price);
			json.put("productID",productID);
			
			
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	

		// Get the printwriter object from response to write the required json
		// object to the output stream
		response.getWriter().write(json.toString());
	}

}
