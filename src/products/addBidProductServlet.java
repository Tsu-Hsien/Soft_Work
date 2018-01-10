package products;

import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import pimiya.BiddingProduct;
import pimiya.Product;
import pimiya.db.DBImplement;

/**
 * Servlet implementation class shopCart
 */
@WebServlet("/addBidProductServlet")
public class addBidProductServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addBidProductServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html; charset=UTF-8");      
        response.setCharacterEncoding("Big5");

		HttpSession session = request.getSession();
		//DB找訂單
		
		String g_userID = (String)session.getAttribute("currentUserID");		
		String productName = request.getParameter("name");
		//productName =  new String( productName.getBytes("ISO-8859-1"), "UTF-8");
		String productInfo = request.getParameter("information");
		//productInfo =new String( productInfo.getBytes("ISO-8859-1"), "UTF-8");
		String temp = (String) request.getParameter("original_price");
		int originPrice =Integer.parseInt(temp);
		String end_time = (String) request.getParameter("end_time");
		String product_type = request.getParameter("product_type");
		//product_type =new String(product_type.getBytes("ISO-8859-1"), "UTF-8");
		temp= (String) request.getParameter("minbid_price");
		int minbid_price =Integer.parseInt(temp);
		temp = (String) request.getParameter("shippingfee");
		int shippingfee = Integer.parseInt(temp);
		String image = (String) request.getParameter("image");
		//System.out.println(image);
		
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Date date = new Date();
		String today = dateFormat.format(date);
		
		//BiddingProduct(String seller_id, String name, int price, String product_type, String sales_typr,
		//String information, int quantity, String salesState, int original_price, int minbid_price,
		//String start_time, String end_time)
		
		BiddingProduct product  = new BiddingProduct(g_userID,productName,0,shippingfee, product_type, "B",
				productInfo, 1, "Y" , originPrice, minbid_price,
				today, end_time);
		product.setImageUrl1(image);
		DBImplement.addProduct(product);		//出貨資訊

		//request.setCharacterEncoding("UTF-8");
		//response.setCharacterEncoding("utf-8");
		response.sendRedirect("Account.jsp");
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
