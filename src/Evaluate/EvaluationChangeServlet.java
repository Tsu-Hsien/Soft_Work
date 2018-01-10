package Evaluate;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONException;
import org.json.JSONObject;
import pimiya.Product;
import pimiya.db.DBImplement;
/**
 * Servlet implementation class EvaluationChangeServlet
 */
@WebServlet("/EvaluationChangeServlet")
public class EvaluationChangeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EvaluationChangeServlet() {
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
		// 對Post中文參數進行解碼
		response.setContentType("text/html; charset=UTF-8");      
        response.setCharacterEncoding("Big5");
        request.setCharacterEncoding("UTF-8");
		
		JSONObject json = new JSONObject();
		String productID = request.getParameter("productID");

		System.out.println(productID + "aaaaa");
		Product product = DBImplement.queryProduct(productID);
		int price = product.price;
		String name = product.name;
		
		String img1 = product.imageUrl1;
		String img2 = product.imageUrl2;
		String img3 = product.imageUrl3;
		// 取得Ajax傳入的參數
		try {

			// 將db的email改掉

			json.put("img1", img1);
			json.put("img2", img2);
			json.put("img3", img3);
			json.put("name", name);
		
			json.put("price", price);
			json.put("productID", productID);

		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// Get the printwriter object from response to write the required json
		// object to the output stream
		response.getWriter().write(json.toString());
	}
}
