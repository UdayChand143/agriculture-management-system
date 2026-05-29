<%@page import="java.sql.*"%>
<%@page import="com.vcube.utility.DBConnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
Connection con = new DBConnection().getConnection();

PreparedStatement ps = con.prepareStatement("SELECT * FROM crops");
ResultSet rs = ps.executeQuery();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Buy Crop</title>

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
    background:linear-gradient(135deg,#36d1dc,#5b86e5);
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
    font-size:65px;
    margin-bottom:50px;
    font-weight:bold;
    text-shadow:3px 3px 15px rgba(0,0,0,0.3);
}

.table-box{
    background:white;
    border-radius:22px;
    overflow:hidden;
    box-shadow:0px 10px 30px rgba(0,0,0,0.25);
}

table{
    width:100%;
    border-collapse:collapse;
}

th{
    background:#43b049;
    color:white;
    padding:28px;
    font-size:28px;
}

td{
    text-align:center;
    padding:35px;
    font-size:22px;
    border-bottom:1px solid #ddd;
}

tr:hover{
    background:#f7f7f7;
    transition:0.3s;
}

.crop-name{
    font-weight:bold;
    color:#222;
}

.crop-type{
    color:#555;
}

.quantity{
    color:#008037;
    font-weight:bold;
}

.price{
    color:#e63946;
    font-weight:bold;
}

.buy-btn{
    background:#28a745;
    color:white;
    padding:14px 30px;
    border-radius:12px;
    text-decoration:none;
    font-size:20px;
    font-weight:bold;
    transition:0.3s;
    display:inline-block;
}

.buy-btn:hover{
    background:#1d7c32;
    transform:scale(1.06);
}

/* Back Button */

.back-container{
    width:100%;
    display:flex;
    justify-content:center;
    margin-top:35px;
}

.back-btn{
    background:white;
    color:#333;
    padding:15px 40px;
    border-radius:12px;
    text-decoration:none;
    font-size:22px;
    font-weight:bold;
    box-shadow:0px 5px 15px rgba(0,0,0,0.2);
    transition:0.3s;
}

.back-btn:hover{
    background:#f1f1f1;
    transform:scale(1.05);
    color:black;
}

/* Responsive */

@media(max-width:768px){

.heading{
    font-size:40px;
}

th,td{
    padding:15px;
    font-size:16px;
}

.buy-btn{
    padding:10px 18px;
    font-size:15px;
}

.back-btn{
    padding:10px 20px;
    font-size:16px;
}

}

</style>

</head>

<body>

<div class="container">

    <h1 class="heading">
        <i class="fa-solid fa-seedling"></i>
        Available Crops
    </h1>

    <div class="table-box">

        <table>

            <tr>
                <th>Crop Name</th>
                <th>Crop Type</th>
                <th>Quantity</th>
                <th>Price</th>
                <th>Action</th>
            </tr>

            <%
            while(rs.next()){
            %>

            <tr>

                <td class="crop-name">
                    <%=rs.getString("crop_name")%>
                </td>

                <td class="crop-type">
                    <%=rs.getString("crop_type")%>
                </td>

                <td class="quantity">
                    <%=rs.getInt("quantity")%> Kg
                </td>

                <td class="price">
                    Rs.<%=rs.getInt("price")%>/Kg
                </td>

                <td>

                    <a class="buy-btn"
                    href="cropDetails.jsp?id=<%=rs.getInt("crop_id")%>">

                    <i class="fa-solid fa-cart-shopping"></i>
                    Buy

                    </a>

                </td>

            </tr>

            <%
            }
            %>

        </table>

    </div>

    <!-- Back Button -->

    <div class="back-container">

        <a href="farmerhome.jsp" class="back-btn">
            <i class="fa-solid fa-arrow-left"></i>
            Back
        </a>

    </div>

</div>

</body>
</html>