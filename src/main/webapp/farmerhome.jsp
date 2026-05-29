<%@ page import="com.model.Farmer" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
    if(session == null || session.getAttribute("farmer") == null){
        response.sendRedirect("login.jsp");
        return;
    }

    Farmer farmer = (Farmer) session.getAttribute("farmer");

    String farmerName = farmer.getFullname();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Farmer Home</title>

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Segoe UI',sans-serif;
}

body{
    background:#eef5f9;
    overflow-x:hidden;
}

/* Navbar spacing */
.main-container{
    padding:25px;
}

/* Welcome Banner */

.welcome-box{
    background:linear-gradient(135deg,#11998e,#38ef7d);
    padding:40px;
    border-radius:25px;
    color:white;
    margin-bottom:30px;
    box-shadow:0 10px 30px rgba(0,0,0,0.15);
    animation:fadeDown 1s ease;
}

.welcome-box h1{
    font-size:45px;
    margin-bottom:10px;
}

.welcome-box p{
    font-size:20px;
    opacity:0.9;
}

/* Cards */

.cards{
    display:grid;
    grid-template-columns:repeat(auto-fit,minmax(240px,1fr));
    gap:25px;
    margin-bottom:35px;
}

.card{
    background:white;
    padding:35px 20px;
    border-radius:22px;
    text-align:center;
    box-shadow:0 8px 25px rgba(0,0,0,0.08);
    transition:0.4s;
    position:relative;
    overflow:hidden;
}

.card::before{
    content:'';
    position:absolute;
    width:100%;
    height:6px;
    top:0;
    left:0;
    background:linear-gradient(to right,#00c6ff,#0072ff);
}

.card:hover{
    transform:translateY(-8px);
    box-shadow:0 12px 30px rgba(0,0,0,0.15);
}

.card i{
    font-size:42px;
    margin-bottom:15px;
    color:#0072ff;
}

.card h2{
    font-size:38px;
    color:#222;
    margin-bottom:10px;
}

.card p{
    color:#666;
    font-size:18px;
}

/* Charts */

.charts{
    display:grid;
    grid-template-columns:repeat(auto-fit,minmax(400px,1fr));
    gap:25px;
}

.chart-box{
    background:white;
    padding:25px;
    border-radius:22px;
    box-shadow:0 8px 25px rgba(0,0,0,0.08);
    transition:0.4s;
}

.chart-box:hover{
    transform:translateY(-5px);
}

.chart-box h3{
    margin-bottom:20px;
    font-size:28px;
    color:#222;
}

/* Animation */

@keyframes fadeDown{
    from{
        opacity:0;
        transform:translateY(-40px);
    }
    to{
        opacity:1;
        transform:translateY(0);
    }
}

/* Responsive */

@media(max-width:768px){

.welcome-box h1{
    font-size:32px;
}

.welcome-box p{
    font-size:16px;
}

.chart-box{
    padding:15px;
}

}

</style>

</head>

<body>

<!-- Navbar -->
<%@ include file="farmernav.jsp" %>

<div class="main-container">

    <!-- Welcome Section -->

    <div class="welcome-box">

        <h1>
            👋 Welcome, <%= farmerName %>
        </h1>

        <p>
            Manage your crops, earnings, orders and farming activities easily.
        </p>

    </div>

    <!-- Cards -->

    <div class="cards">

        <div class="card">
            <i class="fa-solid fa-seedling"></i>
            <h2>5</h2>
            <p>Total Crops</p>
        </div>

        <div class="card">
            <i class="fa-solid fa-indian-rupee-sign"></i>
            <h2>₹45K</h2>
            <p>Total Earnings</p>
        </div>

        <div class="card">
            <i class="fa-solid fa-cart-shopping"></i>
            <h2>3</h2>
            <p>Orders</p>
        </div>

        <div class="card">
            <i class="fa-solid fa-users"></i>
            <h2>12</h2>
            <p>Buyers</p>
        </div>

    </div>

    <!-- Charts -->

    <div class="charts">

        <!-- Bar Chart -->

        <div class="chart-box">

            <h3>Crop Quantity</h3>

            <canvas id="barChart"></canvas>

        </div>

        <!-- Pie Chart -->

        <div class="chart-box">

            <h3>Crop Distribution</h3>

            <canvas id="pieChart"></canvas>

        </div>

    </div>

</div>

<script>

const barCtx = document.getElementById('barChart');

new Chart(barCtx, {
    type: 'bar',
    data: {
        labels: ['Rice','Wheat','Maize','Cotton'],
        datasets: [{
            label: 'Quintals',
            data: [50,30,20,15],
            backgroundColor: [
                '#4CAF50',
                '#2196F3',
                '#FFC107',
                '#9C27B0'
            ],
            borderRadius:10
        }]
    },
    options:{
        responsive:true,
        plugins:{
            legend:{
                labels:{
                    font:{
                        size:16
                    }
                }
            }
        }
    }
});


const pieCtx = document.getElementById('pieChart');

new Chart(pieCtx, {
    type: 'doughnut',
    data: {
        labels: ['Rice','Wheat','Maize','Cotton'],
        datasets: [{
            data: [40,25,20,15],
            backgroundColor: [
                '#66BB6A',
                '#42A5F5',
                '#FFCA28',
                '#AB47BC'
            ]
        }]
    },
    options:{
        responsive:true,
        plugins:{
            legend:{
                position:'top',
                labels:{
                    font:{
                        size:16
                    }
                }
            }
        }
    }
});

</script>

</body>
</html>