<%@page import="com.users.User"%>
<%@page import="com.users.UserSession"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="ISO-8859-1">
<title></title>
<link href="makeup/theme/css/style.css" rel="stylesheet" type="text/css"
	media="all" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script type="application/x-javascript">
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 


</script>
<script type="text/javascript" src="makeup/theme/js/jquery.min.js"></script>
<script type="text/javascript" src="makeup/theme/js/bootstrap.js"></script>
<script type="text/javascript" src="makeup/theme/js/bootstrap.min.js"></script>




</head>
<body>


	<div class="header_bg">
		<div class="container" style="height: 210px">
			<div class="row header">
				<div class="col-9 logo navbar-left">
					<h2>
						<a href="index.html">ConsuCard
						</a>
					</h2>
				</div>
				<div class="col justify-content-end">
					<img alt="Republique de Guineée"
						src="makeup/theme/images/Guinea.svg.png" id="im"> <br>
					<h6>AMBASSADE DE GUINEE</h6>
				</div>
			</div>
		</div>


		<div class="container">
			<div class="row hmen">
				<nav class="navbar navbar-expand-lg" style="height: 40px">
					<div class="container-fluid">
						<button class="navbar-toggler" type="button"
							data-bs-toggle="collapse"
							data-bs-target="#navbarSupportedContent"
							aria-controls="navbarSupportedContent" aria-expanded="false"
							aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>
						<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<ul class="navbar-nav me-auto mb-2 mb-lg-0">
								<%
								if (UserSession.getType().equals("autre")) {
								%>
								<li class="active nav-item"><a href="index.jsp"
									class="nav-link active">HOME</a></li>

								<%
								}
								%>

								<%
								if (UserSession.getType().equals("Demandeur")) {
								%>
								<li class="active nav-item"><a href="index.jsp"
									class="nav-link active">HOME</a></li>
								<li class="nav-item"><a href="Demandeur.jsp"
									class="nav-link"> DEMANDEUR </a></li>
								<%
								}
								%>

								<%
								if (UserSession.getType().equals("Gestionaire")) {
								%>
								<li class="active nav-item"><a href="index.jsp"
									class="nav-link active">HOME</a></li>

								<li class="nav-item"><a href="manage.jsp" class="nav-link">MANAGER</a></li>
								<%
								}
								%>

								<%
								if (UserSession.getType().equals("Admin")) {
								%>
								<li class="active nav-item"><a href="index.jsp"
									class="nav-link active">HOME</a></li>

								<li class="nav-item"><a href="Admin.jsp" class="nav-link">ADMIN</a></li>
								<%
								}
								%>


								<%
								if (!UserSession.isOn()) {
								%>

								<li class="nav-item"><a href="FormInscription.jsp"
									class="nav-link">INSCRIPTION</a></li>
								<%
								}
								%>

								<li class="nav-item"><a href="contact.jsp"
									class="nav-link">CONTACT</a></li>

							</ul>

						</div>
					</div>
					<div class="soc_icons">
						<ul class="navbar-collapse justify-content-end">
							<%
							if (!UserSession.isOn()) {
							%>
							<li class="nav-item"><a href="LogIn.jsp">LogIn</a></li>
							<%
							}
							%>
							
							<%
							if (UserSession.isOn()) {
							%>
							<li class="nav-item"><a href="LogoutServlet">LogOut</a></li>

							<%
							}
							%>



						</ul>
					</div>


				</nav>

			</div>
		</div>
	</div>

</body>
</html>