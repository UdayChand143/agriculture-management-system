<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%

String name = request.getParameter("name");

String type = request.getParameter("type");

String qty = request.getParameter("qty");

String price = request.getParameter("price");

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Crop Details</title>

<style>

body{
    font-family: Arial;
    margin:0;
    padding:0;
    background: linear-gradient(to right,#ff9966,#ff5e62);
}

.container{
    width:60%;
    margin:auto;
    margin-top:50px;
    background:white;
    padding:40px;
    border-radius:15px;
    box-shadow:0px 0px 10px gray;
}

h1{
    text-align:center;
    color:#6a11cb;
}

.details{
    margin-top:30px;
    line-height:50px;
    font-size:24px;
}

button{
    margin-top:30px;
    padding:12px 30px;
    border:none;
    background:#28a745;
    color:white;
    font-size:18px;
    border-radius:8px;
    cursor:pointer;
}

button:hover{
    background:#218838;
}

</style>

</head>

<body>

<div class="container">

<h1>Crop Full Details</h1>

<div class="details">

<p><b>Crop Name:</b> <%= name %></p>

<p><b>Crop Type:</b> <%= type %></p>

<p><b>Available Quantity:</b> <%= qty %> Kg</p>

<p><b>Price:</b> ₹<%= price %>/Kg</p>

<p><b>Farmer Name:</b> Farmer</p>

<p><b>Location:</b> Hyderabad</p>

<p><b>Description:</b> Fresh organic crop directly from farmer.</p>

</div>

<center>

<button>Buy Now</button>

</center>

</div>

</body>
</html>