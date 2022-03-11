<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<!-- <link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
 --></head>
<body>
	<jsp:include page="nav.jsp" />

	<div class="container w-75 mx-auto mt-2 shadow-lg"
		style="background-color: rgba(255, 255, 255, 0.6); border: 5px, solid, white">
		<div class="row mt-5 p-5">
			<form method="post" action="LoginServlet" class="form">
				<h2>Candidat Login</h2>

				<div class="mb-3">
					<label for="exampleInputEmail1" class="form-label">Email
						address</label> <input type="email" class="form-control"
						id="exampleInputEmail1" aria-describedby="emailHelp" name="email">
				</div>
				<div class="mb-3">
					<label for="exampleInputPassword1" class="form-label">Password</label>
					<input type="password" class="form-control"
						id="exampleInputPassword1" name="password">
				</div>
				<div class="row">
					<div class='my-2 col'>
					<button type="submit" class="btn btn-primary">Connexion</button>
					<a href="index.jsp" class="btn btn-danger">Annuler</a>
				</div>
				<div class="col" style="padding-top: 3%; margin-left: 20%">Si vous n'avez pas de compte cliquez <a href="FormInscription.jsp">ici</a> </div>
				</div>
				

			</form>
		</div>
	</div>
			<div style="height: 50px"></div>
	
		
			<jsp:include page="footer.jsp" />

	<!-- <script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
 --></body>
</html>