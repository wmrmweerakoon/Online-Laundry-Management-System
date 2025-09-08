package Servlet;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Services.PaymentServices;

@WebServlet("/PayDeleteServlet")
public class PayDeleteServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the PaymentID from the request
        String paymentIDParam = request.getParameter("PaymentID");

        // Initialize PaymentID
        int paymentID = -1;

        // Validate and parse PaymentID
        if (paymentIDParam != null && !paymentIDParam.isEmpty()) {
            try {
                paymentID = Integer.parseInt(paymentIDParam);
            } catch (NumberFormatException e) {
                request.setAttribute("error", "Invalid Payment ID provided.");
                RequestDispatcher dis = request.getRequestDispatcher("error.jsp"); // Replace with your error page
                dis.forward(request, response);
                return;
            }
        } else {
            request.setAttribute("error", "Payment ID is required.");
            RequestDispatcher dis = request.getRequestDispatcher("error.jsp"); // Replace with your error page
            dis.forward(request, response);
            return;
        }

        // Call the service to delete the payment
        PaymentServices paymentServices = new PaymentServices();
        paymentServices.DeleteData(paymentID); // Ensure this method is implemented

        // Redirect or forward to a success page
        RequestDispatcher dis = request.getRequestDispatcher("PayDeleteMsg.jsp"); // Replace with your success page
        dis.forward(request, response);
    }
}
