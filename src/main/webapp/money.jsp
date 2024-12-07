<!DOCTYPE html>
<html>
<head>
    <title>Crowdfunding Platform</title>
    <%@include file="includes/head.jsp"%> <!-- Includes common CSS, JS -->
    <link rel="stylesheet" href="styles.css"> <!-- Add your stylesheet -->
    <style>
        /* General Styles */
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #ffcccc; /* Matching the background color */
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #ff6f61; /* Matching the navbar color */
            padding: 15px 30px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            color: white;
        }

        header .logo {
            display: flex;
            align-items: center;
        }

        header .logo img {
            height: 40px;
            margin-right: 10px;
        }

        header nav a {
            margin: 0 15px;
            color: white; /* Adjusted for better contrast */
            text-decoration: none;
            font-weight: bold;
        }

        header nav a:hover {
            color: #ffe0dc; /* Slight hover effect */
        }

        header .btn {
            background-color: white; /* Adjusted button style */
            color: #ff6f61;
            padding: 10px 20px;
            border-radius: 20px;
            text-decoration: none;
        }

        header .btn:hover {
            background-color: #ff6f61;
            color: white;
        }

        /* Search Banner */
        .search-banner {
            text-align: center;
            padding: 30px;
            background-color: #ffcccc; /* Matching background color */
        }

        .search-banner p {
            font-size: 1.2rem;
            margin: 10px 0;
            color: #333; /* Matching color scheme */
        }

        .search-banner input[type="text"] {
            width: 70%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 20px;
            margin-right: 10px;
        }

        .search-banner button {
            padding: 10px 20px;
            border: none;
            border-radius: 20px;
            background-color: #ff6f61; /* Matching button color */
            color: white;
            font-size: 1rem;
        }

        .search-banner button:hover {
            background-color: #ff4b42; /* Subtle hover effect */
        }

        /* Cards Section */
        .card-container {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
            padding: 30px;
            max-width: 1200px;
            margin: 0 auto;
        }

        .card {
            background-color: #ff6f61; /* Matching card background color */
            color: white; /* Adjusted text color for contrast */
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            overflow: hidden;
            transition: transform 0.3s ease;
        }

        .card:hover {
            transform: translateY(-10px);
        }

        .card img {
            width: 100%;
            height: 150px;
            object-fit: cover;
        }

        .card .tag {
            position: absolute;
            top: 10px;
            left: 10px;
            background-color: white;
            color: #ff6f61; /* Adjusted tag colors */
            padding: 5px 10px;
            border-radius: 5px;
            font-size: 0.8rem;
        }

        .card .content {
            padding: 20px;
        }

        .card .content h3 {
            margin: 0;
            font-size: 1.2rem;
        }

        .card .content p {
            margin: 10px 0;
        }

        .progress {
            height: 10px;
            width: 100%;
            background-color: #ddd;
            border-radius: 5px;
            overflow: hidden;
            margin: 10px 0;
        }

        .progress .progress-bar {
            height: 100%;
            background-color: #ff4b42; /* Matching progress bar color */
            width: 50%; /* Example value */
        }

        .footer {
            background-color: #ff6f61; /* Matching footer background */
            color: white;
            text-align: center;
            padding: 20px;
        }
    </style>
</head>
<body>
    <!-- Header -->
    <header>
        <div class="logo">
            <img src="logo.png" alt="Logo">
            <h2>Online Donation Platform</h2>
        </div>
        <nav>
            <a href="#">Home</a>
            <a href="#">About</a>
            <a href="#">Donate Now</a>
            <a href="#">Contact Us</a>
            <a href="#">Sign out</a>
        </nav>
        <a href="startFundraiser.jsp" class="btn">Start a Fundraiser</a>
    </header>

    <!-- Search Banner -->
    <div class="search-banner">
        <p>DONATE MONEY TODAY.</p>
        <input type="text" placeholder="Search for fundraisers">
        <button>Search</button>
    </div>

    <!-- Card Section -->
    <div class="card-container">
        <div class="card">
            <img src="image1.jpg" alt="Fundraiser">
            <div class="tag">Tax Benefits</div>
            <div class="content">
                <h3>Help Saransh Immunotherapy Treatment</h3>
                <p>Created by: Sandeep Kumar</p>
                <div class="progress">
                    <div class="progress-bar" style="width: 64%;"></div>
                </div>
                <p>Raised: ₹61,20,709</p>
            </div>
        </div>
        <div class="card">
            <img src="image2.jpg" alt="Fundraiser">
            <div class="tag">Tax Benefits</div>
            <div class="content">
                <h3>Help Satish Thrive: A Journey to Healing</h3>
                <p>Created by: Prerana Murthy</p>
                <div class="progress">
                    <div class="progress-bar" style="width: 49%;"></div>
                </div>
                <p>Raised: ₹14,72,544</p>
            </div>
        </div>
        <div class="card">
            <img src="image3.jpg" alt="Fundraiser">
            <div class="tag">Tax Benefits</div>
            <div class="content">
                <h3>Support Manjunath to Recover from TBI</h3>
                <p>Created by: Aishwarya</p>
                <div class="progress">
                    <div class="progress-bar" style="width: 14%;"></div>
                </div>
                <p>Raised: ₹7,06,630</p>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer class="footer">
        &copy; 2024 Crowdfunding Platform | All rights reserved.
    </footer>
</body>
</html>
