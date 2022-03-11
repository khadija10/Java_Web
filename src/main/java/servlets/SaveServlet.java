package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import com.users.User;
import com.users.UserDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SaveServlet
 */
public class SaveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		response.setContentType("text/html"); 
		PrintWriter out=response.getWriter(); 
		String nom = request.getParameter("nom");  
		String prenom = request.getParameter("prenom");
		String adresse = request.getParameter("adresse");
		String telephone = request.getParameter("telephone");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String profil = request.getParameter("profil");

		//dao
		User u = new User(nom,prenom,adresse,telephone,email,password,profil);

		int status = UserDAO.addUser(u);
		if(status>0){ 
 			response.sendRedirect("LogIn.jsp");

		}else{ 
			out.println("Sorry! unable to save record");
		} 
		out.close();
	}

}
