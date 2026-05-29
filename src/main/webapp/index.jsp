<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Farmer Registration</title>

<!-- Bootstrap -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
	rel="stylesheet">

<style>

*{
	margin:0;
	padding:0;
	box-sizing:border-box;
	font-family:'Poppins',sans-serif;
}

/* BODY */

body{
	background:linear-gradient(135deg,#74ebd5,#9face6);
	min-height:100vh;
	overflow-x:hidden;
	position:relative;
}

/* NAVBAR */

.navbar{
	background:linear-gradient(to right,#0f2027,#203a43,#2c5364) !important;
	padding:15px 35px;
	box-shadow:0 4px 18px rgba(0,0,0,0.3);
	animation:slideDown 1s ease;
}

@keyframes slideDown{
	from{
		opacity:0;
		transform:translateY(-50px);
	}
	to{
		opacity:1;
		transform:translateY(0);
	}
}

.navbar-brand{
	font-size:22px;
	font-weight:700;
	color:#ffcc70 !important;
	transition:0.3s;
}

.navbar-brand:hover{
	transform:scale(1.05);
}

.nav-link{
	color:white !important;
	font-size:18px;
	font-weight:600;
	margin-left:10px;
	padding:10px 18px !important;
	border-radius:12px;
	transition:0.3s;
}

.nav-link:hover{
	background:#ff9800;
	color:black !important;
	transform:translateY(-2px);
}

.active{
	background:#ff9800;
	color:black !important;
}

/* FLOATING CIRCLES */

.circle{
	position:absolute;
	border-radius:50%;
	background:rgba(255,255,255,0.15);
	animation:float 6s infinite ease-in-out;
	z-index:0;
}

.circle:nth-child(1){
	width:250px;
	height:250px;
	top:15%;
	left:5%;
}

.circle:nth-child(2){
	width:320px;
	height:320px;
	bottom:5%;
	right:5%;
	animation-delay:2s;
}

@keyframes float{
	0%{
		transform:translateY(0px);
	}
	50%{
		transform:translateY(-25px);
	}
	100%{
		transform:translateY(0px);
	}
}

/* CARD */

.card{
	border:none;
	border-radius:25px;
	overflow:hidden;
	background:rgba(255,255,255,0.97);
	box-shadow:0 12px 35px rgba(0,0,0,0.2);
	animation:fadeUp 1s ease;
	position:relative;
	z-index:2;
	backdrop-filter:blur(10px);
}

@keyframes fadeUp{
	from{
		opacity:0;
		transform:translateY(40px);
	}
	to{
		opacity:1;
		transform:translateY(0);
	}
}

/* HEADER */

.card-header{
	background:linear-gradient(to right,#667eea,#764ba2);
	color:white;
	font-size:30px;
	font-weight:bold;
	text-align:center;
	padding:22px;
	letter-spacing:1px;
}

/* BODY */

.card-body{
	padding:35px;
}

/* LABELS */

.form-group label{
	font-size:16px;
	font-weight:600;
	color:#333;
	margin-bottom:10px;
}

/* ICON */

.icon{
	color:#667eea;
	margin-right:8px;
}

/* INPUTS */

.form-control{
	border-radius:14px;
	padding:14px;
	border:2px solid #ddd;
	font-size:16px;
	transition:0.3s;
}

.form-control:focus{
	border-color:#667eea;
	box-shadow:0 0 12px rgba(102,126,234,0.4);
	transform:scale(1.01);
}

/* BUTTON */

.btn-primary{
	background:linear-gradient(to right,#667eea,#764ba2);
	border:none;
	border-radius:35px;
	padding:12px 45px;
	font-size:18px;
	font-weight:600;
	transition:0.4s;
	box-shadow:0 6px 15px rgba(0,0,0,0.2);
}

.btn-primary:hover{
	transform:translateY(-3px) scale(1.05);
	background:linear-gradient(to right,#764ba2,#667eea);
}

/* RESPONSIVE */

@media(max-width:768px){

.navbar-brand{
	font-size:18px;
}

.nav-link{
	margin-top:10px;
}

.card-header{
	font-size:24px;
}

}

</style>

</head>

<body>

<!-- Floating Background -->
<div class="circle"></div>
<div class="circle"></div>

<!-- Navbar -->
<%@ include file="nav.jsp"%>

<div class="container mt-5 mb-5">

	<div class="row justify-content-center">

		<div class="col-md-6">

			<div class="card">

				<div class="card-header">
					👨‍🌾 Farmer Registration
				</div>

				<div class="card-body">

					<form method="post" action="FarmerRegister">

						<!-- Full Name -->
						<div class="form-group">

							<label>
								<i class="fas fa-user icon"></i>
								Full Name
							</label>

							<input type="text"
								name="name"
								class="form-control"
								placeholder="Enter your full name"
								required>

						</div>

						<!-- Mobile -->

						<div class="form-group">

							<label>
								<i class="fas fa-phone icon"></i>
								Mobile Number
							</label>

							<input type="tel"
								name="mobile"
								class="form-control"
								placeholder="Enter 10-digit mobile number"
								pattern="[0-9]{10}"
								required>

						</div>

						<!-- Username -->

						<div class="form-group">

							<label>
								<i class="fas fa-user-circle icon"></i>
								Username
							</label>

							<input type="text"
								name="uname"
								class="form-control"
								placeholder="Choose a username"
								required>

						</div>

						<!-- Password -->

						<div class="form-group">

							<label>
								<i class="fas fa-lock icon"></i>
								Password
							</label>

							<input type="password"
								name="password"
								class="form-control"
								placeholder="Create a strong password"
								required>

						</div>

						<!-- Button -->

						<div class="text-center mt-4">

							<button type="submit"
								class="btn btn-primary">

								<i class="fas fa-user-plus"></i>
								Register

							</button>

						</div>

					</form>

				</div>

			</div>

		</div>

	</div>

</div>

</body>
</html>