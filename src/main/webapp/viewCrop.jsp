<%@page import="java.sql.*"%>
<%@page import="com.model.Farmer"%>
<%@page import="com.vcube.utility.DBConnection"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
Farmer f = (Farmer)session.getAttribute("farmer");

DBConnection db = new DBConnection();
Connection con = db.getConnection();

PreparedStatement ps = con.prepareStatement(
"SELECT * FROM crops WHERE farmer_id=?");

ps.setInt(1, f.getfarmerId());

ResultSet rs = ps.executeQuery();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Crops</title>

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Arial,sans-serif;
}

body{
    background:linear-gradient(135deg,#ff9966,#ff5e62);
    min-height:100vh;
    padding:40px;
}

.container{
    width:95%;
    margin:auto;
}

.heading{
    text-align:center;
    color:white;
    font-size:60px;
    margin-bottom:40px;
    font-weight:bold;
}

.table-box{
    background:white;
    border-radius:20px;
    overflow:hidden;
    box-shadow:0px 8px 25px rgba(0,0,0,0.2);
}

table{
    width:100%;
    border-collapse:collapse;
}

th{
    background:#6a11cb;
    color:white;
    padding:25px;
    font-size:22px;
}

td{
    text-align:center;
    padding:25px;
    font-size:20px;
    border-bottom:1px solid #ddd;
}

tr:hover{
    background:#f5f5f5;
}

.add-btn{
    display:inline-block;
    margin-top:30px;
    background:#6a11cb;
    color:white;
    padding:15px 30px;
    border-radius:10px;
    text-decoration:none;
    font-size:18px;
    font-weight:bold;
}

.add-btn:hover{
    background:#4d0ea8;
}

.btn-box{
    text-align:center;
}

</style>

</head>

<body>

<div class="container">

<h1 class="heading">
<i class="fa-solid fa-leaf"></i>
Crop Details
</h1>

<div class="table-box">

<table>

<tr>
<th>Crop Name</th>
<th>Crop Type</th>
<th>Quantity</th>
<th>Price</th>
</tr>

<%
while(rs.next()){
%>

<tr>

<td>
<%=rs.getString("crop_name")%>
</td>

<td>
<%=rs.getString("crop_type")%>
</td>

<td>
<%=rs.getInt("quantity")%> Kg
</td>

<td>
Rs.<%=rs.getInt("price")%>/Kg
</td>

</tr>

<%
}
%>

</table>

</div>

<div class="btn-box">

<a href="addCrop.jsp" class="add-btn">

<i class="fa-solid fa-plus"></i>
Add New Crop

</a>

</div>

</div>

</body>
</html>