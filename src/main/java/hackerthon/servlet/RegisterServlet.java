package hackerthon.servlet;

import hackerthon.connection.DatabaseConnection1;
import hackerthon.util.DatabaseConnection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

@WebServlet("/user-register")
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve form data
        String role = request.getParameter("user-role");
        String fullName = request.getParameter("register-name");
        String contactNumber = request.getParameter("register-contact");
        String email = request.getParameter("register-email");
        String password = request.getParameter("register-password");
        String confirmPassword = request.getParameter("register-confirm-password");

        // Validate passwords match
        if (!password.equals(confirmPassword)) {
            request.setAttribute("error", "Passwords do not match!");
            request.getRequestDispatcher("registration.jsp").forward(request, response);
            return;
        }

        // Connect to the database and insert data
        try (Connection connection = DatabaseConnection1.getConnection()) {
            String sql = "INSERT INTO users (role, full_name, contact_number, email, password) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, role);
            statement.setString(2, fullName);
            statement.setString(3, contactNumber);
            statement.setString(4, email);
            statement.setString(5, password); // Store passwords securely (hashing recommended)

            int rowsInserted = statement.executeUpdate();

            if (rowsInserted > 0) {
                // Successful registration, redirect to login page
                response.sendRedirect("login.jsp");
            } else {
                request.setAttribute("error", "Registration failed. Please try again.");
                request.getRequestDispatcher("registration.jsp").forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "An error occurred during registration. Please try again.");
            request.getRequestDispatcher("registration.jsp").forward(request, response);
        }
    }
}