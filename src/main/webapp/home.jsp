<!DOCTYPE html>
<html>
<head>
    <title>Home - Online Donation Platform</title>
    <%@include file="includes/head.jsp"%>
    <style>
        /* Global Styles */
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #ffcccc;
            margin: 0;
            padding: 0;
        }

        /* Banner Section */
        .banner {
            background-image: url('images/DON9.png'); /* Updated to reference your image */
            height: 100vh;
            background-size: cover;
            background-position: center;
            display: flex;
            align-items: center;
            justify-content: flex-start; /* Align items to the left */
            position: relative;
        }

        .banner .btn {
            background-color: #FF6F61;
            color: white;
            padding: 12px 24px;
            border-radius: 5px;
            text-decoration: none;
            font-size: 1.2rem;
            position: absolute;
            left: 130px; /* Adjust this value to move closer or farther from the left edge */
            transform: translateY(-50%);
            top: 70%; /* Align vertically to the middle */
        }

        .banner .btn:hover {
            background-color: #ff3e30;
        }

        /* Icon Section */
        .icon-section {
            padding: 60px 20px;
            text-align: center;
            background-color: #f7f7f7;
        }

        .icon-section h2 {
            font-size: 2.5rem;
            margin-bottom: 40px;
            color: #333;
        }

        .icon-container {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
            max-width: 1200px;
            margin: 0 auto;
        }

        .icon-container div {
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }

        .icon-container div:hover {
            transform: translateY(-10px);
        }

        .icon-container i {
            font-size: 3rem;
            color: #FF6F61;
            margin-bottom: 20px;
        }

        .icon-container h3 {
            font-size: 1.5rem;
            margin-bottom: 10px;
        }

        .icon-container p {
            font-size: 1rem;
            color: #555;
        }

        /* Footer Styles */
        footer {
            background-color: #333;
            color: white;
            padding: 20px 0;
            text-align: center;
        }

        footer a {
            color: #FF6F61;
            text-decoration: none;
        }

        footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <div class="banner">
        <a href="index.jsp" class="btn">DONATE NOW</a>
    </div>

    <!-- Icon Section for Features -->
    <section class="icon-section">
        <h2>Why Donate with Us?</h2>
        <div class="icon-container">
            <div>
                <i class="fas fa-thumbs-up"></i>
                <h3>Super Convenient</h3>
                <p>Donate reusable items from the convenience of your house. Avail doorstep pickup, and get your donations delivered to the ones in need.</p>
            </div>
            <div>
                <i class="fas fa-smile"></i>
                <h3>Feel Good Factor</h3>
                <p>Giving gives you pleasure and makes you happier, bringing a positive and uplifting effect on you.</p>
            </div>
            <div>
                <i class="fas fa-gem"></i>
                <h3>Your Donations are Valued</h3>
                <p>We make sure your donations reach someone who really requires them by delivering them to the beneficiaries directly.</p>
            </div>
            <div>
                <i class="fas fa-eye"></i>
                <h3>Transparent Process</h3>
                <p>Your donations reach the beneficiaries through our verified, trusted partner NGOs audited on a regular basis.</p>
            </div>
            <div>
                <i class="fas fa-gift"></i>
                <h3>Get Surprise Rewards</h3>
                <p>We surprise you from time to time by sending you an exclusive "happiness box" containing surprise goodies and vouchers for you.</p>
            </div>
            <div>
                <i class="fas fa-recycle"></i>
                <h3>Save the Environment</h3>
                <p>Keep your unwanted belongings out of landfills by giving them new life, and putting them in the hands of those who really need them.</p>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 DHATRI Foundation <a href="contact.jsp">Contact Us</a></p>
    </footer>

    <!-- Include the footer -->
    <%@include file="includes/footer.jsp"%>

</body>
</html>
