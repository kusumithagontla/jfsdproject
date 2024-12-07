package hackerthon.servlet;

import hackerthon.connection.Database;
import hackerthon.model.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;

public class Userlogin extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("login-email");
        String password = request.getParameter("login-password");
        String role = request.getParameter("user-role");

        try (Connection connection = Database.getConnection()) {
            String sql = "SELECT * FROM users WHERE email = ? AND password = ? AND role = ?";
            PreparedStatement stmt = connection.prepareStatement(sql);
            stmt.setString(1, email);
            stmt.setString(2, password); // In a real application, use a hashed password
            stmt.setString(3, role);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                // Successful login, set the session attribute
                User user = new User();
                user.setId(rs.getInt("id"));
                user.setEmail(rs.getString("email"));
                user.setRole(rs.getString("role"));
                request.getSession().setAttribute("auth", user);

                // Redirect to home page or role-specific page
                response.sendRedirect("index.jsp"); // Or redirect based on role
            } else {
                // Invalid login credentials
                request.setAttribute("error", "Invalid email, password, or role. Please try again.");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("error", "A database error occurred. Please try again later.");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}
