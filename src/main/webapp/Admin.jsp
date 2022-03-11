<%@page import="com.users.UserSession"%>
<%@page import="com.users.UserDAO"%>
<%@page import="com.users.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
if (!UserSession.isOn()) {
	response.sendRedirect("LogIn.jsp");
}
%>
<%
List<User> users = UserDAO.getAllUsers();
%>

<%
User user;
int id;
User u2 = new User();

try {
	user = UserSession.getUser();
	id = user.getId();
	u2 = UserDAO.getById(id);

} catch (IllegalArgumentException e) {
	e.printStackTrace();

}
%>
<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- JavaScript Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>

</head>
<body>
	<jsp:include page="nav.jsp" />
	<div style="padding: 10px"></div>
	<div class="container" style="width: 35%">
		<div class="accordion" id="accordionPanelsStayOpenExample">

			<div class="accordion-item">
				<h2 class="accordion-header" id="panelsStayOpen-headingTwo">
					<button class="accordion-button collapsed" type="button"
						data-bs-toggle="collapse"
						data-bs-target="#panelsStayOpen-collapseTwo" aria-expanded="false"
						aria-controls="panelsStayOpen-collapseTwo">Voir Profil</button>
				</h2>
				<div id="panelsStayOpen-collapseTwo"
					class="accordion-collapse collapse"
					aria-labelledby="panelsStayOpen-headingTwo">
					<div class="accordion-body">
						<div class="container p-3 d-flex justify-content-center"">
							<div class="card p-4">
								<div
									class=" image d-flex flex-column justify-content-center align-items-center">
									<button class="btn btn-secondary">
										<img src="https://i.imgur.com/wvxPV9S.png" height="100"
											width="100" />
									</button>
									<h3>
										<span class="name mt-3"> <%=u2.getNom()%> <%=u2.getPrenom()%>
										</span>
									</h3>
									<br> <span class="idd"><%=u2.getEmail()%></span>
									<div class="text mt-3">
										<span>Profil: <%=u2.getProfil()%>.<br> <br>
											Adresse: <%=u2.getAdresse()%> .<br> <br> Telephone:
											<%=u2.getTelephone()%></span>
									</div>
									<div class=" d-flex mt-2">
										<a type="button" class="btn btn-success"
											href='FormUpdateUser.jsp?id=<%=u2.getId()%>'>Edit Profile</a>
										<a type="button" class="btn btn-danger"
											href='DeleteUserServlet?id=<%=u2.getId()%>'
											style="margin-left: 10px">Delete Profile</a>
									</div>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="container w-75 mx-auto mt-5 shadow-lg bg-info">

		<table class="table">
			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col">Nom</th>
					<th scope="col">Prenom</th>
					<th scope="col">Adresse</th>
					<th scope="col">Telephone</th>
					<th scope="col">Email</th>
					<th scope="col">Profil</th>

					<th scope="col"></th>
				</tr>
			</thead>
			<tbody>
				<%
				for (User u : users) {
				%>
				<tr>
					<th scope="row"><%=u.getId()%></th>
					<td><%=u.getNom()%></td>
					<td><%=u.getPrenom()%></td>
					<td><%=u.getAdresse()%></td>
					<td><%=u.getTelephone()%></td>
					<td><a type="button" class="btn btn-danger"
						href='mailto:<%=u.getEmail()%>'>Mail à <%=u.getEmail()%></a></td>
					<td><%=u.getProfil()%></td>

					<td><a type="button" class="btn btn-danger"
						href='DeleteUserServlet?id=<%=u.getId()%>'
						style="margin-left: 10px">Delete </a></td>


				</tr>
				<%
				}
				%>
			</tbody>
		</table>
	</div>

	<div style="height: 50px"></div>

	<jsp:include page="footer.jsp" />
</body>
</html>