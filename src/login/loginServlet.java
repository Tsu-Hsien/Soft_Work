package login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pimiya.User;
import Controll.JavaEmail;
import pimiya.db.DBImplement;

/**
 * Servlet implementation class loginServlet
 */
@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getSession().getAttribute("currentState").equals("LoginSuccess") && request.getSession().getAttribute("currentUserID") != null)
		{
			response.sendRedirect("index.jsp");
		}
		else
		{
			request.getSession().removeAttribute("currentUserID");//刪除
			request.getSession().removeAttribute("currentState");
			response.sendRedirect("index.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if((request.getParameter("userNameText") == null) || (request.getParameter("userPassText") == null) ||
			    request.getParameter("userNameText").equals("") || request.getParameter("userPassText").equals(""))//表單送過來的帳號密碼
		{
			response.sendRedirect("index.jsp");
		}else
		{
			//下面的敘述將取得輸入於表單的使用者資料
			String current_userName = request.getParameter("userNameText");
			String current_userPass = request.getParameter("userPassText");
			
			//"select * from member_table where member_account = ?"
			//int result = connect_to_db.SelectTable(current_userID, current_userPass);
			//int result1 = connect_to_db.SelectRootTable(current_userID, current_userPass);
			
			int userID_Correct=0;//0失敗 2成功
			int userPass_Correct=0;//0失敗 -1成功
			int cartPrice = 0 ;
			User user = DBImplement.queryUserByName( current_userName ) ;
			if( user != null || !user.equals(null) ){
				cartPrice = DBImplement.queryCartProductTotalPrice(user.getId()) ;
				userID_Correct=2;
				if( user.password.equals( current_userPass ) )
					userPass_Correct=-1;
			}
			
			switch(userID_Correct + userPass_Correct)
			{
				case 1:     //登入成功
						request.getSession().setAttribute("currentUserID", user.id );
						request.getSession().setAttribute("currentState","LoginSuccess");
						request.getSession().setAttribute("cartTotalPrice", cartPrice );
						request.getSession().setAttribute("currentAuthorize", user.authorize );
						response.sendRedirect("index.jsp");
					break;
				case 2:     //密碼錯誤
					request.getSession().setAttribute("currentUserID","");
					request.getSession().setAttribute("currentState","ErrorPass");
					response.sendRedirect("index.jsp");
					break;
				default:
					request.getSession().setAttribute("currentUserID",null);	
					request.getSession().setAttribute("currentState","NoAccount");
					response.sendRedirect("index.jsp");
					break;
			}
		}
//		if(request.getSession().getAttribute("currentAuthorize")!=null&&request.getSession().getAttribute("currentAuthorize").equals("N")){
//			String ID = (String) request.getSession().getAttribute("currentUserID");
//			User user = DBImplement.queryUserById(ID);
//			JavaEmail javaEmail=new JavaEmail("點擊此網址用以授權 http://localhost:8080/pimiya/authorizeServlet?userId="+ID,"Pimiya認證信",user.email);
//			javaEmail.send();
//		}
		//request.getRequestDispatcher("login.jsp").forward(request,response);
		
		//doGet(request, response);
	}

}
