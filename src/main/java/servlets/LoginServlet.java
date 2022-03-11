package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import com.users.User;
import com.users.UserDAO;
import com.users.UserSession;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    		response.setContentType("text/html");     		 		
    		 PrintWriter out=response.getWriter(); 
    		 String email=request.getParameter("email");
    		 String password=request.getParameter("password"); 
    		 User u = new User();
    		 
    		 u.setEmail(email);
    		 u.setPassword(password);
    		 
    		 User u2 = UserDAO.logInUser(u);
    		 
    		 response.getWriter().println(u.getProfil());
    		 
    		 if(u2.getPassword()==null){
    			 out.println("Sorry! unable to connect record");
        		 request.getRequestDispatcher("LogIn.jsp").include(request, response);
    		 }else {
    			 switch (u2.getProfil()) {
				case "Demandeur":
					if(u.getEmail()!=null && u.getPassword()!= null){ 
	    				 UserSession.setUser(u2);
	    				 UserSession.setOn(true);
	    				 UserSession.setType("Demandeur");
	        			 response.sendRedirect("Demandeur.jsp");
	        			 
	        			 }
					break;
					
				case "Gestionaire":
					if(u.getEmail()!=null && u.getPassword()!= null){ 
	    				 UserSession.setUser(u2);
	    				 UserSession.setOn(true);
	    				 UserSession.setType("Gestionaire");
	           			 response.sendRedirect("manage.jsp");	        			 
	        			 }
					break;

				case "Admin":
					if(u.getEmail()!=null && u.getPassword()!= null){ 
	    				 UserSession.setUser(u2);
	    				 UserSession.setOn(true);
	    				 UserSession.setType("Admin");
	          			 response.sendRedirect("Admin.jsp");
	        			 }
					break;
				default:
         			 response.sendRedirect("index.jsp");
					break;
				}
    		 }
    	out.close();
    	}

}
