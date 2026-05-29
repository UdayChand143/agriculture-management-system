<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Services</title>

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
    min-height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
    background:linear-gradient(135deg,#ff9966,#ff5e62);
    padding:40px;
}

.container{
    width:700px;
    background:white;
    border-radius:20px;
    padding:50px;
    box-shadow:0 10px 35px rgba(0,0,0,0.3);
}

.container h1{
    text-align:center;
    margin-bottom:40px;
    font-size:48px;
    color:#6a11cb;
}

.service{
    background:#f5f5f5;
    margin:20px 0;
    padding:20px;
    border-radius:15px;
    font-size:24px;
    transition:0.3s;
    display:flex;
    align-items:center;
}

.service:hover{
    transform:translateX(10px);
    background:#6a11cb;
    color:white;
}

.service i{
    margin-right:20px;
    font-size:28px;
    color:#ff9800;
}

.back{
    display:block;
    width:220px;
    margin:40px auto 0;
    text-align:center;
    padding:14px;
    background:#6a11cb;
    color:white;
    text-decoration:none;
    border-radius:10px;
    font-size:22px;
    transition:0.3s;
}

.back:hover{
    background:#2575fc;
}

</style>

</head>
<body>

<div class="container">

    <h1>24/7 Our Services</h1>

    <div class="service">
        <i class="fas fa-cart-shopping"></i>
        Crop Buying
    </div>

    <div class="service">
        <i class="fas fa-seedling"></i>
        Crop Selling
    </div>

    <div class="service">
        <i class="fas fa-user-plus"></i>
        Farmer Registration
    </div>

    <div class="service">
        <i class="fas fa-headset"></i>
        Agriculture Support
    </div>

    <div class="service">
        <i class="fas fa-leaf"></i>
        Organic Farming Guidance
    </div>

    <a href="index.jsp" class="back">
        👈Back Home
    </a>

</div>

</body>
</html>