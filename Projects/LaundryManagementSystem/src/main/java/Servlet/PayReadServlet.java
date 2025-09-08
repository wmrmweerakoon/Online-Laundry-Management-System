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



@WebServlet("/PayReadServlet")
public class PayReadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    int paymentID = Integer.parseInt(request.getParameter("PaymentID")); // Change this to retrieve PaymentID
	    PaymentServices paymentServices = new PaymentServices();
	    PaymentModel paymentModel = paymentServices.ReadData(paymentID); // Retrieve PaymentModel

	    request.setAttribute("PaymentData", paymentModel); // Set PaymentData for JSP
	    RequestDispatcher dispatcher = request.getRequestDispatcher("PaymentRead.jsp");
	    dispatcher.forward(request, response);
	}


}
