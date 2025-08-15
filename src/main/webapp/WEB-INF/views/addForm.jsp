<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Vehicle</title>

<style>
    /* Reset & Base */
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }
    body {
        font-family: "Inter", sans-serif;
        background: linear-gradient(135deg, #43cea2, #185a9d);
        background-size: 300% 300%;
        animation: gradientBG 8s ease infinite;
        color: #f9fafb;
        min-height: 100vh;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        text-align: left;
    }

    /* Gradient Animation */
    @keyframes gradientBG {
        0% { background-position: 0% 50%; }
        50% { background-position: 100% 50%; }
        100% { background-position: 0% 50%; }
    }

    /* Heading */
    h2 {
        font-size: 2rem;
        font-weight: 700;
        margin-bottom: 30px;
        text-shadow: 0 4px 10px rgba(0,0,0,0.2);
        animation: fadeInDown 0.8s ease forwards;
    }

    /* Form */
    form {
        background: rgba(255, 255, 255, 0.15);
        backdrop-filter: blur(10px);
        padding: 30px 40px;
        border-radius: 12px;
        box-shadow: 0 6px 25px rgba(0,0,0,0.15);
        min-width: 320px;
        animation: fadeInUp 0.8s ease forwards;
    }

    label {
        font-weight: 600;
        font-size: 0.95rem;
        display: block;
        margin-bottom: 6px;
        color: #f9fafb;
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

    /* Button */
    button {
        display: inline-block;
        width: 100%;
        padding: 12px 0;
        border-radius: 8px;
        font-size: 1rem;
        font-weight: 600;
        text-decoration: none;
        border: none;
        background: linear-gradient(90deg, #06b6d4, #3b82f6);
        color: #fff;
        cursor: pointer;
        transition: all 0.3s ease;
    }

    button:hover {
        transform: translateY(-2px);
        box-shadow: 0 8px 18px rgba(0,0,0,0.2);
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

   <h2>Vehicle Form</h2>
    <form action="/add"> 
        <label for="vid">Vehicle ID:</label>
        <input type="number" id="vid" name="vid" required><br><br>

        <label for="vname">Vehicle Name:</label>
        <input type="text" id="vname" name="vname" required><br><br>

        <label for="vprice">Vehicle Price:</label>
        <input type="number" step="0.01" id="vprice" name="vprice" required><br><br>

        <button type="submit">Submit</button>
    </form>

</body>
</html>