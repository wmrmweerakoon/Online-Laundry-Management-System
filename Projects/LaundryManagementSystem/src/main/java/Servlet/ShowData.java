package Servlet;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Model.OrderModel;
import Services.laundryService;

@WebServlet("/ShowData")
public class ShowData extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        laundryService oService = new laundryService();
        List<OrderModel> orList = oService.showData();

        // Debug statement to print the size of the list
        System.out.println("Number of orders retrieved: " + orList.size());

        // Check if the list has data
        for (OrderModel order : orList) {
            System.out.println("Order: " + order.getId() + ", " + order.getName()+ ", "+ order.getAddress() + ", " +  order.getPhone() + ", " + order.getPickUpdate() + ", "+ order.getPickUptime() );
        }

        // Set the order list in the request attribute
        request.setAttribute("orList", orList);

        // Forward the request to the JSP page
        request.getRequestDispatcher("Display.jsp").forward(request, response);
    }

}
