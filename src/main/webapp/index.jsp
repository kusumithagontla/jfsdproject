<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="hackerthon.dao.ProductDao"%>
<%@page import="hackerthon.connection.DBConnection"%>
<%@page import="hackerthon.model.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
User auth = (User) request.getSession().getAttribute("auth");
if (auth != null) {
    request.setAttribute("auth", auth);
}

ProductDao pd = new ProductDao(DBConnection.getConnection());
// Remove fetching products since we are manually setting options.
%>
<!DOCTYPE html>
<html>
<head>
    <title>Seva Donation Platform</title>
    <%@include file="includes/head.jsp"%>
    <style>
        body {
            background-color: #ffcccc;
            font-family: 'Roboto', sans-serif;
            text-align: center;
        }

        .header {
            margin: 50px 0;
            font-size: 3rem;
            color: #333;
        }

        .donation-options {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            margin: 30px;
        }

        .donation-card {
            background-color: #ff6f61;
            color: white;
            border-radius: 10px;
            padding: 20px;
            margin: 15px;
            width: 200px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .donation-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
        }

        .donation-card h5 {
            margin-bottom: 15px;
            font-size: 1.5rem;
        }

        .donate-button {
            background-color: #fff;
            color: #ff6f61;
            border: none;
            padding: 10px 15px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 1rem;
            transition: background-color 0.3s, color 0.3s;
        }

        .donate-button:hover {
            background-color: #ff6f61;
            color: white;
        }
    </style>
</head>
<body>

    <%@include file="includes/navbar.jsp"%>

    <div class="header">DONATE NOW</div>

    <div class="donation-options">
        <div class="donation-card">
            <h5>Food</h5>
            <p>Your donation helps feed the hungry.</p>
            <button class="donate-button" onclick="window.location.href='donate-food.jsp'">Donate</button>
        </div>
        <div class="donation-card">
            <h5>Clothes</h5>
            <p>Donate clothes to those in need.</p>
            <button class="donate-button" onclick="window.location.href='donate-clothes.jsp'">Donate</button>
        </div>
        <div class="donation-card">
            <h5>Books</h5>
            <p>Your books can change someone's life.</p>
            <button class="donate-button" onclick="window.location.href='donate-books.jsp'">Donate</button>
        </div>
        <div class="donation-card">
            <h5>Money</h5>
            <p>Support our programs with monetary donations.</p>
            <button class="donate-button" onclick="window.location.href='donate-money.jsp'">Donate</button>
        </div>
    </div>

    <%@include file="includes/footer.jsp"%>
</body>
</html>
