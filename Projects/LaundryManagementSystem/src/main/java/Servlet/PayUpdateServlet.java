package Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.PaymentModel;
import Services.PaymentServices;


@WebServlet("/PayUpdateServlet")
public class PayUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        PaymentModel PM = new PaymentModel();
	        
	        // Retrieve PaymentID from the request parameter
	        String paymentIdParam = request.getParameter("payment_id");
	        int paymentID = 0;

	        // Check if paymentIdParam is not null or empty
	        if (paymentIdParam != null && !paymentIdParam.isEmpty()) {
	            try {
	                paymentID = Integer.parseInt(paymentIdParam);
	            } catch (NumberFormatException e) {
	                System.out.println("Invalid Payment ID: " + paymentIdParam);
	                request.setAttribute("errorMessage", "Invalid Payment ID.");
	                RequestDispatcher dis = request.getRequestDispatcher("error.jsp");
	                dis.forward(request, response);
	                return; // Stop further processing
	            }
	        } else {
	            System.out.println("Payment ID is missing");
	            request.setAttribute("errorMessage", "Payment ID is required.");
	            RequestDispatcher dis = request.getRequestDispatcher("error.jsp");
	            dis.forward(request, response);
	            return; // Stop further processing
	        }
	        
	        // Set PaymentModel attributes from request parameters
	        PM.setPayementID(paymentID); // Set the payment ID
	        PM.setCardName(request.getParameter("card_name"));
	        PM.setCardNO(request.getParameter("card_number"));
	        PM.setExpDate(request.getParameter("expiry_date"));
	        PM.setCvv(request.getParameter("cvv"));
	        PM.setBillAddress(request.getParameter("billing_address"));
	        PM.setAmount(request.getParameter("amount"));
	        
	        // Use PaymentServices to update the payment details
	        PaymentServices paymentServices = new PaymentServices();
	        paymentServices.UpdateData(paymentID, PM); // Assuming you will create this method

	        // Forward to a success page
	        RequestDispatcher dis = request.getRequestDispatcher("PaymentUpdatemsg.jsp");
	        dis.forward(request, response);
	    }

}
