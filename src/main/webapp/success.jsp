<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Message Sent - Dhatri Foundation</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: url('images/DON10.png') no-repeat center center/cover;
            background-size: cover;
            color: white;
            margin: 0;
            padding: 0;
        }

        .header-section {
            background: url('images/DON7.png') no-repeat center center/cover;
            color: white;
            padding: 80px 0;
            text-align: center;
            background-size: cover;
        }

        .header-section h1 {
            font-size: 50px;
            font-weight: 700;
            margin-bottom: 15px;
        }

        .header-section p {
            font-size: 22px;
            font-weight: 300;
        }

        .message-section {
            background: rgba(0, 0, 0, 0.7);
            padding: 50px;
            border-radius: 10px;
            text-align: center;
            margin-top: 50px;
        }

        .message-section h2 {
            font-size: 40px;
            font-weight: 700;
            margin-bottom: 20px;
        }

        .message-section p {
            font-size: 20px;
            line-height: 1.6;
            margin-bottom: 30px;
        }

        .btn-custom {
            background-color: #FFA500;
            color: white;
            border: none;
            padding: 12px 25px;
            border-radius: 5px;
            text-decoration: none;
            font-size: 18px;
            text-align: center;
        }

        .btn-custom:hover {
            background-color: #cc8400;
        }
    </style>
</head>
<body>

    <!-- Header Section -->
    <section class="header-section">
        <div class="container">
            <h1>Thank You for Reaching Out!</h1>
            <p></p>
        </div>
    </section>

    <!-- Message Sent Section -->
    <div class="container mt-5 message-section">
        <h2>Your Message Was Sent Successfully!</h2>
        <p>Thank you for your interest in Dhatri Foundation. Your message has been received, and our team will get in touch with you shortly. Keep making a change, and we look forward to collaborating with you to make a meaningful impact.</p>
        <a href="home.jsp" class="btn btn-custom">RETURN HOME</a>
    </div>

</body>
</html>
