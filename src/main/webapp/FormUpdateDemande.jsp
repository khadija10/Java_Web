<%@page import="com.demandes.DemandeDAO"%>
<%@page import="com.demandes.Demande"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
    
	 String sid=request.getParameter("id"); 
	 int id=Integer.parseInt(sid); 
	 Demande d = DemandeDAO.getById(id);
    %>
<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<body>
	<jsp:include page="nav.jsp" />
	<div class="container w-75 mx-auto mt-5 shadow-lg"
		style="background-color: rgba(255, 255, 255, 0.6); height: 1000px">
		<div class="row mt-5 p-5">
			<form method="post" action="UpdateDemandeServlet?id=<%=id%>"
				class="form-inline" enctype="multipart/form-data">
				<h2>Formulaire de demande</h2>
				<div class="row p-2 ">
					<div class="col ">
						<label>Nom</label> <input type="text" class="form-control"
							placeholder="Enter nom" name="nom" value="<%=d.getNom()%>">
					</div>
					<div class="col">
						<label>Prenom</label> <input type="text" class="form-control"
							placeholder="Enter prenom" name="prenom"
							value="<%=d.getPrenom()%>">
					</div>
				</div>

				<div class="row p-2">
					<div class="col">
						<label>Date de naissance</label> <input type="date"
							class="form-control" placeholder="Enter Date de Naissance"
							name="datenaissance" value="<%=d.getDatenaissance()%>">
					</div>
					<div class="col">
						<label>Lieu de naissance</label> <input type="text"
							class="form-control" placeholder="Enter Lieu de naissance"
							name="lieunaissance" value="<%=d.getLieunaissance()%>">
					</div>
				</div>

				<div class="row p-2">
					<div class="col">
						<label>Profession</label> <input type="text" class="form-control"
							placeholder="" name="profession" value="<%=d.getProfession()%>">
					</div>
					<div class="col">
						<label>Taille</label> <input type="text" class="form-control"
							placeholder="" name="taille" value="<%=d.getTaille()%>">
					</div>
					<div class="col">
						<label>Sexe</label>
						<div>
							<label class="form-check-label p-3"> <input type="radio"
								class="form-check-input" value="M" name="sexe"
								<%if(d.getSexe().equals("M")) out.print("checked"); %>>Masculin
							</label> <label class="form-check-label p-3"> <input type="radio"
								class="form-check-input" value="F" name="sexe"
								<%if(d.getSexe().equals("F")) out.print("checked"); %>>Feminin
							</label>
						</div>
					</div>
				</div>

				<div class="row p-2 g-4">
					<label>Type de document</label>
					<div class="col mr-6">
						<div>
							<label class="form-check-label p-3"> <input
								type="checkbox" class="form-check-input" value="Passport"
								name="typedocument"
								<%if(d.getTypedocument().equals("Passport")) out.print("checked"); %>>Passport
							</label> <label class="form-check-label p-3"> <input
								type="checkbox" class="form-check-input"
								value="Extrait de naissance" name="typedocument" <%if(d.getTypedocument().equals("Extrait de naissance")) out.print("checked"); %>>Extrait
								de naissance
							</label> <label class="form-check-label p-3"> <input
								type="checkbox" class="form-check-input" value="C.I nationale"
								name="typedocument" <%if(d.getTypedocument().equals("C.I nationale")) out.print("checked"); %>>C.I nationale
							</label>
						</div>
					</div>
				</div>

				<div class="row p-2">
					<div class="col">
						<label>N° Du Document</label> <input type="text"
							class="form-control" placeholder="" name="numerodocument"
							value="<%=d.getNumerodocument()%>">
					</div>
					<div class="col">
						<label>Date De Delivrance</label> <input type="date"
							class="form-control" placeholder="" name="datedelivrance"
							value="<%=d.getDatedelivrance()%>">
					</div>
				</div>

				<div class="row p-2">
					<div class="col">
						<label>Adresse au Sénégal</label> <input type="text"
							class="form-control" placeholder="" name="adresse"
							value="<%=d.getAdresse()%>">
					</div>
				</div>

				<div class="row p-2">
					<div class="col">
						<label>Adresse Email</label> <input type="email"
							class="form-control" placeholder="" name="email"
							value="<%=d.getEmail()%>">
					</div>
					<div class="col">
						<label>N° Telephone</label> <input type="text"
							class="form-control" placeholder="" name="telephone"
							value="<%=d.getTelephone()%>">
					</div>
				</div>

				<div class="row p-2">
					<div class="col">
						<label>Piece d'Identité</label> <input type="file"
							class="form-control" placeholder="" name="piece"
							value="Files/<%=d.getPiece()%>">
					</div>
					<div class="col">
						<label>Photo</label> <input type="file" class="form-control"
							placeholder="" name="photo" value="Files/<%=d.getPhoto()%>">
					</div>
				</div>

				<div class="row p-2">
					<div class="col">
						<label>Reçu de la banque</label> <input type="file"
							class="form-control" placeholder="" name="recu"
							value="Files/<%=d.getRecu()%>">
					</div>
				</div>

				<div class="row p-2">
					<div class="col">
						<label>Date de demande</label> <input type="date"
							class="form-control" placeholder="jj/mm/aaaa" name="datedemande"
							value="<%=d.getDatedemande()%>">
					</div>
				</div>


				<div class='my-2 text-center'>
					<button type="submit" class="btn btn-primary">Update</button>
					<a href="Demandeur.jsp/<%=d.getId_user()%>" class="btn btn-danger">Annuler</a>
				</div>


			</form>
		</div>
	</div>
	<div style="height: 20px"></div>
	<jsp:include page="footer.jsp" />

</body>

</body>
</html>