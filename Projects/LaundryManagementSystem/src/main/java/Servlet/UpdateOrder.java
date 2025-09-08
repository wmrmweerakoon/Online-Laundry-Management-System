package Servlet;

import java.io.IOException;



import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Model.UpdateModel;
import Services.laundryService;

@WebServlet("/UpdateOrder")

public class UpdateOrder extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public UpdateOrder() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
    
        UpdateModel upMod = new UpdateModel();

       
        upMod.setId(Integer.parseInt(request.getParameter("id")));
        upMod.setNewname(request.getParameter("name"));
        upMod.setNewaddress(request.getParameter("address"));
        upMod.setNewphone(request.getParameter("phone"));
        upMod.setNewpickUpdate(request.getParameter("pickUpdate"));
        upMod.setNewpickUptime(request.getParameter("pickUptime"));

        
       
        laundryService service = new laundryService();
        service.updateData(upMod);

        response.sendRedirect("ShowData");
    }
}
