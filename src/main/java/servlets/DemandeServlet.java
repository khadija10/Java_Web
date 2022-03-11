package servlets;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import com.demandes.Demande;
import com.demandes.DemandeDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
/**
 * Servlet implementation class DemandeServlet
 */

/* The Java file upload Servlet example */

@WebServlet(name = "FileUploadServlet", urlPatterns = { "/fileuploadservlet" })
@MultipartConfig(
  fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
  maxFileSize = 1024 * 1024 * 10,      // 10 MB
  maxRequestSize = 1024 * 1024 * 100   // 100 MB
)
public class DemandeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    		
    		response.setContentType("text/html"); 
    		PrintWriter out=response.getWriter(); 
    		
    		
       		String nom = request.getParameter("nom");  
       		String prenom = request.getParameter("prenom");
       		String datenaissance = request.getParameter("datenaissance");
       		String lieunaissance = request.getParameter("lieunaissance");  
       		String profession = request.getParameter("profession");
       		String taille = request.getParameter("taille");
       		String sexe = request.getParameter("sexe");

       		String typedocument = request.getParameter("typedocument");
       		String numerodocument = request.getParameter("numerodocument");
       		String datedelivrance = request.getParameter("datedelivrance");
       		String adresse = request.getParameter("adresse");
       		String email = request.getParameter("email");


       		String telephone = request.getParameter("telephone");
       		String datedemande = request.getParameter("datedemande");
       		
       		
       		Part filePart1 = request.getPart("piece");
       	    String piece = filePart1.getSubmittedFileName();
       	    
       	 filePart1.write("D:\\JAVA EE\\GestionDesDemandesDeCartesConsulaires\\src\\main\\webapp\\Files\\" + File.separator + piece);
           
       	    

       		Part filePart2 = request.getPart("photo");
       	    String photo = filePart2.getSubmittedFileName();
       	    
       	 filePart2.write("D:\\JAVA EE\\GestionDesDemandesDeCartesConsulaires\\src\\main\\webapp\\Files\\" + File.separator + photo);
           
       	    

       		Part filePart3 = request.getPart("recu");
       	    String recu = filePart3.getSubmittedFileName();
       	    
       	 
             filePart3.write("D:\\JAVA EE\\GestionDesDemandesDeCartesConsulaires\\src\\main\\webapp\\Files\\" + File.separator + recu);
           
             String ssid = request.getParameter("id_user");
             int id_user = Integer.parseInt(ssid);
             
       
            
       	    Demande d = new Demande(id_user,nom, prenom, datenaissance, lieunaissance, profession, taille, sexe, typedocument, numerodocument, datedelivrance, adresse, email, telephone, datedemande, piece, photo, recu);
           

       	 int status = DemandeDAO.addDemande(d);
    		if(status>0){ 
    			response.sendRedirect("Demandeur.jsp");
 			 }else{ 
 			 out.println("Sorry! unable to save record");
 			 } 
 			 out.close();
       	    
       		

    	}
    	
    	

}
