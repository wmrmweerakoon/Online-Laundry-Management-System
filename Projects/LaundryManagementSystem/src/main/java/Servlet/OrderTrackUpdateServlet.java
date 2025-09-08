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
 @WebServlet("/OrderTrackUpdateServlet")
 public class OrderTrackUpdateServlet extends HttpServlet {
        private static final long serialVersionUID = 1L;

        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            OrderTrackingModel OTM = new OrderTrackingModel();
            
            // Retrieve TrackID from the request parameter
            String trackIdParam = request.getParameter("track_id");
            int trackID = 0;

            // Check if trackIdParam is not null or empty
            if (trackIdParam != null && !trackIdParam.isEmpty()) {
                try {
                    trackID = Integer.parseInt(trackIdParam);
                } catch (NumberFormatException e) {
                    System.out.println("Invalid Track ID: " + trackIdParam);
                    request.setAttribute("errorMessage", "Invalid Track ID.");
                    RequestDispatcher dis = request.getRequestDispatcher("error.jsp"); // Change to your error page
                    dis.forward(request, response);
                    return; // Stop further processing
                }
            } else {
                System.out.println("Track ID is missing");
                request.setAttribute("errorMessage", "Track ID is required.");
                RequestDispatcher dis = request.getRequestDispatcher("error.jsp"); // Change to your error page
                dis.forward(request, response);
                return; // Stop further processing
            }
            
            OTM.setTrackNO(request.getParameter("order_number"));
            OTM.setCustEmail(request.getParameter("customer_email"));
            OTM.setDate(request.getParameter("order_date"));
            
            TrackServices TS = new TrackServices();
            TS.UpdateData(trackID, OTM);

            RequestDispatcher dis = request.getRequestDispatcher("TrackUpdateMsgjsp.jsp");
            dis.forward(request, response);
        }
    }



