<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Farmer Login</title>

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
    height:100vh;
    background:linear-gradient(135deg,#36d1dc,#5b86e5);
    display:flex;
    justify-content:center;
    align-items:center;
    overflow:hidden;
}

/* Animated circles */

.circle{
    position:absolute;
    border-radius:50%;
    background:rgba(255,255,255,0.15);
    animation:float 6s infinite ease-in-out;
}

.circle:nth-child(1){
    width:180px;
    height:180px;
    top:10%;
    left:8%;
}

.circle:nth-child(2){
    width:250px;
    height:250px;
    bottom:10%;
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

/* Login Card */

.login-box{
    width:420px;
    background:white;
    padding:45px;
    border-radius:25px;
    box-shadow:0 10px 40px rgba(0,0,0,0.2);
    animation:slideUp 1s ease;
    position:relative;
    z-index:2;
}

@keyframes slideUp{
    from{
        opacity:0;
        transform:translateY(50px);
    }
    to{
        opacity:1;
        transform:translateY(0);
    }
}

.login-box h1{
    text-align:center;
    margin-bottom:35px;
    color:#333;
    font-size:40px;
}

.input-box{
    position:relative;
    margin-bottom:25px;
}

.input-box i{
    position:absolute;
    top:18px;
    left:15px;
    color:#5b86e5;
    font-size:18px;
}

.input-box input{
    width:100%;
    padding:15px 15px 15px 48px;
    border:2px solid #ddd;
    border-radius:12px;
    font-size:17px;
    transition:0.3s;
}

.input-box input:focus{
    border-color:#36d1dc;
    outline:none;
    box-shadow:0 0 10px rgba(54,209,220,0.4);
}

.login-btn{
    width:100%;
    padding:15px;
    border:none;
    border-radius:12px;
    background:linear-gradient(to right,#36d1dc,#5b86e5);
    color:white;
    font-size:20px;
    font-weight:bold;
    cursor:pointer;
    transition:0.3s;
}

.login-btn:hover{
    transform:scale(1.03);
    box-shadow:0 8px 20px rgba(0,0,0,0.2);
}

.bottom-text{
    text-align:center;
    margin-top:20px;
    color:#555;
}

.bottom-text a{
    text-decoration:none;
    color:#5b86e5;
    font-weight:bold;
}

.error{
    color:red;
    text-align:center;
    margin-bottom:15px;
    font-weight:bold;
}

</style>

</head>

<body>

<div class="circle"></div>
<div class="circle"></div>

<div class="login-box">

    <h1>
        <i class="fa-solid fa-leaf"></i>
        Farmer Login
    </h1>

    <% if(request.getAttribute("error") != null){ %>
        <div class="error">
            <%= request.getAttribute("error") %>
        </div>
    <% } %>

    <form action="FarmerLogin" method="post">

        <div class="input-box">
            <i class="fa-solid fa-user"></i>

            <!-- FIXED HERE -->
            <input type="text"
                   name="uname"
                   placeholder="Enter Username"
                   required>
        </div>

        <div class="input-box">
            <i class="fa-solid fa-lock"></i>

            <input type="password"
                   name="password"
                   placeholder="Enter Password"
                   required>
        </div>

        <button type="submit" class="login-btn">
            <i class="fa-solid fa-right-to-bracket"></i>
            Login
        </button>

    </form>

    <div class="bottom-text">
        New Farmer?
        <a href="index.jsp">Register Here</a>
    </div>

</div>

</body>
</html>
