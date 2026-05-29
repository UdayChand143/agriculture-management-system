<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Navigation Bar</title>

<!-- Bootstrap 4 -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

<style>

/* Navbar Background */
.navbar {
	background: linear-gradient(to right, #0f2027, #203a43, #2c5364);
}

/* Brand */
.navbar-brand {
	font-size: 20px;
	font-weight: bold;
	color: #ffcc80 !important;
}

/* Links */
.nav-link {
	color: #ffffff !important;
	font-weight: 500;
	margin-right: 8px;
	border-radius: 6px;
	padding: 6px 12px;
}

.nav-link:hover {
	background-color: #ff9800;
	color: #000 !important;
	transition: 0.3s;
}

/* Active link */
.nav-item .active {
	background-color: #ff9800;
	color: #000 !important;
}

</style>

</head>

<body>

<!-- 🌾 Agriculture System Navbar -->

<nav class="navbar navbar-expand-lg navbar-dark shadow">

	<div class="container">

		<!-- Brand -->

		<a class="navbar-brand" href="index.jsp">
			🌾 Agriculture System
		</a>

		<!-- Mobile Toggle -->

		<button class="navbar-toggler" type="button"
			data-toggle="collapse" data-target="#navbarNav">

			<span class="navbar-toggler-icon"></span>

		</button>

		<!-- Menu -->

		<div class="collapse navbar-collapse" id="navbarNav">

			<ul class="navbar-nav ml-auto">

				<li class="nav-item">

					<a class="nav-link active" href="index.jsp">

						<i class="fas fa-home"></i> Home

					</a>

				</li>

				<li class="nav-item">

					<a class="nav-link" href="contact.jsp">

						<i class="fas fa-phone"></i> Contact

					</a>

				</li>

				<li class="nav-item">

					<a class="nav-link" href="services.jsp">

						<i class="fas fa-cogs"></i> Services

					</a>

				</li>

				<li class="nav-item">

					<a class="nav-link" href="index.jsp">

						<i class="fas fa-user-plus"></i> Register

					</a>

				</li>

				<li class="nav-item">

					<a class="nav-link" href="login.jsp">

						<i class="fas fa-sign-in-alt"></i> Login

					</a>

				</li>

			</ul>

		</div>

	</div>

</nav>

</body>
</html>