package Servlet;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Services.TrackServices;

@WebServlet("/OrderTrackDeleteServlet")
public class OrderTrackDeleteServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the TrackID from the request, assuming the parameter is named "TrackID"
        String TrackIDParam = request.getParameter("TrackID");

        // Initialize TrackID to -1 or some default value to handle conversion
        int TrackID = -1;

        // Check if the parameter is not null and try to convert it to an integer
        if (TrackIDParam != null && !TrackIDParam.isEmpty()) {
            try {
                TrackID = Integer.parseInt(TrackIDParam); // Convert to int
            } catch (NumberFormatException e) {
                // Handle the exception if the parameter is not a valid integer
                e.printStackTrace(); // For debugging; consider logging this instead
                // Optionally, you might want to set an error message and redirect to an error page
                request.setAttribute("error", "Invalid Track ID provided.");
                RequestDispatcher dis = request.getRequestDispatcher("error.jsp");
                dis.forward(request, response);
                return; // Stop further execution
            }
        } else {
            // Handle case when the parameter is missing
            request.setAttribute("error", "Track ID is required.");
            RequestDispatcher dis = request.getRequestDispatcher("error.jsp");
            dis.forward(request, response);
            return; // Stop further execution
        }

        // Proceed with deletion if trackID is valid
        TrackServices TS = new TrackServices();
        TS.DeleteData(TrackID);

        // Forward to a confirmation message page
        RequestDispatcher dis = request.getRequestDispatcher("TrackDeleteMsg.jsp");
        dis.forward(request, response);
    }
}

