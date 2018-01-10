package products;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import pimiya.Product;
import pimiya.db.DBImplement;

@WebServlet("/addProductServlet")
public class addProductServlet extends HttpServlet{
private static final long serialVersionUID = 1L;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addProductServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//response.setContentType("text/html; charset=UTF-8");      
        //response.setCharacterEncoding("UTF-8");
        
        //request.setCharacterEncoding("UTF-8");

		HttpSession session = request.getSession();
		//DB找訂單
		
		
		
		String g_userID = (String)session.getAttribute("currentUserID");		
	
		//String productName =  request.getParameter("name");
		String productName = new String( request.getParameter("name").getBytes("ISO-8859-1"), "UTF-8");
		String productInfo = new String( request.getParameter("information").getBytes("ISO-8859-1"), "UTF-8");
		//String productInfo =request.getParameter("information");
		String temp = (String) request.getParameter("price");
		int price =Integer.parseInt(temp);
		//String product_type = new String(request.getParameter("product_type").getBytes("ISO-8859-1"), "UTF-8");
		String product_type =request.getParameter("product_type");
		temp = (String) request.getParameter("shippingfee");
		int shippingfee = Integer.parseInt(temp);
		temp = (String) request.getParameter("quantity");
		int quantity = Integer.parseInt(temp);
		String image = (String) request.getParameter("image");
		//System.out.println(image);
		
		
		//(String seller_id, String name, int price, int shippingFee, String product_type, String sales_typr,
		//String information, int quantity, String salesState)
		
		Product product  = new Product(g_userID,productName,price,shippingfee, product_type, "S",
				productInfo, quantity, "Y");
		product.setImageUrl1(image);
		DBImplement.addProduct(product);		//出貨資訊

		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("utf-8");
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
