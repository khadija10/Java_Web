<%@page import="com.users.UserSession"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<% if(!UserSession.isOn()){
		response.sendRedirect("LogIn.jsp");
		}%>
	
<% String sid_demande = request.getParameter("id");
	int id_demande = Integer.parseInt(sid_demande);%>		
		
	
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
		style="background-color: rgba(255, 255, 255, 0.6); border: 5px, solid, white">
		<div class="row mt-5 p-5">
			<form method="post" action="SaveRenoServlet" class="form-inline" enctype="multipart/form-data">
			<h2>Formulaire de renouvellement</h2>
			
			<div class="row p-2">
					<div class="col">
					<label>Carte consulaire</label>
						<input type="file" class="form-control" placeholder=""
							name="carte" required>
					</div>
					<div class="col">
					<label>Photo</label>
						<input type="file" class="form-control"
							placeholder="" name="photo" required>
					</div>
				</div>
				
				<div class="row p-2">
					<div class="col">
					<label>Reçu de la banque</label>
						<input type="file" class="form-control" placeholder=""
							name="recu" required>
					</div>
				</div>
								
				<div class="row p-2">
					<div class="col">
					<label>Nouvelle Adresse au Sénégal</label>
						<input type="text" class="form-control" placeholder=""
							name="nouvelleAdresse">
					</div>
				</div>
				
				<div class="row p-2">
					<div class="col">
					<label> Nouvel Adresse Email</label>
						<input type="email" class="form-control" placeholder=""
							name="nouvelEmail">
					</div>
					<div class="col">
					<label>Nouveau N° Telephone</label>
						<input type="text" class="form-control"
							placeholder="" name="nouvoTelephone">
					</div>
					<div class="col">
						<input type="hidden" class="form-control"
							placeholder="" name="id_demande" value="<%=id_demande%>">
					</div>
				</div>
				
				
				
				<div class="row p-2">
					<div class="col">
					<label>Date de demande de renouvellement</label>
						<input type="date" class="form-control" 
							name="date" required>
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