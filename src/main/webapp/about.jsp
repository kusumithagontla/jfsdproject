<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us</title>
    <style>
        /* General Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Roboto', Arial, sans-serif;
            line-height: 1.8;
            color: #333;
            background: url('images/DON10.png') no-repeat center center/cover;
            background-size: cover;
            background-position: center;
            margin: 0;
        }

        /* Header Section */
        header {
            background: url('images/DON7.png') no-repeat center center/cover;
            color: white;
            padding: 40px 0; /* Reduced the padding */
            text-align: center;
            position: relative;
        }

        header h1 {
            font-size: 4rem;
            font-weight: bold;
            color: red;
            text-transform: uppercase;
            letter-spacing: 2px;
        }

        header p {
            font-size: 1.5rem;
            margin-top: 10px;
        }

        header::after {
            content: '';
            display: block;
            height: 5px;
            width: 150px;
            background: white;
            margin: 20px auto 0;
            border-radius: 5px;
        }

        /* Container */
        .container {
            max-width: 1200px;
            margin: 20px auto; /* Reduced gap between the header and About Us text */
            padding: 20px;
            background: white;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
        }

        .section {
            margin-bottom: 40px;
        }

        .section h2 {
            font-size: 2.5rem;
            margin-bottom: 10px;
            color: red;
            font-family: 'Dancing Script', cursive; /* Beautiful font for headings */
            border-bottom: 2px solid red;
            display: inline-block;
        }

        .section p {
            font-size: 1.1rem;
            color: black;
            text-align: justify;
            font-family: 'Roboto', Arial, sans-serif; /* Ensuring the same font here */
        }

        .section ul {
            list-style-type: square;
            margin-left: 20px;
            color: #666;
        }

        /* Stats Section */
        .stats {
            display: flex;
            justify-content: space-between;
            gap: 20px;
            margin: 30px 0;
        }

        .stat {
            flex: 1;
            text-align: center;
            padding: 20px;
            background: #f4f4f9;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }

        .stat:hover {
            transform: translateY(-10px);
        }

        .stat h3 {
            font-size: 2.5rem;
            color: red;
            margin-bottom: 10px;
        }

        .stat p {
            font-size: 1rem;
            color: #777;
        }

        /* Call-to-Action Button */
        .cta-button {
            display: block;
            width: fit-content;
            margin: 20px auto;
            padding: 12px 25px;
            background: red;
            color: white;
            font-size: 1.1rem;
            font-weight: bold;
            text-decoration: none;
            border-radius: 5px;
            transition: background 0.3s ease;
        }

        .cta-button:hover {
            background: #388e3c;
        }

        /* Footer */
        footer {
            background: url('images/DON7.png') no-repeat center center/cover;
            color: white;
            text-align: center;
            padding: 20px 0;
            font-size: 0.9rem;
            margin-top: 40px;
        }

        footer a {
            color: white;
            text-decoration: underline;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .stats {
                flex-direction: column;
            }

            .slider {
                height: 300px;
            }

            .slider img {
                object-fit: cover;
            }
        }
    </style>
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&display=swap" rel="stylesheet">
</head>
<body>

<header>
    <h1>ABOUT US</h1>
    <p>Your trusted partner in creating impactful change</p>
</header>

<!-- Image Slider -->
<div class="slider">
    <div class="slides">
        <div class="slide" style="background-image: url('images/slide1.jpg');"></div>
        <div class="slide" style="background-image: url('images/slide2.jpg');"></div>
        <div class="slide" style="background-image: url('images/slide3.jpg');"></div>
    </div>
</div>

<div class="container">
    <!-- Who We Are Section -->
    <div class="section">
        <h2>Who We Are</h2>
        <p>We are a non-profit organization, **Dhatri Foundation**, dedicated to transforming lives and empowering communities. Through our focused initiatives and collaborative efforts, we aim to address pressing challenges and foster growth opportunities for those in need.</p>
    </div>

    <!-- Our Mission Section -->
    <div class="section">
        <h2>Our Mission</h2>
        <p>At **Dhatri Foundation**, our mission is to inspire positive change across the globe. We are committed to building a more equitable and sustainable future for all. Our goal is to provide resources, opportunities, and a platform for those in need, transforming communities one step at a time.</p>
        <ul>
            <li><strong>Education & Skill Development</strong>: We aim to equip individuals with the necessary tools to succeed through educational initiatives and skill-building programs.</li>
            <li><strong>Disaster Relief</strong>: Providing immediate support and long-term solutions to communities affected by natural disasters, ensuring their recovery and growth.</li>
            <li><strong>Empowering Marginalized Communities</strong>: Through focused efforts, we help marginalized groups by giving them a voice and access to essential resources for a better tomorrow.</li>
        </ul>
    </div>

    <!-- Our Impact Section -->
    <div class="section">
        <h2>Our Impact</h2>
        <div class="stats">
            <div class="stat">
                <h3>50,000+</h3>
                <p>Lives Impacted</p>
            </div>
            <div class="stat">
                <h3>20+</h3>
                <p>Programs Initiated</p>
            </div>
            <div class="stat">
                <h3>10+</h3>
                <p>Countries Reached</p>
            </div>
        </div>
        <a href="index.jsp" class="cta-button">DONATE NOW</a>
    </div>
</div>

<footer>
    <p>&copy; 2024 Dhatri Foundation. All Rights Reserved. | <a href="privacy-policy.jsp">Privacy Policy</a></p>
</footer>

<script>
    // Simple Slider Animation
    let slideIndex = 0;
    const slides = document.querySelectorAll('.slide');
    function showSlides() {
        slides.forEach((slide, index) => {
            slide.style.transform = `translateX(-${slideIndex * 100}%)`;
        });
        slideIndex = (slideIndex + 1) % slides.length;
    }

    setInterval(showSlides, 3000);
</script>

</body>
</html>
