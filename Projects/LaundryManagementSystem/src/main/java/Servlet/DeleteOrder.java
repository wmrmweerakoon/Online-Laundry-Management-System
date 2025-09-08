package Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DeleteModel;
import Services.laundryService;


@WebServlet("/DeleteOrder")
public class DeleteOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public DeleteOrder() {
        super();
       
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		DeleteModel dMod = new DeleteModel();
		
        dMod.setId(Integer.parseInt(request.getParameter("id")));
		
		laundryService service = new laundryService();
		
		service.deleteData(dMod);
		
		response.sendRedirect("ShowData");
	}

}
