package Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.OrderTrackingModel;
import Services.TrackServices;


@WebServlet("/OrderTrackServlet")
public class OrderTrackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		OrderTrackingModel OTM = new OrderTrackingModel();
		
		OTM.setTrackNO(request.getParameter("order_number"));
		OTM.setCustEmail(request.getParameter("customer_email"));
		OTM.setDate(request.getParameter("order_date"));
	
		TrackServices TS =new TrackServices();
		TS.InsertData(OTM);
		
		 RequestDispatcher dis = request.getRequestDispatcher("InsertMsgjsp.jsp");
	    dis.forward(request, response);
	}

}
