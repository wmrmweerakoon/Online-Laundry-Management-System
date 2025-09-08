<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pricing - Online Laundry Management System</title>
    <link rel="stylesheet" href="CSS/pricing.css">
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

        /* Pricing Section */
        .pricing-section {
            padding: 40px;
            background-color: #fff;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
            border-radius: 12px;
            max-width: 1200px;
            margin: 20px auto;
        }

        .pricing-tables {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
        }

        .pricing-table {
            margin: 20px;
            padding: 20px;
            background-color: #f7f7f7;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            flex: 0 0 30%; /* Set the width of pricing tables */
        }

        .pricing-table:hover {
            transform: scale(1.05);
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.2);
        }

        .pricing-table h2 {
            font-size: 1.8em;
            color: #333;
            margin-bottom: 10px;
        }

        .pricing-table p {
            color: #666;
            font-size: 1.2em;
            margin: 0 0 10px;
        }

        .pricing-table ul {
            list-style-type: none;
            padding: 0;
            margin: 0;
        }

        .pricing-table ul li {
            margin: 5px 0;
            font-size: 1em;
            color: #333;
        }

        .pricing-table button {
            background-color: #ff6f61;
            color: white;
            border: none;
            border-radius: 5px;
            padding: 10px 15px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .pricing-table button:hover {
            background-color: #e65c50; /* Darker shade on hover */
        }

        /* Social Media Footer */
        .social-media {
            text-align: center;
            padding: 20px;
            background-color: #333; /* Darker background color for the footer */
            color: white;
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
            .pricing-table {
                flex: 0 0 100%; /* Stack pricing tables on smaller screens */
            }
        }
    </style>
</head>
<body>
    <header>
        <nav>
            <ul>
                <li><a href="home.jsp">Home</a></li>
                <li><a href="services.jsp">Services</a></li>
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

    <!-- Pricing Section -->
    <section class="pricing-section">
        <h1>Our Pricing</h1>
        <p>Choose from our variety of laundry services to fit your needs and budget.</p>

        <!-- Pricing Tables -->
        <div class="pricing-tables">
            <div class="pricing-table">
                <h2>Standard Package</h2>
                <p>Basic laundry services for your everyday needs.</p>
                <ul>
                    <li>Wash & Fold: LKR 3,500 per load</li>
                    <li>Ironing: LKR 1,750 per item</li>
                    <li>Pickup & Delivery: LKR 4,500</li>
                </ul>
                <a href="order.jsp">
                    <button>Get Started</button>
                </a>
            </div>

            <div class="pricing-table">
                <h2>Premium Package</h2>
                <p>Comprehensive care for your laundry with added benefits.</p>
                <ul>
                    <li>Wash & Fold: LKR 5,250 per load</li>
                    <li>Ironing: LKR 2,800 per item</li>
                    <li>Pickup & Delivery: LKR 3,400</li>
                    <li>Express Service: LKR 6,000 extra</li>
                </ul>
                <a href="order.jsp">
                    <button>Get Started</button>
                </a>
            </div>

            <div class="pricing-table">
                <h2>Deluxe Package</h2>
                <p>Our most luxurious package with all the premium features.</p>
                <ul>
                    <li>Wash & Fold: LKR 7,000 per load</li>
                    <li>Ironing: LKR 3,500 per item</li>
                    <li>Pickup & Delivery: Free</li>
                    <li>Express Service: Included</li>
                    <li>Eco-Friendly Detergents: Included</li>
                </ul>
                <a href="order.jsp">
                    <button>Get Started</button>
                </a>
            </div>
        </div>
    </section>

    <!-- Social Media Footer -->
    <footer class="social-media">
        <div class="social-container">
            <a href="https://www.facebook.com" target="_blank" class="social-icon">
                <i class="fab fa-facebook-f"></i>
            </a>
            <a href="https://www.youtube.com" target="_blank" class="social-icon">
                <i class="fab fa-youtube"></i>
            </a>
            <a href="https://www.instagram.com" target="_blank" class="social-icon">
                <i class="fab fa-instagram"></i>
            </a>
        </div>
        <p>&copy; 2024 Online Laundry Management System. All rights reserved.</p>
    </footer>

    <script src="java.js"></script>
</body>
</html>
