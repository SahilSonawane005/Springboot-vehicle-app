<%@page import="com.boot.Model.Vehicle"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Vehicle Info</title>
<style>
    /* Global reset & font */
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
    }

    body {
        min-height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
        background: linear-gradient(135deg, #1e3c72, #2a5298);
        color: #fff;
    }

    .vehicle-info {
        text-align: center;
        padding: 2.5rem 3.5rem;
        backdrop-filter: blur(12px);
        background: rgba(255, 255, 255, 0.08);
        border-radius: 20px;
        box-shadow: 0 10px 30px rgba(0, 0, 0, 0.3);
        animation: fadeIn 0.8s ease-in-out;
    }

    .vehicle-info h1 {
        font-size: 2rem;
        margin-bottom: 1.5rem;
        font-weight: 600;
        letter-spacing: 1px;
        border-bottom: 2px solid rgba(255, 255, 255, 0.3);
        padding-bottom: 0.5rem;
    }

    .vehicle-info h3 {
        font-size: 1.2rem;
        font-weight: 400;
        margin: 0.8rem 0;
        opacity: 0.9;
    }

    @keyframes fadeIn {
        from {
            opacity: 0;
            transform: translateY(20px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }
</style>
</head>
<body>
<%
    Vehicle v = (Vehicle) request.getAttribute("data");
%>

<div class="vehicle-info">
    <h1>Vehicle Details</h1>
    <h3>🚗 Vehicle ID: <%= v.getVid() %> </h3>
    <h3>📛 Vehicle Name: <%= v.getVname() %> </h3>
    <h3>💰 Vehicle Price: ₹<%= v.getVprice() %> </h3>
</div>

</body>
</html>
