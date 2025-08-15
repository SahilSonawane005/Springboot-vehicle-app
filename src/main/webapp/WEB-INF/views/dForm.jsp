<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    /* Reset & Base */
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }
    body {
        font-family: "Inter", sans-serif;
        background: linear-gradient(135deg, #ff9a9e, #fad0c4, #fad0c4);
        background-size: 300% 300%;
        animation: gradientBG 8s ease infinite;
        color: #f9fafb;
        min-height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        padding: 20px;
    }

    /* Gradient Animation */
    @keyframes gradientBG {
        0% { background-position: 0% 50%; }
        50% { background-position: 100% 50%; }
        100% { background-position: 0% 50%; }
    }

    /* Form Container */
    form {
        background: rgba(255, 255, 255, 0.12);
        backdrop-filter: blur(10px);
        padding: 35px 40px;
        border-radius: 12px;
        box-shadow: 0 8px 25px rgba(0,0,0,0.15);
        min-width: 300px;
        animation: fadeInUp 0.8s ease forwards;
        text-align: left;
    }

    h2 {
        font-size: 2rem;
        font-weight: 700;
        margin-bottom: 25px;
        text-align: center;
        text-shadow: 0 4px 10px rgba(0,0,0,0.2);
        color: #fff;
        animation: fadeInDown 0.8s ease forwards;
    }

    label {
        display: block;
        font-weight: 600;
        font-size: 0.95rem;
        margin-bottom: 6px;
        color: #fff;
    }

    input {
        width: 100%;
        padding: 10px 14px;
        margin-bottom: 18px;
        border: none;
        border-radius: 8px;
        outline: none;
        font-size: 0.95rem;
        background-color: rgba(255, 255, 255, 0.85);
        color: #1f2937;
        transition: all 0.25s ease;
    }

    input:focus {
        background-color: #fff;
        box-shadow: 0 0 0 3px rgba(255,255,255,0.4);
    }

    button {
        display: inline-block;
        width: 100%;
        padding: 12px 0;
        border-radius: 8px;
        font-size: 1rem;
        font-weight: 600;
        text-decoration: none;
        border: none;
        background: linear-gradient(90deg, #f43f5e, #e11d48);
        color: #fff;
        cursor: pointer;
        transition: all 0.3s ease;
    }

    button:hover {
        transform: translateY(-2px);
        box-shadow: 0 8px 18px rgba(0,0,0,0.25);
    }

    /* Animations */
    @keyframes fadeInDown {
        from { opacity: 0; transform: translateY(-20px); }
        to { opacity: 1; transform: translateY(0); }
    }
    @keyframes fadeInUp {
        from { opacity: 0; transform: translateY(20px); }
        to { opacity: 1; transform: translateY(0); }
    }
</style>

</head>
<body>


<center>
        <h2>Delete Vehicle</h2>
        <form action="/del">
            <label>Vehicle ID:</label>
            <input type="number" name="vid" required><br><br>

            <button type="submit">Delete</button>
        </form>
    </center>
</body>
</html>