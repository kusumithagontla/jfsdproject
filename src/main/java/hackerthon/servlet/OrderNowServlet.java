package hackerthon.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import hackerthon.connection.DBConnection;
import hackerthon.dao.OrderDao;
import hackerthon.model.Order;
import hackerthon.model.User;

/**
 * Servlet implementation class OrderNowServlet
 */
@WebServlet("/order-now")
public class OrderNowServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try(PrintWriter out=response.getWriter()){
			
			SimpleDateFormat formatter = new SimpleDateFormat("yyyy-mm-dd");
			Date date=new Date();
			User auth=(User)request.getSession().getAttribute("auth");
			
			if(auth!=null) {
				String productId=request.getParameter("id");
				int productQuantity=Integer.parseInt(request.getParameter("quantity"));
				if(productQuantity<=0) {
					productQuantity=1;
				}
				
				Order orderModel=new Order();
				orderModel.setId(Integer.parseInt(productId));
				orderModel.setuId(auth.getId());
				orderModel.setQuantity(productQuantity);
				orderModel.setQuantity(productQuantity);
				orderModel.setDate(formatter.format(date));
				
				OrderDao orderDao=new OrderDao(DBConnection.getConnection());
				 boolean result=orderDao.insertOrder(orderModel);
				  if(result) {
					  response.sendRedirect("orders.jsp");
					 
				  }
				
			}
			else 
			{
				response.sendRedirect("login.jsp");
			}
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		} 
}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
