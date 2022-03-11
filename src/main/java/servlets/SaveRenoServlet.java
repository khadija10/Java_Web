package servlets;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import com.demandes.Renouvellement;
import com.demandes.RenouvellementDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

/**
 * Servlet implementation class SaveRenoServlet
 */


@WebServlet(name = "FileUploadServlet", urlPatterns = { "/fileuploadservlet" })
@MultipartConfig(
  fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
  maxFileSize = 1024 * 1024 * 10,      // 10 MB
  maxRequestSize = 1024 * 1024 * 100   // 100 MB
)
public class SaveRenoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html"); 
		PrintWriter out=response.getWriter(); 
   		
   		Part filePart1 = request.getPart("carte");
   	    String carte = filePart1.getSubmittedFileName();
   	    
   	 filePart1.write("D:\\JAVA EE\\GestionDesDemandesDeCartesConsulaires\\src\\main\\webapp\\Files\\" + File.separator + carte);
   	 
   	Part filePart2 = request.getPart("recu");
	    String recu = filePart2.getSubmittedFileName();
	    
	 
     filePart2.write("D:\\JAVA EE\\GestionDesDemandesDeCartesConsulaires\\src\\main\\webapp\\Files\\" + File.separator + recu);
   

   	 
   	Part filePart3 = request.getPart("photo");
	    String photo = filePart3.getSubmittedFileName();
	    
	 filePart3.write("D:\\JAVA EE\\GestionDesDemandesDeCartesConsulaires\\src\\main\\webapp\\Files\\" + File.separator + photo);
	       
   		String sid_demande = request.getParameter("id_demande");
   		int id_demande = Integer.parseInt(sid_demande);
   		
   		String nouvelleAdresse = request.getParameter("nouvelleAdresse");
   		String nouvelEmail = request.getParameter("nouvelEmail");  
   		String nouvoTelephone = request.getParameter("nouvoTelephone");
   		
   		String date = request.getParameter("date");
   		   		
   		Renouvellement r = new Renouvellement(id_demande, carte, recu, photo, nouvelleAdresse, nouvelEmail, nouvoTelephone, date);
   		out.println(r.getNouvelleAdresse());

   	 int status = RenouvellementDAO.addReno(r);
		if(status>0){ 
 			response.sendRedirect("Demandeur.jsp");
			 }else{ 
			 out.println("Sorry! unable to save record");
			 } 
			 out.close();

	}

}
