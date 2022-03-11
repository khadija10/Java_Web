<%@page import="com.users.UserDAO"%>
<%@page import="com.demandes.DemandeDAO"%>
<%@page import="com.demandes.Demande"%>
<%@page import="com.users.User"%>
<%@page import="com.users.UserSession"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<%
User user;
int id;
User u = new User();

try {
	user = UserSession.getUser();
	id = user.getId();
	u = UserDAO.getById(id);

	
} catch (IllegalArgumentException e) {
	e.printStackTrace();
	}


%>



<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="nav.jsp" />

	<div class="row row-cols-1 row-cols-md-2 p-4 d-flex" style="width: 99%; border: 5px, solid, white">
		<div class="container p-3 d-flex">
			<div class="card p-4">
				<div
					class=" image d-flex flex-column justify-content-center align-items-center">
					<button class="btn btn-secondary">
						<img src="https://i.imgur.com/wvxPV9S.png" height="100"
							width="100" />
					</button>
					<h3><span class="name mt-3"> <%=u.getNom()%> <%=u.getPrenom()%></span></h3>
					<br> <span class="idd"><%=u.getEmail()%></span>
					<div class="text mt-3">
						<span>Profil: <%=u.getProfil()%>.<br> <br>
							Adresse: <%=u.getAdresse()%> .<br> <br> Telephone: <%=u.getTelephone()%></span>
					</div>
					<div class=" d-flex mt-2">
						<a type="button" class="btn btn-success"
							href="FormUpdateUser.jsp/<%=u.getId()%>">Edit Profile</a> <a
							type="button" class="btn btn-danger"
							href="DeleteUserServlet/<%=u.getId()%>" style="margin-left: 10px">Delete
							Profile</a>
					</div>

				</div>
			</div>
		</div>

		
	<div>

		<a type="button" class="btn btn-success" href="ViewDemande.jsp"
			style="margin-right: 15px">Nouvelles Demandes</a>
			<a type="button" class="btn btn-success" href="ViewReno.jsp"
			style="margin-right: 15px">Demandes de Renouvellement</a>

	</div>
	</div>

		<div style="height: 200px"></div>

		<jsp:include page="footer.jsp" />
	
</body>
</html>