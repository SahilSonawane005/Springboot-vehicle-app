<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Vehicle</title>
<style>
    /* Import Google Font */
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap');

    /* Reset & Base Styling */
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: 'Poppins', sans-serif;
    }

    body {
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        background: linear-gradient(135deg, #4facfe, #00f2fe);
        color: #fff;
    }

    form {
        background: rgba(255, 255, 255, 0.1);
        padding: 30px 40px;
        border-radius: 15px;
        backdrop-filter: blur(10px);
        box-shadow: 0 8px 25px rgba(0, 0, 0, 0.3);
        animation: fadeIn 1s ease-in-out;
        width: 300px;
        text-align: center;
    }

    form label {
        font-weight: 600;
        font-size: 18px;
        display: block;
        margin-bottom: 10px;
    }

    form input[type="number"] {
        width: 100%;
        padding: 12px;
        border: none;
        outline: none;
        border-radius: 8px;
        font-size: 16px;
        margin-bottom: 20px;
        background: rgba(255, 255, 255, 0.2);
        color: white;
    }

    form input[type="number"]::placeholder {
        color: rgba(255, 255, 255, 0.7);
    }

    form button {
        width: 100%;
        padding: 12px;
        border: none;
        border-radius: 8px;
        font-size: 16px;
        font-weight: 600;
        background: #ff6a00;
        color: white;
        cursor: pointer;
        transition: background 0.3s ease, transform 0.2s ease;
    }

    form button:hover {
        background: #ee0979;
        transform: scale(1.05);
    }

    @keyframes fadeIn {
        from {
            opacity: 0;
            transform: translateY(-20px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }
</style>
</head>
<body>

<form action="/viewOne">
    <label>Enter Vehicle ID</label>
    <input type="number" name="vid" placeholder="e.g. 101" required>
    <button type="submit">Search</button>
</form>

</body>
</html>
