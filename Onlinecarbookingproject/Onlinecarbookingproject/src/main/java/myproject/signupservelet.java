package myproject;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/SignupServlet")
public class signupservelet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String mobile = request.getParameter("mobile");
        String password = request.getParameter("password");

        // Store user credentials in cookies (for demonstration purposes).
        Cookie usernameCookie = new Cookie("username", username);
        Cookie passwordCookie = new Cookie("password", password);

        // Set the expiration time (in seconds) - adjust as needed.
        int cookieExpirationTime = 24 * 60 * 60; // 1 day
        usernameCookie.setMaxAge(cookieExpirationTime);
        passwordCookie.setMaxAge(cookieExpirationTime);

        // Add cookies to the response.
        response.addCookie(usernameCookie);
        response.addCookie(passwordCookie);

        // Store user information in the MySQL database.
        storeUserDataInDatabase(username, email, mobile);

        // Display confirmation page with login option and styles.
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<html><head><title>Signup Confirmation</title>");
        out.println("<style>body { font-family: Arial, sans-serif; background-color: #f4f4f4; text-align: center; }");
        out.println("h2 { color: #009688; } p { margin-top: 20px; } a { display: inline-block; padding: 10px 20px; background-color: #009688; color: #fff; text-decoration: none; }</style>");
        out.println("</head><body>");
        out.println("<h2>Signup Successful!</h2>");
        out.println("<p>Thank you for signing up. Do you want to login now?</p>");
        out.println("<a href=\"login.jsp\">Login</a>");
        out.println("</body></html>");
    }

    private void storeUserDataInDatabase(String username, String email, String mobile) {
        try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/colordb","root", "Priyanshu@12")) {
            String sql = "INSERT INTO users(username, email, mobile) VALUES (?, ?, ?)";
            try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
                preparedStatement.setString(1, username);
                preparedStatement.setString(2, email);
                preparedStatement.setString(3, mobile);
                preparedStatement.executeUpdate();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
