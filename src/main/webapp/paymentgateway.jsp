<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Page</title>
    <%@include file="includes/head.jsp"%>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Roboto', sans-serif;
            background-image: url('images/DON10.png'); /* Background image for the page */
            background-size: cover;
            background-position: center;
            color: white;
        }

        /* Header Styles */
        .header {
            background-image: url('images/DON7.png'); /* Update to the new image */
            background-size: cover;
            background-position: center;
            text-align: center;
            padding: 50px;
            color: white;
        }

        .header h1 {
            font-size: 3rem;
            font-weight: bold;
        }

        /* Main Container */
        .container {
            text-align: center;
            padding: 50px 20px;
        }

        /* Heading Style */
        .heading {
            font-size: 2.5rem;
            color: #ff6f61; /* Orange color */
            margin-bottom: 20px;
        }

        /* Box containing the PhonePe scanner */
        .scanner-box {
            background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent white */
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            margin-bottom: 30px;
        }

        .scanner-box img {
            max-width: 100%;
            height: auto;
        }

        /* Reference ID Section */
        .reference-section {
            margin-top: 30px;
            margin-bottom: 30px;
        }

        .reference-input {
            padding: 10px;
            font-size: 1rem;
            width: 100%;
            max-width: 300px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            text-align: center;
        }

        /* Submit Button Style */
        .submit-button {
            padding: 12px 25px;
            font-size: 1.2rem;
            background-color: #ff6f61; /* Orange color */
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-align: center;
            text-decoration: none;
        }

        .submit-button:hover {
            background-color: #e05f4b;
        }

        /* Custom style for the paragraph */
        .scanner-text {
            color: black; /* Change the text color to black */
            font-size: 1.5rem; /* Increase the font size */
        }
    </style>
</head>
<body>

    <!-- Header Section with the image background -->
    <div class="header">
        <h1>PAYMENT PAGE</h1>
    </div>

    <!-- Main Container -->
    <div class="container">
        <!-- Heading: Thank You for Your Effort to Donate -->
        <div class="heading">
            Thank You for Your Effort to Donate for a Cause
        </div>

        <!-- PhonePe Scanner Box -->
        <div class="scanner-box">
            <img src="images/1pay.jpg" alt="PhonePe QR Code Scanner" style="width: 300px; height: 300px;">
            <p class="scanner-text">Scan the QR code above to make a payment via PhonePe.</p>
        </div>

        <!-- Reference ID Section -->
        <div class="reference-section">
            <label for="reference-id">Enter Your Reference ID (12 digits):</label><br>
            <input type="text" id="reference-id" class="reference-input" placeholder="Enter 12 digit reference ID" maxlength="12" required>
        </div>

        <!-- Submit Button linking to successpay.jsp -->
        <a href="successpay.jsp" class="submit-button">Submit</a>
    </div>

    <%@include file="includes/footer.jsp"%>
</body>
</html>
