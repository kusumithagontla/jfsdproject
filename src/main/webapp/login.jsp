<%@page import="hackerthon.model.*"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
   User auth = (User) request.getSession().getAttribute("auth");
   if(auth != null){
       // If user is authenticated, redirect to index page
       response.sendRedirect("index.jsp");
   }

   ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
   if(cart_list != null){
       request.setAttribute("cart_list", cart_list);
   }
%>
<!DOCTYPE html>
<html>
<head>
<title>Shopping Cart Login</title>
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

    /* Login Form Styles */
    .container {
        position: absolute;
        top: 20%;
        width: 100%;
        display: flex;
        justify-content: center;
    }

    .card {
        background-color: rgba(255, 255, 255, 0.8);
        border-radius: 10px;
        box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.3);
        padding: 30px;
        width: 400px;
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

    /* Link styling */
    .register-link {
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
    Welcome Back! Please Login to Continue
</div>

<!-- Error Message Section -->
<% 
    String error = (String) request.getAttribute("error");
    if (error != null) {
%>
    <div class="alert alert-danger" role="alert" style="text-align: center; margin-bottom: 20px;">
        <%= error %>
    </div>
<% 
    } 
%>


<!-- Login Form Section -->
<div class="container">
    <div class="card">
        <div class="card-header">Donor Login</div>
        <div class="card-body">
            <form action="home.jsp" method="post">

                <!-- Sign up as dropdown -->
                <div class="form-group">
                    <label for="user-role">Sign in as a</label>
                    <select class="form-control" name="user-role" id="user-role" required>
                        <option value="DONOR">DONOR</option>
                        <option value="ADMIN">ADMIN</option>
                        <option value="RECIPIENT">RECIPIENT</option>
                        <option value="LOGISTICS_COORDINATOR">LOGISTICS COORDINATOR</option>
                    </select>
                </div>

                <!-- Email Address -->
                <div class="form-group">
                    <label>Email Address</label>
                    <input type="email" class="form-control" name="login-email"
                           placeholder="Enter your email" required>
                </div>

                <!-- Password -->
                <div class="form-group">
                    <label>Password</label>
                    <input type="password" class="form-control" name="login-password"
                           placeholder="************" required>
                </div>

                <div class="text-center">
                    <button type="submit" class="btn btn-primary">Login</button>
                </div>

            </form>

            <!-- Not an existing user? Link to Registration -->
            <div class="register-link">
                <p>Not an existing user? <a href="registration.jsp">Sign up now</a></p>
            </div>
        </div>
    </div>
</div>

<%@include file="includes/footer.jsp"%>
</body>
</html>
