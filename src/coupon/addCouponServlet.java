package coupon;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pimiya.Coupon;
import pimiya.db.DBImplement;

/**
 * Servlet implementation class addCouponServlet
 */
@WebServlet("/addCouponServlet")
public class addCouponServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addCouponServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String ID = (String) request.getSession().getAttribute("currentUserID");
		
		String couponCode = request.getParameter("couponCode");
		
		
		double discount =  Double.parseDouble(request.getParameter("discount"))/100;
		String couponInfo = new String(request.getParameter("couponInfo").getBytes("ISO-8859-1"), "UTF-8");
		
		
		
		//Coupon(String storeId, String name, String information, double discount)
		Coupon coupon = new Coupon(ID, couponCode, couponInfo, discount);
		System.out.println(coupon);
		//addCoupon(Coupon newCoupon )
		
		DBImplement.addCoupon(coupon);
		response.sendRedirect("Account.jsp?account_context=addCoupon.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response) ;
	}

}
