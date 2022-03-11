<%@page import="com.demandes.RenouvellementDAO"%>
<%@page import="com.demandes.Renouvellement"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.File"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
List<Renouvellement> renos = RenouvellementDAO.getAllReno();
Renouvellement re = new Renouvellement();
%>



<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="nav.jsp" />
	<div style="padding: 10px"></div>
	
		<div> <h1>Deamandes De Renouvellements Des Cartes Consulaires</h1> </div>
		
		<div class="row row-cols-1 row-cols-md-2 g-2 p-2" style="width: 99%; border: 5px, solid, white;">
		<%
		for (Renouvellement r : renos) {
		%>

		<div class="col">
			<div class="card">
				<div class="card-body">
					<h5 class="card-title">
						Renouvellement N°
						<%=r.getId()%></h5>
					<div class="card-text row  px-2">
						<p class="col">N° Demande:
						<%=r.getId_demande()%></p></div>
						
					<div class="card-text row px-2">
						<p class="col">Adresse:
						<%=r.getNouvelleAdresse()%></p>
						<p class="col">Telephone
						<%=r.getNouvoTelephone()%></p>
						</div>
						<div class="card-text row px-2" style="text-align: center;">
						
						<p class="col">Email:
						<%=r.getNouvelEmail()%></p>
						</div>
						
					<div class="card-text row px-2">
						<p class="col">Carte: <a
							href="<%="Files/" +r.getCarte()%>" type="button" class="btn btn-outline-warning"> Ancienne Carte</a></p>
							<p class="col">Photo: <a
							href="<%="Files/" +r.getPhoto()%>" type="button" class="btn btn-outline-warning">Photo
							d'identité</a></p>  </div>
							<div class="card-text row px-2">
							<p class="col"> Reçu du versement banquaire <a
							href="<%="Files/" +r.getRecu()%>" type="button" class="btn btn-outline-warning" target="_blank">Reçu
							de la banque</a> </p>
						 </div>
					<p class="card-text">
						Date de la demande:
						<%=r.getDate()%>
					</p>
					<div class="mt-2 d-flex justify-content-center">
						<a type="button"
							class="btn btn-danger" href='DeleteRenoServlet?id=<%=r.getId()%>'>Supprimer le renouvellement</a>
							
							<a type="button"
							class="btn btn-success" href='mailto:<%=r.getNouvelEmail()%>' style="margin-left: 10px">Envoyer une notification</a>
					</div>

					
				</div>
			</div>
		</div>
	<%
	}
	%>

	</div>
	

	<div style="height: 200px"></div>

	<jsp:include page="footer.jsp" />
</body>
</html>