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




@WebServlet("/PaymentCreateServlet")
public class PaymentCreateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PaymentModel PM = new PaymentModel();
		
		PM.setCardName(request.getParameter("name-on-card"));
		PM.setCardNO(request.getParameter("card-number"));
		PM.setExpDate(request.getParameter("expiry-date"));
		PM.setCvv(request.getParameter("cvv"));
		PM.setBillAddress(request.getParameter("billing-address"));
		PM.setAmount(request.getParameter("amount"));
		
		PaymentServices PS = new PaymentServices();
		PS.InsertData(PM);
		
		RequestDispatcher dis = request.getRequestDispatcher("PayInsertMsg.jsp");
		 dis.forward(request, response);
	}

}



