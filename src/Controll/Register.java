package Controll;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import pimiya.db.Connector;
import pimiya.db.DBImplement;
import pimiya.User;
@WebServlet("/Register")
public class Register extends HttpServlet {
	 // database connection settings
    //private String dbURL = "jdbc:mysql://localhost:3306/AppDB";
    //private String dbUser = "root";
    //private String dbPass = "root";
	
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        String account = request.getParameter("account");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        User NewUser = new User(account, password, email, phone);
        DBImplement.addUser(NewUser);
        String ID = DBImplement.queryUserByName(account).id;
		User user = DBImplement.queryUserById(ID);
		JavaEmail javaEmail=new JavaEmail("點擊此網址用以授權 http://localhost:8080/pimiya/authorizeServlet?userId="+ID,"Pimiya認證信",user.email);
		javaEmail.send();
		
        request.setAttribute("Message", "Register Succeed");
        response.sendRedirect("index.jsp");
    }
}
