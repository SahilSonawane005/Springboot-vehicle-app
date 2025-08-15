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
        background: linear-gradient(135deg, #ff6b6b, #f94d6a, #6a67ce);
        background-size: 300% 300%;
        animation: gradientBG 8s ease infinite;
        color: #fdfdfd;
        min-height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        text-align: center;
    }

    /* Gradient Animation */
    @keyframes gradientBG {
        0% { background-position: 0% 50%; }
        50% { background-position: 100% 50%; }
        100% { background-position: 0% 50%; }
    }

    /* Container */
    .container {
        padding: 40px 20px;
    }

    /* Heading */
    h2 {
        font-size: 2.5rem;
        font-weight: 700;
        margin-bottom: 50px;
        letter-spacing: 1px;
        text-shadow: 0 4px 10px rgba(0,0,0,0.2);
        animation: fadeInDown 0.8s ease forwards;
    }

    /* Buttons */
    a.btn {
        display: inline-block;
        width: 260px;
        padding: 14px 0;
        margin: 14px 0;
        border-radius: 50px;
        font-size: 1.05rem;
        font-weight: 600;
        text-decoration: none;
        position: relative;
        overflow: hidden;
        color: #fff;
        transition: all 0.35s ease;
        box-shadow: 0 4px 15px rgba(0,0,0,0.15);
    }

    /* Button Colors */
    .btn-success { background: linear-gradient(90deg, #34d399, #059669); }
    .btn-info { background: linear-gradient(90deg, #38bdf8, #0ea5e9); }
    .btn-primary { background: linear-gradient(90deg, #818cf8, #4f46e5); }
    .btn-warning { background: linear-gradient(90deg, #fbbf24, #f59e0b); color: #1e293b; }
    .btn-danger { background: linear-gradient(90deg, #f87171, #dc2626); }

    /* Hover Effects */
    a.btn:hover {
        transform: translateY(-3px) scale(1.03);
        box-shadow: 0 8px 20px rgba(0,0,0,0.25);
    }

    /* Animations */
    @keyframes fadeInDown {
        from { opacity: 0; transform: translateY(-20px); }
        to { opacity: 1; transform: translateY(0); }
    }
</style>

</head>
<body>
    <div class="container">
        <h2>Vehicle Management System</h2>
        <a href="/vehicle/create" class="btn btn-success">Add Vehicle Info</a><br>
        <a href="/vehicle/viewOne" class="btn btn-info">View Vehicle Info by ID</a><br>
        <a href="/vehicle/viewAll" class="btn btn-primary">View All Vehicles Info</a><br>
        <a href="/vehicle/update" class="btn btn-warning">Update Vehicle Info</a><br>
        <a href="/vehicle/delete" class="btn btn-danger">Delete Vehicle Info</a>
    </div>
</body>

</body>
</html>