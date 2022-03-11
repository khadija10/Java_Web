<%@page import="com.users.User"%>
<%@page import="com.users.UserSession"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<% if(!UserSession.isOn()){
		response.sendRedirect("LogIn.jsp");
		}%>
		
		<% User u = UserSession.getUser();
		int id_user = u.getId();
		%>
	
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Formulaire</title>
<!-- <link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous"> -->

</head>
<body>
	<jsp:include page="nav.jsp" />
	<div class="container w-75 mx-auto mt-5 shadow-lg"
		style="background-color: rgba(255, 255, 255, 0.6)">
		<div class="row mt-5 p-5">
			<form method="post" action="DemandeServlet" class="form-inline" enctype="multipart/form-data">
			<h2>Formulaire de demande</h2>
				<div class="row p-2 ">
					<div class="col ">
					<label>Nom</label>
						<input type="text" class="form-control" placeholder="Enter nom"
							name="nom">
					</div>
					<div class="col">
					<label>Prenom</label>
						<input type="text" class="form-control"
							placeholder="Enter prenom" name="prenom">
					</div>
				</div>
				
				<div class="row p-2">
					<div class="col">
					<label>Date de naissance</label>
						<input type="date" class="form-control" placeholder="Enter Date de Naissance"
							name="datenaissance">
					</div>
					<div class="col">
					<label>Lieu de naissance</label>
						<input type="text" class="form-control"
							placeholder="Enter Lieu de naissance" name="lieunaissance">
					</div>
				</div>
				
				<div class="row p-2">
					<div class="col">
					<label>Profession</label>
						<input type="text" class="form-control" placeholder=""
							name="profession">
					</div>
					<div class="col">
					<label>Taille</label>
						<input type="txt" class="form-control"
							placeholder="" name="taille">
					</div>
					<div class="col">
					<label>Sexe</label>
						<div>
							<label class="form-check-label p-3"> <input type="radio"
							class="form-check-input" value="M" name="sexe" checked>Masculin
						</label>
					<label class="form-check-label p-3"> <input type="radio"
							class="form-check-input" value="F" name="sexe">Feminin
						</label>
						</div>
					</div>
				</div>
				
				<div class="row p-2 g-4">
					<label>Type de document</label>
					<div class="col mr-6">
						<div>
							<label class="form-check-label p-3"> <input required type="checkbox"
							class="form-check-input" value="Passport" name="typedocument" checked>Passport
						</label>
					<label class="form-check-label p-3"> <input type="checkbox"
							class="form-check-input" value="Extrait de naissance" name="typedocument">Extrait de naissance
						</label>
						
						<label class="form-check-label p-3"> <input type="checkbox"
							class="form-check-input" value="C.I nationale" name="typedocument">C.I nationale
						</label>
						</div>
					</div>
				</div>
				
				<div class="row p-2">
					<div class="col">
					<label>N° Du Document</label>
						<input type="text" class="form-control" placeholder=""
							name="numerodocument">
					</div>
					<div class="col">
					<label>Date De Delivrance</label>
						<input type="date" class="form-control"
							placeholder="" name="datedelivrance">
					</div>
				</div>
				
				<div class="row p-2">
					<div class="col">
					<label>Adresse au Sénégal</label>
						<input type="text" class="form-control" placeholder=""
							name="adresse">
					</div>
				</div>
				
				<div class="row p-2">
					<div class="col">
					<label>Adresse Email</label>
						<input type="email" class="form-control" placeholder=""
							name="email">
					</div>
					<div class="col">
					<label>N° Telephone</label>
						<input type="text" class="form-control"
							placeholder="" name="telephone">
					</div>
				</div>
				
				<div class="row p-2">
					<div class="col">
					<label>Piece d'Identité</label>
						<input type="file" class="form-control" placeholder=""
							name="piece">
					</div>
					<div class="col">
					<label>Photo</label>
						<input type="file" class="form-control"
							placeholder="" name="photo">
					</div>
				</div>
				
				<div class="row p-2">
					<div class="col">
					<label>Reçu de la banque</label>
						<input type="file" class="form-control" placeholder=""
							name="recu">
					</div>
				</div>
				
				<div class="row p-2">
					<div class="col">
					<label>Date de demande</label>
						<input type="date" class="form-control" placeholder="jj/mm/aaaa"
							name="datedemande">
					</div>
				</div>
				<div class="row p-2">
					<div class="col">
						<input type="hidden" class="form-control"
							name="id_user" value="<%=id_user %>">
					</div>
				</div>
				
				
				<div class='my-2 text-center'>
					<button type="submit" class="btn btn-primary">Ajouter</button>
					<a href="index.jsp" class="btn btn-danger">Annuler</a>
				</div>
				
				
			</form>
		</div>
	</div>	
		<jsp:include page="footer.jsp" />
		
</body>
</html>