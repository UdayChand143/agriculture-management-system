<!DOCTYPE html>
<html>
<head>
<title>Farmer Dashboard</title>

<style>
body {
	margin: 0;
	font-family: "Segoe UI", Arial, sans-serif;
	background-color: #e0f7fa;
}

.navbar {
	background: linear-gradient(to right, #008080, #20c997);
	padding: 12px 20px;
	display: flex;
	align-items: center;
}

.navbar a {
	color: #ffffff;
	text-decoration: none;
	font-size: 16px;
	font-weight: 500;
	padding: 10px 18px;
	margin-right: 10px;
	border-radius: 6px;
	transition: background 0.3s ease, color 0.3s ease;
}

.navbar a:hover {
	background-color: #ffffff;
	color: #008080;
}

.navbar a.active {
	background-color: #004d4d;
	color: #ffffff;
	font-weight: bold;
}
</style>
</head>

<body>

<div class="navbar">
    <a href="farmerhome.jsp" class="active"> Farmer Home</a>
    <a href="addCrop.jsp"> Add Crop</a>
    <a href="buyCrop.jsp">Buy Crop</a>
    <a href="viewCrop.jsp"> View Crop</a>
    <a href="LogoutServlet" style="color:red; font-weight:bold;"> Logout</a>
</div>


</body>
</html>