<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Vehicle</title>
<style>
    body {
        margin: 0;
        font-family: 'Segoe UI', Tahoma, sans-serif;
        background: linear-gradient(135deg, #4facfe, #00f2fe);
        color: #fff;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    .form-container {
        background: rgba(255, 255, 255, 0.1);
        padding: 40px;
        border-radius: 15px;
        backdrop-filter: blur(10px);
        box-shadow: 0px 8px 25px rgba(0, 0, 0, 0.3);
        width: 350px;
        animation: fadeIn 1s ease-in-out;
    }

    h2 {
        text-align: center;
        font-size: 26px;
        margin-bottom: 20px;
        letter-spacing: 1px;
        font-weight: bold;
    }

    label {
        display: block;
        margin-bottom: 5px;
        font-size: 14px;
        font-weight: 500;
    }

    input {
        width: 100%;
        padding: 10px;
        border-radius: 8px;
        border: none;
        margin-bottom: 15px;
        font-size: 14px;
        outline: none;
        background: rgba(255, 255, 255, 0.8);
        color: #333;
        transition: 0.3s;
    }

    input:focus {
        background: white;
        box-shadow: 0 0 8px #00f2fe;
    }

    button {
        width: 100%;
        padding: 12px;
        border: none;
        background: #ff4b2b;
        color: white;
        font-size: 15px;
        border-radius: 8px;
        cursor: pointer;
        font-weight: bold;
        transition: background 0.3s ease;
    }

    button:hover {
        background: #ff416c;
    }

    @keyframes fadeIn {
        from { opacity: 0; transform: translateY(20px); }
        to { opacity: 1; transform: translateY(0); }
    }
</style>
</head>
<body>

<div class="form-container">
    <h2>Update Vehicle</h2>
    <form action="/update">
        <label>Vehicle ID:</label>
        <input type="number" name="vid" required>

        <label>Vehicle Name:</label>
        <input type="text" name="vname" required>

        <label>Vehicle Price:</label>
        <input type="number" step="0.01" name="vprice" required>

        <button type="submit">Update</button>
    </form>
</div>

</body>
</html>
