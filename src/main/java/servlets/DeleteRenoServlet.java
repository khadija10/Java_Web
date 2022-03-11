package servlets;

import java.io.IOException;

import com.demandes.RenouvellementDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DeleteDemandeServlet
 */
public class DeleteRenoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sid=request.getParameter("id"); 
		 int id=Integer.parseInt(sid); 
		 RenouvellementDAO.delete(id);
		 request.getRequestDispatcher("ViewReno.jsp").include(request, response);

	}

}
