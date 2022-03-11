package servlets;

import java.io.IOException;

import com.users.User;
import com.users.UserDAO;
import com.users.UserSession;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class DeleteUserServlet
 */
public class DeleteUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    		User u = UserSession.getUser();
    		String sid=request.getParameter("id"); 
   		 int id=Integer.parseInt(sid); 
   		 UserDAO.delete(id); 
   		switch (u.getProfil()) {
		case "Demandeur":
    			 response.sendRedirect("index.jsp");
    			 
			break;
			
		case "Gestionaire":
				
       			 response.sendRedirect("index.jsp");	        			 
    			 
			break;

		case "Admin":
				 
      			 response.sendRedirect("Admin.jsp");
    			 
			break;
		default:
			 response.sendRedirect("index.jsp");
			break;
		}
   			}

	
}
