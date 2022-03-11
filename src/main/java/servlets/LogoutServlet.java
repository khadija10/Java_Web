package servlets;

import java.io.IOException;
import com.users.UserSession;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class LogoutServlet
 */
public class LogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserSession.setUser(null);
		UserSession.setOn(false);
		UserSession.setType("autre");
		response.sendRedirect("index.jsp");
	}

	

}
