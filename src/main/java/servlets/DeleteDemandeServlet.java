package servlets;

import java.io.IOException;

import com.demandes.DemandeDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DeleteDemandeServlet
 */
public class DeleteDemandeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sid=request.getParameter("id"); 
		 int id=Integer.parseInt(sid); 
		 DemandeDAO.delete(id);
		 request.getRequestDispatcher("ViewDemande.jsp").include(request, response);

	}

}
