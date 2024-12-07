<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="hackerthon.model.User"%>
<%
User auth = (User) request.getSession().getAttribute("auth");
if (auth != null) {
    request.setAttribute("auth", auth);
}
%>
<!DOCTYPE html>
<html>
<head>
    <title>Seva Donation Platform</title>
    <%@include file="includes/head.jsp"%>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Roboto', sans-serif;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }

        /* Full-Page Banner Styles */
        .banner {
            background-image: url('images/DON10.png'); /* Update with the correct image path */
            height: 100vh; /* Full viewport height */
            background-size: cover;
            background-position: center;
            position: relative;
            color: white;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.7);
            z-index: 1; /* Make sure the banner stays in the background */
        }

        .banner h1 {
            font-size: 4rem;
            font-weight: bold;
            margin: 0;
            text-align: center;
            position: absolute;
            top: 10%;
            left: 50%;
            transform: translateX(-50%);
            z-index: 2; /* Make sure the title is above the banner */
        }

        /* Our Causes Heading Styles */
        .our-causes {
            color: #ff6f61; /* Orange color */
            font-size: 2rem;
            text-align: center;
            margin-top: 20px;
            font-weight: bold;
        }

        /* Causes Grid Styles */
        .causes-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 20px;
            padding: 20px;
            position: absolute; /* Make it float on top of the banner */
            top: 30%; /* Start from 30% of the banner's height */
            left: 50%;
            transform: translateX(-50%);
            width: 80%;
            z-index: 3; /* Ensure the grid is above the banner */
            margin-bottom: 40px;
            overflow-y: auto; /* Enable scrolling if content overflows */
            max-height: 70vh; /* Limit height so that it stays within view */
        }

        .cause-card {
            background: rgba(255, 255, 255, 0.9); 
            border: 1px solid #ddd;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: transform 0.2s ease-in-out, box-shadow 0.2s ease-in-out;
            text-align: center;
        }

        .cause-card:hover {
            transform: scale(1.05); /* Gently enlarge the card */
            box-shadow: 0 8px 12px rgba(0, 0, 0, 0.2); /* More pronounced shadow */
        }

        .cause-card img {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }

        .cause-card .details {
            padding: 15px;
        }

        .cause-card .details h2 {
            font-size: 18px;
            margin: 0;
            color: #555;
        }

        .cause-card .details p {
            margin: 10px 0;
            color: #777;
        }

        .cause-card .details .price {
            color: #28a745;
            font-weight: bold;
        }

        .cause-card .details .button {
            display: inline-block;
            margin-top: 10px;
            padding: 10px 15px;
            background-color: #007bff;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
        }

        .cause-card .details .button:hover {
            background-color: #0056b3;
        }

        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px;
        }

        footer a {
            color: #ff6f61;
            text-decoration: none;
        }

        footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <%@include file="includes/navbar.jsp"%>

    <!-- Full-Page Banner Section -->
    <div class="banner">
        <h1>DONATE FOR A CAUSE</h1>
    </div>

    <!-- Causes Section -->
    <div class="our-causes">
        Our Causes
    </div>

    <!-- Causes Grid Section -->
    <div class="causes-grid">
        <div class="cause-card">
            <img src="images/p4.jpg" alt="Fundraise for Cancer Treatment">
            <div class="details">
                <h2>Fundraise for Cancer Treatment</h2>
                <p>Help cancer patients by raising funds for their treatment and medications.</p>
                <p class="price">₹50,000 / Patient</p>
                <a href="donate4.jsp?cause=cancer-treatment" class="button">Donate Now</a>
            </div>
        </div>

        <div class="cause-card">
            <img src="images/p5.jpg" alt="Provide Free Education for a Year">
            <div class="details">
                <h2>Provide Free Education for a Year</h2>
                <p>Support a child's education by covering their school fees and supplies for a year.</p>
                <p class="price">₹15,000 / Year</p>
                <a href="donate5.jsp?cause=free-education" class="button">Donate Now</a>
            </div>
        </div>

        <div class="cause-card">
            <img src="images/p3.jpg" alt="Give An Egg & Milk">
            <div class="details">
                <h2>Give An Egg & Milk</h2>
                <p>Provide nutritious food for children.</p>
                <p class="price">₹30 / Child</p>
                <a href="donate.jsp" class="button">Donate Now</a>
            </div>
        </div>

        <div class="cause-card">
            <img src="images/p1.jpg" alt="Sponsor A Birthday Cake">
            <div class="details">
                <h2>Provide a meal </h2>
                <p>Provie a meal to the homeless</p>
                <p class="price">₹150 / 1 Person</p>
                <a href="donate.jsp" class="button">Donate Now</a>
            </div>
        </div>


        <div class="cause-card">
            <img src="images/p6.jpg" alt="Donate Birthday Gift for Kaira">
            <div class="details">
                <h2>Donate a Birthday Gift for Kaira</h2>
                <p>Give a birthday gift that includes clothes, books, and toys to make Kaira's day special.</p>
                <p class="price">₹500 / Gift</p>
                <a href="donate1.jsp?cause=gift-kaira" class="button">Donate Now</a>
            </div>
        </div>

        <div class="cause-card">
            <img src="images/p7.jpg" alt="Provide Medical Supplies for Rural Clinics">
            <div class="details">
                <h2>Provide Medical Supplies for Rural Health Clinics</h2>
                <p>Donate medical equipment and supplies to rural clinics to help them provide essential care.</p>
                <p class="price">₹5,000 / Clinic</p>
                <a href="donate2.jsp?cause=medical-supplies" class="button">Donate Now</a>
            </div>
        </div>

        <div class="cause-card">
            <img src="images/p8.jpg" alt="Donate to Animal Welfare">
            <div class="details">
                <h2>Donate to Animal Welfare</h2>
                <p>Help provide food, shelter, and medical care to stray and abused animals.</p>
                <p class="price">₹200 / Animal</p>
                <a href="donate3.jsp?cause=animal-welfare" class="button">Donate Now</a>
            </div>
        </div>
        </div>
    </div>

    <%@include file="includes/footer.jsp"%>
</body>
</html>
