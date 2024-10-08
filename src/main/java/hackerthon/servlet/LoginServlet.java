package hackerthon.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import hackerthon.connection.DBConnection;
import hackerthon.dao.UserDao;
import hackerthon.model.User;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/user-login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("login.jsp");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		try(PrintWriter out=response.getWriter()){
//			out.print("This is Login servlet");
			String email=request.getParameter("login-email");
			String password=request.getParameter("login-password");
			
			try {
				UserDao udao=new UserDao(DBConnection.getConnection());
				User user=udao.userLogin(email,password);
				if(user!=null) {
					//out.print("user login");
					request.getSession().setAttribute("auth", user);
					response.sendRedirect("index.jsp");
				}
				else {
					out.print("user login failed");
				}
			} 
			catch (ClassNotFoundException | SQLException e) {
				
				e.printStackTrace();
			}
			//out.print(email+password);
		}
	}

}
