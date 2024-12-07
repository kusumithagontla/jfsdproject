<%@page import="hackerthon.model.*"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
   User auth = (User) request.getSession().getAttribute("auth");
   if(auth != null){
       // If user is authenticated, redirect to index page
       response.sendRedirect("index.jsp");
   }
%>
<!DOCTYPE html>
<html>
<head>
<title>Registration</title>
<%@include file="includes/head.jsp"%>
<style>
    /* Full-Page Background Image */
    body, html {
        height: 100%;
        margin: 0;
        padding: 0;
        background-image: url('images/DON11.png'); /* Replace with your image path */
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    /* Registration Form Styles */
    .container {
        position: absolute;
        top: 20%; /* Adjust top space to move the form lower or higher */
        width: 100%;
        display: flex;
        justify-content: center;
    }

    .card {
        background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent background for the form */
        border-radius: 10px;
        box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.3);
        padding: 30px;
        width: 400px; /* Adjust the width of the registration box */
    }

    .card-header {
        text-align: center;
        font-size: 1.5rem;
        font-weight: bold;
    }

    /* Banner Text */
    .banner-text {
        color: white;
        font-size: 3rem;
        font-weight: bold;
        text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.7);
        position: absolute;
        top: 10%;
        left: 50%;
        transform: translateX(-50%);
    }

    /* Link Styling for "Already a user" */
    .login-link {
        display: block;
        text-align: center;
        margin-top: 15px;
    }
</style>
</head>
<body>

<%@include file="includes/navbar.jsp"%>

<!-- Banner Text -->
<div class="banner-text">
    Join the Cause - Register Now!
</div>

<!-- Registration Form Section -->
<div class="container">
    <div class="card">
        <div class="card-header">Sign up</div>
        <div class="card-body">
            <form action="user-register" method="post">

                <!-- Sign up as dropdown -->
                <div class="form-group">
                    <label for="user-role">Sign up as a</label>
                    <select class="form-control" name="user-role" id="user-role" required>
                        <option value="DONOR">DONOR</option>
                        <option value="ADMIN">ADMIN</option>
                        <option value="RECIPIENT">RECIPIENT</option>
                        <option value="LOGISTICS_COORDINATOR">LOGISTICS COORDINATOR</option>
                    </select>
                </div>

                <!-- Full Name -->
                <div class="form-group">
                    <label>Full Name</label>
                    <input type="text" class="form-control" name="register-name"
                           placeholder="Enter your full name" required>
                </div>

                <!-- Contact Number -->
                <div class="form-group">
                    <label>Contact Number</label>
                    <input type="text" class="form-control" name="register-contact"
                           placeholder="Enter your contact number" required>
                </div>

                <!-- Email Address -->
                <div class="form-group">
                    <label>Email Address</label>
                    <input type="email" class="form-control" name="register-email"
                           placeholder="Enter your email" required>
                </div>

                <!-- Password -->
                <div class="form-group">
                    <label>Password</label>
                    <input type="password" class="form-control" name="register-password"
                           placeholder="************" required>
                </div>

                <!-- Confirm Password -->
                <div class="form-group">
                    <label>Confirm Password</label>
                    <input type="password" class="form-control" name="register-confirm-password"
                           placeholder="************" required>
                </div>

               <div class="text-center">
    <a href="login.jsp" class="btn btn-success">Sign Up</a>
</div>

            </form>

            <!-- Not an existing user? Link to Login -->
            <div class="login-link">
                <p>Already an existing user? <a href="login.jsp">Sign In here</a></p>
            </div>
        </div>
    </div>
</div>

<%@include file="includes/footer.jsp"%>
</body>
</html>
