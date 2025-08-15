<%@page import="com.boot.Model.Vehicle"%>
<%@page import="java.util.List"%>
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
        background: linear-gradient(135deg, #ff7eb3, #ff758c, #ff9770);
        background-size: 300% 300%;
        animation: gradientBG 8s ease infinite;
        color: #f9fafb;
        min-height: 100vh;
        display: flex;
        flex-direction: column;
        align-items: center;
        padding: 40px 20px;
    }

    /* Gradient Animation */
    @keyframes gradientBG {
        0% { background-position: 0% 50%; }
        50% { background-position: 100% 50%; }
        100% { background-position: 0% 50%; }
    }

    /* Headings */
    h2, h3 {
        text-align: center;
        margin-bottom: 20px;
        text-shadow: 0 4px 10px rgba(0,0,0,0.2);
        animation: fadeInDown 0.8s ease forwards;
    }
    h3 {
        font-size: 1.4rem;
        font-weight: 500;
        color: #ffe4e6;
    }
    h2 {
        font-size: 2rem;
        font-weight: 700;
        color: #fff;
    }

    /* Table Styling */
    table {
        border-collapse: collapse;
        min-width: 500px;
        background: rgba(255, 255, 255, 0.15);
        backdrop-filter: blur(8px);
        border-radius: 12px;
        overflow: hidden;
        box-shadow: 0 6px 20px rgba(0,0,0,0.15);
        animation: fadeInUp 0.8s ease forwards;
    }

    th, td {
        padding: 14px 18px;
        text-align: left;
    }

    th {
        background: rgba(0, 0, 0, 0.2);
        font-size: 1rem;
        font-weight: 600;
        color: #fff;
        text-transform: uppercase;
        letter-spacing: 0.5px;
    }

    tr {
        transition: background 0.3s ease;
    }

    tr:nth-child(even) {
        background: rgba(255, 255, 255, 0.05);
    }

    tr:hover {
        background: rgba(255, 255, 255, 0.2);
    }

    td {
        color: #fff;
        font-size: 0.95rem;
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

<% List<Vehicle> list = (List<Vehicle>)  request.getAttribute("listofdata"); %>
<br>
<center>
<h3>All vehicle info </h3>
    <h2>Vehicle List</h2>
    <table border="1" cellpadding="10">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Price</th>
        </tr>

        <% for (Vehicle v : list) { %>
        <tr>
            <td><%= v.getVid() %></td>
            <td><%= v.getVname() %></td>
            <td><%= v.getVprice() %></td>
        </tr>
        <% } %>
    </table>
</center>
</body>
</html>