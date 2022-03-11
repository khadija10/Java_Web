package servlets;


import com.users.User;
import com.users.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
/**
 * Servlet implementation class UpdateUserServlet
 */
public class UpdateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html"); 
		PrintWriter out=response.getWriter(); 		
		String sid=request.getParameter("id"); 
		int id=Integer.parseInt(sid); 
		String nom = request.getParameter("nom");  
		String prenom = request.getParameter("prenom");
		String telephone = request.getParameter("telephone");
		String adresse = request.getParameter("adresse");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String profil = request.getParameter("profil");

		User u = new User(nom,prenom,adresse,telephone,email,password,profil);
		u.setId(id); 


		int status = UserDAO.update(u);
		if(status>0){ 
			 switch (u.getProfil()) {
				case "Demandeur":
	        			 response.sendRedirect("Demandeur.jsp");
	        			 
	        			 
					break;
					
				case "Gestionaire":
	    				
	           			 response.sendRedirect("manage.jsp");	        			 
	        			 
					break;

				case "Admin":
	    				 
	          			 response.sendRedirect("Admin.jsp");
	        			 
					break;
				default:
      			 response.sendRedirect("index.jsp");
					break;
				}
		}else{ 
			out.println("Sorry! unable to save record");
		} 
		out.close();
	}

}
