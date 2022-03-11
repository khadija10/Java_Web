<%@page import="com.users.UserDAO"%>
<%@page import="com.users.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
String sid = request.getParameter("id");
int id = Integer.parseInt(sid);
User u = UserDAO.getById(id);
%>
<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="nav.jsp" />	
	<div class="container w-50 mx-auto mt-5 shadow-lg"
		style="background-color: rgba(255, 255, 255, 0.2); border: 5px, solid, white">
		<div class="row mt-5 p-5">
			<form method="post" action="UpdateUserServlet?id=<%=id%>" class="form">
				<h2>Update de User</h2>
				<div>
					<label class="form-label">Nom :</label> <input required type="text"
						name="nom" class="form-control" value="<%=u.getNom()%>">
				</div>
				<div>
					<label class="form-label">Prenom: </label> <input required
						type="text" name="prenom" class="form-control"
						value="<%=u.getPrenom()%>">
				</div>
				<div>
					<label class="form-label">Adresse: </label> <input required
						type="text" name="adresse" class="form-control"
						value="<%=u.getAdresse()%>">
				</div>

				<div>
					<label class="form-label">Telephone: </label> <input required
						type="text" name="telephone" class="form-control"
						value="<%=u.getTelephone()%>">
				</div>

				<label for="exampleInputEmail1" class="form-label">Email
					address</label> <input type="email" class="form-control"
					id="exampleInputEmail1" aria-describedby="emailHelp" name="email"
					value="<%=u.getEmail()%>">

				<div>
					<label for="exampleInputPassword1" class="form-label">Password</label>
					<input type="password" class="form-control"
						id="exampleInputPassword1" name="password"
						value="<%=u.getPassword()%>">
				</div>

				<div>
					<label class="form-label">Profil: </label> <select required
						name="profil" class="form-select">
						<option value="<%=u.getProfil()%>">User</option>
						<option value="<%=u.getProfil()%>">Demandeur</option>
						<option value="<%=u.getProfil()%>">Gestionnaire</option>
						<option value="<%=u.getProfil()%>">Admin</option>

					</select>
				</div>

				<div class='my-2'>
					<button type="submit" class="btn btn-primary">Valider</button>
					<a href="index.jsp" class="btn btn-danger">Annuler</a>
				</div>
		

		
			</form>
		</div>
	</div>

	<br />
	<br />
	<br />
	<br />
	<br />
	<!-- <script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script> -->

	<jsp:include page="footer.jsp" />

</body>
</html>