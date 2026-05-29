<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact Us</title>

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
    height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
    background:linear-gradient(135deg,#36d1dc,#5b86e5);
}

.container{
    width:500px;
    background:rgba(255,255,255,0.15);
    backdrop-filter:blur(10px);
    border-radius:20px;
    padding:50px;
    color:white;
    text-align:center;
    box-shadow:0 8px 32px rgba(0,0,0,0.3);
}

.container h1{
    font-size:45px;
    margin-bottom:35px;
}

.info{
    margin:25px 0;
    font-size:24px;
}

.info i{
    color:#ffd54f;
    margin-right:12px;
}

.btn{
    display:inline-block;
    margin-top:30px;
    padding:12px 30px;
    background:#ff9800;
    color:white;
    text-decoration:none;
    border-radius:10px;
    font-size:20px;
    transition:0.3s;
}

.btn:hover{
    background:#f57c00;
    transform:scale(1.05);
}

</style>

</head>
<body>

<div class="container">

    <h1>24/7 Contact Us</h1>

    <div class="info">
        <i class="fas fa-envelope"></i>
        agriculture@gmail.com
    </div>

    <div class="info">
        <i class="fas fa-phone"></i>
        +91 9876543210
    </div>

    <div class="info">
        <i class="fas fa-location-dot"></i>
        Hyderabad, India
    </div>

    <a href="index.jsp" class="btn">
        ⬅ Back Home
    </a>

</div>

</body>
</html>