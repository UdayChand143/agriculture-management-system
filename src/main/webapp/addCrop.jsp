<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Crop</title>

<style>
    body {
        margin: 0;
        padding: 0;
        font-family: "Segoe UI", Arial, sans-serif;
        background: linear-gradient(to right, #8e2de2, #ff6a91); /* purple-pink */
        min-height: 100vh;
    }

    .container {
        width: 450px;
        margin: 80px auto;
        background-color: #ffffff; /* white card */
        padding: 30px;
        border-radius: 15px;
        box-shadow: 0 8px 25px rgba(0,0,0,0.25);
    }

    h2 {
        text-align: center;
        color: #6a1b9a; /* deep purple */
        margin-bottom: 25px;
        font-weight: bold;
    }

    label {
        font-weight: bold;
        color: #444;
        margin-top: 12px;
        display: block;
    }

    input {
        width: 100%;
        padding: 12px;
        margin-top: 6px;
        border-radius: 8px;
        border: 1px solid #ccc;
        font-size: 14px;
    }

    input:focus {
        border-color: #6a1b9a;
        outline: none;
        box-shadow: 0 0 6px #6a1b9a;
    }

    button {
        width: 100%;
        padding: 14px;
        margin-top: 20px;
        background: linear-gradient(to right, #8e2de2, #ff6a91);
        color: white;
        font-size: 16px;
        font-weight: bold;
        border: none;
        border-radius: 12px;
        cursor: pointer;
        transition: 0.3s ease;
    }

    button:hover {
        transform: scale(1.05);
        background: linear-gradient(to right, #ff6a91, #8e2de2);
    }
</style>
</head>

<body>

    <!-- Farmer Navbar -->
    <%@ include file="farmernav.jsp" %>

    <div class="container">
        <h2>🌱 Add Crop Details</h2>

        <form action="AddCrop" method="post">
            <label>🌾 Crop Name</label>
            <input type="text" name="crop_name" placeholder="Enter crop name" required>

            <label>🍃 Crop Type</label>
            <input type="text" name="crop_type" placeholder="Ex: Vegetables, Grains" required>

            <label>⚖ Quantity (Kg)</label>
            <input type="number" name="quantity" placeholder="Enter quantity" required>

            <label>💰 Price (per Kg)</label>
            <input type="number" name="price" placeholder="Enter price" required>

            <button type="submit">➕ Add Crop</button>
        </form>
    </div>

</body>
</html>