<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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

<!-- start slider -->
<link href="makeup/theme/css/style.css" rel="stylesheet" type="text/css"
	media="all" />
<script type="text/javascript"
	src="makeup/theme/js/modernizr.custom.28468.js"></script>
<script type="text/javascript" src="makeup/theme/js/jquery.cslider.js"></script>
<script type="text/javascript">
	$(function() {

		$('#bb').cslider({
			autoplay : true,
			bgincrement : 450
		});

	});
</script>

<script type="application/x-javascript">
	
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 



</script>
<link rel="stylesheet"
	href="makeup/theme/fonts/css/font-awesome.min.css">

</head>
<body>
	<jsp:include page="nav.jsp" />
	
	<div style="height: 100px"></div>

	<div>


		<div class="slider_bg">
			<!-- start slider -->
			<div id="carouselExampleSlidesOnly" class="container carousel slide"
				data-bs-ride="carousel">
				<div id="bb" class="carousel-inner bb text-center">
					<div class="carousel-item active bb">
						<h2 class="hh">Consulaire en ligne</h2>
						<p class="pp">
							<span>Faire une demande de carte consulaire<span
								class="hide_text"> de la Guinée via internet</span>
							</span>
						</p>
					</div>
					<div class="carousel-item bb">
						<h2 class="hh" style="color: yellow;">Consulaire en ligne</h2>
						<p class="pp">
							<span>Faire une demande de renouvellement de la carte
								consulaire<span class="hide_text"> de la Guinée via
									internet</span>
							</span>
						</p>
					</div>
					<div class="carousel-item bb">
						<h2 class="hh" style="color: green">Consulaire en ligne</h2>
						<p class="pp">
							<span>Faire une demande de carte consulaire<span
								class="hide_text"> de la Guinée via internet</span>
							</span>
						</p>
					</div>
				</div>
			</div>

		</div>
	</div>
	<!-- end slider -->
	<div class="main_bg">
		<!-- start main -->
		<div class="container">
			<div class="main row">
				<div class="col-md-3 images_1_of_4 text-center">
					<span class="bg"><i class="fa fa-globe"></i></span>
					<h4 class="aaa">
						<a href="LogIn.jsp">Nouvelle Demande</a>
					</h4>
					<p class="para">Lorsque nous n'avez pas de carte consulaire
						faites une demande, vous pouvez créer un compte puis faire la
						demande en ligne.</p>
					<a href="contact.jsp" class="fa-btn btn-1 btn-1e">Contact us </a>
				</div>
				<div class="col-md-3 images_1_of_4 bg1 text-center">
					<span class="bg"><i class="fa fa-laptop"></i></span>
					<h4 class="aaa">
						<a href="LogIn.jsp">Renouvellement</a>
					</h4>
					<p class="para">Lorsque vous avez une carte consulaire dont la
						date est limite est depassée, vous pouvez créer un compte puis
						faire la demande en ligne.</p>
					<a href="contact.jsp" class="fa-btn btn-1 btn-1e">Contact us </a>
				</div>
				<div class="col-md-3 images_1_of_4 bg1 text-center">
					<span class="bg"><i class="fa fa-cog"></i></span>
					<h4 class="aaa">
						<a href="LogIn.jsp">Informations</a>
					</h4>
					<p class="para">Pour la demande ou il renouvellement il scanner
						une photo, une pièce d'identité de la Guinée et le reçu du
						paiement de 5000CFA à la banque.</p>
					<a href="contact.jsp" class="fa-btn btn-1 btn-1e">Contact us </a>
				</div>
				<div class="col-md-3 images_1_of_4 bg1 text-center">
					<span class="bg"><i class="fa fa-shield"></i> </span>
					<h4 class="aaa">
						<a href="LogIn.jsp">Recuperation</a>
					</h4>
					<p class="para">Pour la récuperation, il faudra aller à
						l'ambassade de Guinée à Dakar Car on a besoin de votre empreinte
						et signature pour finaliser la carte</p>
					<a href="contact.jsp" class="fa-btn btn-1 btn-1e">Contact us </a>
				</div>
			</div>
		</div>
	</div>
	<!-- end main -->
	<div class="main_btm">
		<!-- start main_btm -->
		<div class="container">
			<div class="main row">
				<div class="col-md-6 content_left">
					<img src="makeup/theme/images/télécharger.jpg" alt=""
						class="img-responsive" style="margin-left: 100px">
				</div>
				<div class="col-md-6 content_right">
					<h4>
						La demande de carte<br> <span>et son renouvellement </span>
					</h4>
					<p class="para">
						De la carte consualire est un projet scolaire le Licence
						Professionnel Télécommunications <br> et Informatique 3ème
						Année, spécialité Dévéloppement des Applications Rparties,
						réaliser par Kadiatou Aliou Diallo .
					</p>
					<a href="contact.jsp" class="fa-btn btn-1 btn-1e">Contact us </a>
				</div>
			</div>

		</div>
	</div>

	<jsp:include page="footer.jsp" />
</body>
</html>