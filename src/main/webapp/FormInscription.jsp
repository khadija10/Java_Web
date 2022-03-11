<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
<title>Formulaire</title>
<!-- <link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
 --></head>
<body>
	<jsp:include page="nav.jsp" />


	<div class="container w-50 mx-auto mt-5 shadow-lg"
		style="background-color: rgba(255, 255, 255, 0.2); border: 5px, solid, white">
		<div class="row mt-5 p-5">
			<form method="post" action="SaveServlet" class="form">
				<h2>Inscription</h2>
				<div>
					<label class="form-label">Nom :</label> <input required type="text"
						name="nom" class="form-control">
				</div>
				<div>
					<label class="form-label">Prenom: </label> <input required
						type="text" name="prenom" class="form-control">
				</div>
				<div>
					<label class="form-label">Adresse: </label> <input required
						type="text" name="adresse" class="form-control">
				</div>

				<div>
					<label class="form-label">Telephone: </label> <input required
						type="text" name="telephone" class="form-control">
				</div>

				<label for="exampleInputEmail1" class="form-label">Email
					address</label> <input type="email" class="form-control"
					id="exampleInputEmail1" aria-describedby="emailHelp" name="email">

				<div>
					<label for="exampleInputPassword1" class="form-label">Password</label>
					<input type="password" class="form-control"
						id="exampleInputPassword1" name="password">
				</div>

				<div>
					<label class="form-label">Profil: </label> <select required
						name="profil" class="form-select">
						<option value="User">User</option>
						<option value="Demandeur">Demandeur</option>
						<option value="Gestionaire">Gestionnaire</option>
						<option value="Admin">Admin</option>

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