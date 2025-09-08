package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ReadServlet")
public class ReadServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        try {
            // Load database driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            // Establish database connection
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/laundrydb", "root", "");

            // Create statement
            Statement stmt = con.createStatement();
            String query = "SELECT * FROM customer"; // Change to your table name
            ResultSet rs = stmt.executeQuery(query);

            // Start HTML table for displaying data
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Customer Records</title>");
            out.println("<style>");
            out.println("body { font-family: 'Arial', sans-serif; margin: 0; padding: 20px; background-color: #f0f4f8; }");
            out.println(".container { max-width: 1000px; margin: 0 auto; padding: 20px; background: #ffffff; border-radius: 10px; box-shadow: 0 0 20px rgba(0, 0, 0, 0.2); }");
            out.println("h2 { text-align: center; color: #2C3E50; }");
            out.println("table { width: 100%; border-collapse: collapse; margin-top: 20px; }");
            out.println("th, td { padding: 12px; text-align: left; border-bottom: 1px solid #ddd; }");
            out.println("th { background-color: #2980B9; color: white; }");
            out.println("tr:nth-child(even) { background-color: #ecf0f1; }");
            out.println("tr:hover { background-color: #d5dbdb; }");
            out.println("footer { text-align: center; margin-top: 30px; font-size: 0.9em; color: #7f8c8d; }");
            out.println("</style>");
            out.println("</head>");
            out.println("<body>");
            out.println("<div class='container'>");
            out.println("<h2>Customer Records</h2>");
            out.println("<table>");
            out.println("<tr><th>ID</th><th>First Name</th><th>Username</th><th>Email</th><th>Password</th></tr>");

            // Iterate through the result set and display data
            while (rs.next()) {
                out.println("<tr>");
                out.println("<td>" + rs.getInt("id") + "</td>"); // ID column
                out.println("<td>" + rs.getString("Fname") + "</td>"); // First Name column
                out.println("<td>" + rs.getString("Uname") + "</td>"); // Username column
                out.println("<td>" + rs.getString("email") + "</td>"); // Email column
                out.println("<td>" + rs.getString("pass") + "</td>"); // Password column
                out.println("</tr>");
            }

            out.println("</table>");
            out.println("<footer><p>&copy; 2024 Laundry Management System. All Rights Reserved.</p></footer>");
            out.println("</div>"); // Close container
            out.println("</body>");
            out.println("</html>");

            // Close connections
            rs.close();
            stmt.close();
            con.close();
        } catch (Exception e) {
            out.println("<h3>Error: " + e.getMessage() + "</h3>");
        } finally {
            out.close();
        }
    }
}
