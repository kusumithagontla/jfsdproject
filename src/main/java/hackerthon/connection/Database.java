package hackerthon.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Database {
    public static Connection getConnection() throws SQLException {
        try {
            // Load the MySQL JDBC Driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            // Return the database connection
            return DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce_cart","root","Kusumitha@08");
        } catch (Exception e) {
            throw new SQLException("Database connection failed: " + e.getMessage());
        }
    }
}