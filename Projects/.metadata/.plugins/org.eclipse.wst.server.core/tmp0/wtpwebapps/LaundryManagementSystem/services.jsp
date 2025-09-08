<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Our Services - Online Laundry Management System</title>
    <link rel="stylesheet" href="CSS/services.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        /* General styles */
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to bottom, #ffecd2, #fcb69f); /* Soft gradient background */
            margin: 0;
            padding: 0;
        }

        h1, h2 {
            color: #ff6f61; /* Bold color for heading */
            text-align: center;
        }

        h1 {
            font-size: 2.5em;
            margin-bottom: 10px;
        }

        p {
            color: #333;
            text-align: center;
            font-size: 1.1em;
            line-height: 1.6em;
            max-width: 800px;
            margin: 10px auto 30px auto;
        }

        /* Service Section */
        .services-section {
            padding: 40px;
            background-color: #fff;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
            border-radius: 12px;
            max-width: 1200px;
            margin: 20px auto;
        }

        .service-item {
            margin: 20px auto;
            padding: 20px;
            background-color: #f7f7f7;
            border-radius: 10px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .service-item:hover {
            transform: scale(1.05);
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.2);
        }

        .service-item h2 {
            font-size: 1.8em;
            color: #333;
            margin-bottom: 10px;
        }

        .service-item p {
            color: #666;
            font-size: 1.2em;
            margin: 0;
        }

        /* Social Media Footer */
       /* Social Media Footer */
.social-media {
    text-align: center;
    padding: 20px;
    background-color: #333; /* Darker background color for the footer */
}

.social-icon {
    color: #ff6f61; /* Main color for the social icons */
    margin: 0 10px;
    font-size: 1.5em;
    transition: color 0.3s ease;
}

.social-icon:hover {
    color: #fff; /* Color change on hover */
}


        /* Media Queries */
        @media (max-width: 768px) {
            h1 {
                font-size: 2em;
            }

            h2 {
                font-size: 1.5em;
            }

            p {
                font-size: 1em;
            }

            .service-item {
                padding: 15px;
            }
        }
    </style>
</head>
<body>
    <header>
        <nav>
            <ul>
                <li><a href="home.jsp">Home</a></li>
                <li><a href="#">Services</a></li>
                <li><a href="orderinsert.jsp">Order Pickup</a></li>
                <li><a href="OrderTrackingPage.jsp">Track Orders</a></li>
                <li><a href="pricing.jsp">Pricing</a></li>
                <li><a href="contact.jsp">Contact Us</a></li>
                <li><a href="Login.jsp">Login</a></li>
            </ul>
            <div class="search-container">
                <input type="text" id="search" placeholder="Search...">
                <button onclick="performSearch()">Search</button>
            </div>
        </nav>
    </header>

    <!-- Services Section -->
    <section class="services-section">
        <h1>Our Services</h1>
        <p>Discover the range of services we offer to meet your laundry needs.</p>
        
        <!-- Service Items -->
        <div class="service-item">
            <h2>Express Laundry</h2>
            <p>Get your laundry done in record time with our express service.</p>
        </div>

        <div class="service-item">
            <h2>Eco-Friendly Cleaning</h2>
            <p>We use environmentally friendly detergents to care for your clothes and the planet.</p>
        </div>

        <div class="service-item">
            <h2>Customizable Packages</h2>
            <p>Create a package that suits your specific laundry requirements.</p>
        </div>

        <div class="service-item">
            <h2>Pickup & Delivery</h2>
            <p>We offer convenient pickup and delivery options to fit your schedule.</p>
        </div>
    </section>

    <!-- Social Media Footer -->
    <footer class="social-media">
        <a href="https://www.facebook.com" target="_blank" class="social-icon">
            <i class="fab fa-facebook-f"></i>
        </a>
        <a href="https://www.youtube.com" target="_blank" class="social-icon">
            <i class="fab fa-youtube"></i>
        </a>
        <a href="https://www.instagram.com" target="_blank" class="social-icon">
            <i class="fab fa-instagram"></i>
        </a>
    </footer>

    <script src="java.js"></script>
</body>
</html>
