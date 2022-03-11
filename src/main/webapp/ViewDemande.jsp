<%@page import="java.io.FileReader"%>
<%@page import="java.io.File"%>
<%@page import="com.demandes.DemandeDAO"%>
<%@page import="java.util.List"%>
<%@page import="com.demandes.Demande"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
List<Demande> demandes = DemandeDAO.getAllDemandes();
Demande de = new Demande();
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
	<div> <h1 style="text-align: center;">Nouvelles Demandes De Cartes Consulaire</h1> </div>
	<div class="row row-cols-1 row-cols-md-2 g-2 p-2" style="width: 99%; border: 5px, solid, white;">
		<%
		for (Demande d : demandes) {
		%>

		<div class="col">
			<div class="card">
				<div class="card-body">
					<h5 class="card-title">
						Demande N°
						<%=d.getId()%></h5>
					<div class="card-text row  px-2">
						<p class="col">Nom:
						<%=d.getNom()%></p>
						<p class="col">Prenom:
						<%=d.getPrenom()%></p></div>
					<div class="card-text row  px-2">
						<p class="col">Date de Naissance:
						<%=d.getDatenaissance()%></p>
						<p class="col">Lieu de Naissance:
						<%=d.getLieunaissance()%></p>
						</div>
					<div class="card-text row  px-2">
						<p class="col"> Profession:
						<%=d.getProfession()%></p>
						<p class="col">Taille:
						<%=d.getTaille()%></p>
						<p class="col">Sexe:
						<%=d.getSexe()%></p></div> 
					<div class="card-text row  px-2">
						<p class="col">Type document:
						<%=d.getTypedocument()%> </p>
						<p class="col">Numero du document:
						<%=d.getNumerodocument()%></p>
						</div>
						
						<div class="card-text row px-2" style="text-align: center;">
						<p class="col">Date de delivrance:
						<%=d.getDatedelivrance()%> </p>
						</div>
						
					<div class="card-text row px-2">
						<p class="col">Adresse:
						<%=d.getAdresse()%></p>
						<p class="col">Telephone
						<%=d.getTelephone()%></p>
						</div>
						<div class="card-text row px-2" style="text-align: center;">
						
						<p class="col">Email:
						<%=d.getEmail()%></p>
						</div>
						
					<div class="card-text row px-2">
						<p class="col">Piece d'identité: <a
							href="<%="Files/" +d.getPiece()%>" target="_blank" type="button" class="btn btn-outline-warning">Piece
							d'identité</a></p>
							<p class="col">Photo: <a
							href="<%="Files/" +d.getPhoto()%>" target="_blank" type="button" class="btn btn-outline-warning">Photo
							d'identité</a></p>  </div>
							<div class="card-text row px-2">
							<p class="col"> Reçu du versement banquaire <a
							href="<%="Files/" +d.getRecu()%>" target="_blank" type="button" class="btn btn-outline-warning">Reçu
							de la banque</a> </p>
						 </div>
					<p class="card-text">
						Date de la demande:
						<%=d.getDatedemande()%>
					</p>
					<div class="mt-2 d-flex justify-content-center">
						<a type="button"
							class="btn btn-danger" href='DeleteDemandeServlet?id=<%=d.getId()%>'>Delete
							Demande</a>
							<a type="button"
							class="btn btn-success" href='mailto:<%=d.getEmail()%>' style="margin-left: 10px">Envoyer une notification</a>
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