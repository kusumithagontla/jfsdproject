<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Contact Us - Online Donation Platform</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: url('images/DON10.png') no-repeat center center/cover;
        }

        .header-section {
           background: url('images/DON7.png') no-repeat center center/cover;
            color: white;
            padding: 60px 0;
            text-align: center;
        }

        .header-section h2 {
            font-size: 45px;
            font-weight: 700;
            margin-bottom: 15px;
        }

        .header-section p {
            font-size: 20px;
            font-weight: 300;
        }

        .contact-details, .contact-form {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        .contact-form label {
            font-weight: 600;
            color: #333;
        }

        .map-iframe {
            border: none;
            border-radius: 10px;
            width: 100%;
            height: 400px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .btn-custom {
            background-color: #FFA500; /* Orange color */
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            text-decoration: none; /* Remove underline */
            text-align: center;
            display: inline-block;
        }

        .btn-custom:hover {
            background-color: #cc8400; /* Darker shade of orange for hover */
        }
    </style>
</head>
<body>

    <!-- Header Section -->
    <section class="header-section">
        <div class="container">
            <h2>Contact Us</h2>
            <p>We'd love to hear from you. Reach out with any questions or feedback.</p>
        </div>
    </section>

    <!-- Main Content Section -->
    <div class="container mt-5">
        <div class="row">
            <!-- Contact Details -->
            <div class="col-md-6 mb-4">
                <div class="contact-details">
                    <h3 class="mb-4">Our Contact Information</h3>
                    <p><strong>Address:</strong> Indian Enclave, Ayyappa Nagar, Vijayawada, Andhra Pradesh, India</p>
                    <p><strong>Phone:</strong> +91 7799223399</p>
                    <p><strong>Email:</strong> support@donationplatform.com</p>
                    <p><strong>Open Hours:</strong> Mon - Sat, 8:00 AM - 4:30 PM</p>
                </div>
            </div>

            <!-- Contact Form -->
            <div class="col-md-6 mb-4">
                <div class="contact-form">
                    <h3 class="mb-4">Send Us a Message</h3>
                    <form action="ContactServlet" method="post">
                        <div class="mb-3">
                            <label for="name" class="form-label">Name</label>
                            <input type="text" class="form-control" id="name" name="name" required>
                        </div>
                        <div class="mb-3">
                            <label for="email" class="form-label">Email</label>
                            <input type="email" class="form-control" id="email" name="email" required>
                        </div>
                        <div class="mb-3">
                            <label for="message" class="form-label">Message</label>
                            <textarea class="form-control" id="message" name="message" rows="4" required></textarea>
                        </div>
                        <a href="success.jsp" class="btn btn-custom">Submit</a>
                    </form>
                </div>
            </div>
        </div>

        <!-- Google Map Section -->
        <div class="row mt-5">
            <div class="col">
                <h3 class="text-center mb-4">Our Location</h3>
                <iframe
                    class="map-iframe"
                    src="https://maps.google.com/maps?q=Vijayawada,%20Andhra%20Pradesh,%20India&output=embed"
                    loading="lazy"
                    title="Google Map of Location">
                </iframe>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS Bundle -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
