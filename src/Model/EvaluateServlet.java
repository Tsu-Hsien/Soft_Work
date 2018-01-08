package Model;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EvaluateServlet
 */
@WebServlet("/EvaluateServlet")
public class EvaluateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EvaluateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String rating = request.getParameter("rating");
		String productID = request.getParameter("productID");
		System.out.print(rating+'\n');
		System.out.print(productID);
		//更新db
		//回到 評分業面前的頁面
	}

}
