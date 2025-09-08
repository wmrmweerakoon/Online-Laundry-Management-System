
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



@WebServlet("/OrderTrackReadServlet")
public class OrderTrackReadServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int trackID = Integer.parseInt(request.getParameter("order_number")); // Change to int

        TrackServices TS = new TrackServices();
        OrderTrackingModel OTM = TS.ReadData(trackID); // Retrieve OrderTrackingModel

        request.setAttribute("orderData", OTM); // Set orderData for JSP
        RequestDispatcher dis = request.getRequestDispatcher("TrackRead.jsp");
        dis.forward(request, response);
    }
}
