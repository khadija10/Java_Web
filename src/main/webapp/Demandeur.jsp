
<%@page import="com.demandes.RenouvellementDAO"%>
<%@page import="com.demandes.Renouvellement"%>
<%@page import="com.users.UserDAO"%>
<%@page import="com.demandes.DemandeDAO"%>
<%@page import="com.demandes.Demande"%>
<%@page import="com.users.User"%>
<%@page import="com.users.UserSession"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<%
User user = UserSession.getUser();
int id = user.getId();
User u = UserDAO.getById(id);

Demande d = DemandeDAO.getByU(id);

int idr = d.getId();
Renouvellement r = RenouvellementDAO.getByIdD(idr);
%>



<html lang="fr">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="nav.jsp" />

	<div class="row row-cols-1 row-cols-md-2 p-4 d-flex"
		style="width: 99%; border: 5px, solid, white;">
		<div class="col">
			<div class="container d-flex">
			<div class="card p-4">
				<div
					class=" image d-flex flex-column justify-content-center align-items-center">
					<button class="btn btn-secondary">
						<img src="https://i.imgur.com/wvxPV9S.png" height="100"
							width="100" />
					</button>
					<h3>
						<span class="name mt-3"> <%=u.getNom()%> <%=u.getPrenom()%>
						</span>
					</h3>
					<br> <span class="idd"><%=u.getEmail()%></span>
					<div class="text mt-3">
						<span>Profil: <%=u.getProfil()%>.<br> <br>
							Adresse: <%=u.getAdresse()%> .<br> <br> Telephone: <%=u.getTelephone()%></span>
					</div>
					<div class=" d-flex mt-2">
						<a type="button" class="btn btn-success"
							href='FormUpdateUser.jsp?id=<%=u.getId()%>'>Edit Profile</a> <a
							type="button" class="btn btn-danger"
							href='DeleteUserServlet?id=<%=u.getId()%>'
							style="margin-left: 10px">Delete Profile</a>
					</div>

				</div>
			</div>
		</div>
		</div>

		<%
		if (d.getId() != 0) {
		%>

			<div class="col">
			<div class="card">
				<div class="card-body">
					<h5 class="card-title">
						Demande N°
						<%=d.getId()%></h5>
					<div class="card-text row  px-2">
						<p class="col">
							Nom:
							<%=d.getNom()%></p>
						<p class="col">
							Prenom:
							<%=d.getPrenom()%></p>
					</div>
					<div class="card-text row  px-2">
						<p class="col">
							Date de Naissance:
							<%=d.getDatenaissance()%></p>
						<p class="col">
							Lieu de Naissance:
							<%=d.getLieunaissance()%></p>
					</div>
					<div class="card-text row  px-2">
						<p class="col">
							Profession:
							<%=d.getProfession()%></p>
						<p class="col">
							Taille:
							<%=d.getTaille()%></p>
						<p class="col">
							Sexe:
							<%=d.getSexe()%></p>
					</div>
					<div class="card-text row  px-2">
						<p class="col">
							Type document:
							<%=d.getTypedocument()%>
						</p>
						<p class="col">
							Numero du document:
							<%=d.getNumerodocument()%></p>
					</div>

					<div class="card-text row px-2" style="text-align: center;">
						<p class="col">
							Date de delivrance:
							<%=d.getDatedelivrance()%>
						</p>
					</div>

					<div class="card-text row px-2">
						<p class="col">
							Adresse:
							<%=d.getAdresse()%></p>
						<p class="col">
							Telephone
							<%=d.getTelephone()%></p>
					</div>
					<div class="card-text row px-2" style="text-align: center;">

						<p class="col">
							Email:
							<%=d.getEmail()%></p>
					</div>

					<div class="card-text row px-2">
						<p class="col">
							Piece d'identité: <a href="<%="Files/" + d.getPiece()%>"
								target="_blank" type="button" class="btn btn-info">Piece
								d'identité</a>
						</p>
						<p class="col">
							Photo: <a href="<%="Files/" + d.getPhoto()%>" target="_blank"
								type="button" class="btn btn-info">Photo d'identité</a>
						</p>
					</div>
					<div class="card-text row px-2">
						<p class="col">
							Reçu du versement banquaire <a href="<%="Files/" + d.getRecu()%>"
								target="_blank" type="button" class="btn btn-info">Reçu de
								la banque</a>
						</p>
					</div>
					<p class="card-text">
						Date de la demande:
						<%=d.getDatedemande()%>
					</p>
					<div class="mt-2 d-flex justify-content-center">
						<a type="button" class="btn btn-success"
							href='FormUpdateDemande.jsp?id=<%=d.getId()%>'
							style="margin-right: 15px">Edit Demande</a> 
						<%
						if (r.getId() == 0) {
						%>
						<a type="button" class="btn btn-primary"
							href='FormReno.jsp?id=<%=d.getId()%>' style="margin-left: 15px">Renouveller
							Demande</a>
						<%
						}
						%>
					</div>

				</div>
				
			
			</div>
			
			<%
	} else {
	%>


		<a type="button" class="btn btn-success" href="FormDemande.jsp" style="width: 30%;height: 10%">Faire Une Demande</a>


	<%
	}
	%>
	
		</div>

		</div>
		


		
		

	<%
		if (r.getId() != 0) {
		%>

	<div class="container justify-content-center"
		style="height: 50%; width: 60%">

		<div class="col ">
			<div class="card">
				<div class="card-body">
					<h5 class="card-title">
						Demande de renouvellement N°
						<%=r.getId()%></h5>

					<div class="card-text row px-2">
						<p class="col">
							Nouvelle Adresse:
							<%=r.getNouvelleAdresse()%></p>
						<p class="col">
							Nouveau Telephone
							<%=r.getNouvoTelephone()%></p>
					</div>
					<div class="card-text row px-2" style="text-align: center;">

						<p class="col">
							Nouvel Email:
							<%=r.getNouvelEmail()%></p>
					</div>

					<div class="card-text row px-2">
						<p class="col">
							Carte à changer: <a href="<%="Files/" + r.getCarte()%>"
								target="_blank" type="button" class="btn btn-info"> Carte
								consulaire</a>
						</p>
						<p class="col">
							Photo: <a href="<%="Files/" + r.getPhoto()%>" target="_blank"
								type="button" class="btn btn-info">Photo d'identité</a>
						</p>
					</div>
					<div class="card-text row px-2">
						<p class="col">
							Reçu du versement banquaire <a href="<%="Files/" + r.getRecu()%>"
								target="_blank" type="button" class="btn btn-info">Reçu de
								la banque</a>
						</p>
					</div>
					<p class="card-text">
						Date de la demande de renouvellement:
						<%=r.getDate()%>
					</p>
					<div class="mt-2 d-flex justify-content-center">
						<a type="button" class="btn btn-success"
							href='FormUpdateReno.jsp?id=<%=r.getId()%>'
							style="margin-right: 15px">Edit Renouvellement</a>
						
					</div>

				</div>
			</div>
		</div>


	</div>

	<%
		}
		%>
		<div style="height: 50px"></div>

	<jsp:include page="footer.jsp" />
</body>



</html>