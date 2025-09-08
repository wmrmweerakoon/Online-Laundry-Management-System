<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CRUD Operations</title>
    <style>
        /* General Styles */
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to bottom right, #e0eafc, #cfdef3); /* Gradient background */
            color: #333;
            margin: 0;
            padding: 0;
            height: 100vh; /* Full height for the body */
            display: flex;
            flex-direction: column;
            align-items: center; /* Center content horizontally */
            justify-content: flex-start; /* Align content at the start */
        }

        header {
            background-color: #4a90e2; /* Header color */
            padding: 20px;
            text-align: center;
            width: 100%; /* Full width */
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.2); /* Shadow effect */
        }

        h1 {
            margin: 0;
            font-size: 2.5em;
            color: #fff; /* White text */
        }

        /* Message Display Section */
        .message {
            text-align: center;
            margin: 20px 0;
            font-size: 1.2em;
        }

        .message.success {
            color: #28a745; /* Green color */
            font-weight: bold;
        }

        .message.error {
            color: #dc3545; /* Red color */
            font-weight: bold;
        }

        /* CRUD Section */
        .crud-section {
            padding: 40px 20px;
            display: flex;
            flex-wrap: wrap; /* Allow cards to wrap */
            justify-content: center; /* Center cards */
            gap: 20px; /* Space between cards */
            max-width: 1200px; /* Max width for the section */
            width: 100%; /* Full width */
        }

        .crud-card {
            background-color: #ffffff; /* White background */
            border-radius: 12px; /* Rounded corners */
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.15); /* Shadow effect */
            padding: 30px;
            text-align: center;
            transition: transform 0.3s, box-shadow 0.3s;
            width: 250px; /* Fixed width for cards */
            position: relative; /* For pseudo-element positioning */
            overflow: hidden; /* Prevents overflow of pseudo-element */
        }

        .crud-card:hover {
            transform: translateY(-5px); /* Lift effect on hover */
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.25); /* Darker shadow on hover */
        }

        .crud-card h3 {
            margin: 0 0 15px 0;
            font-size: 1.5em;
            color: #4a90e2; /* Header color */
        }

        .crud-card p {
            color: #555; /* Dark gray text */
            margin: 0 0 20px 0;
        }

        /* Button Styles */
        a {
            display: inline-block;
            padding: 12px 20px; /* Increased padding */
            border-radius: 25px; /* Round button edges */
            text-decoration: none;
            color: white;
            font-weight: bold;
            transition: background-color 0.3s, transform 0.3s;
            position: relative; /* For button shadow */
            z-index: 1; /* On top of button background */
            border: none; /* Remove border */
            font-size: 1em; /* Font size */
        }

        .button-login {
            background-color: #007bff; /* Blue */
        }

        .button-register {
            background-color: #28a745; /* Green */
        }

        .button-read {
            background-color: #17a2b8; /* Teal */
        }

        .button-update {
            background-color: #ffc107; /* Yellow */
        }

        .button-delete {
            background-color: #dc3545; /* Red */
        }

        a:hover {
            transform: scale(1.05); /* Scale effect on hover */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Button shadow on hover */
        }

        /* Footer Styles */
        footer {
            background-color: #4a90e2; /* Footer color */
            color: white;
            text-align: center;
            padding: 10px 0;
            width: 100%; /* Full width */
            position: relative;
            bottom: 0;
            font-size: 0.9em;
        }
    </style>
</head>
<body>
    <header>
        <div class="header-content">
            <h1>CRUD Operations</h1>
        </div>
    </header>

    <!-- Message Display Section -->
    <div class="message">
        <%
            String successMessage = (String) request.getAttribute("successMessage");
            String errorMessage = (String) request.getAttribute("errorMessage");
            if (successMessage != null) {
        %>
            <div class="message success">
                <%= successMessage %>
            </div>
        <%
            }
            if (errorMessage != null) {
        %>
            <div class="message error">
                <%= errorMessage %>
            </div>
        <%
            }
        %>
    </div>

    <section class="crud-section">
        <div class="crud-card">
            <h3>Login</h3>
            <p>Access your account and manage records.</p>
            <a href="Login.jsp" class="button-login">Login</a>
        </div>
        <div class="crud-card">
            <h3>Register</h3>
            <p>Create a new account to start using the system.</p>
            <a href="Register.jsp" class="button-register">Register</a>
        </div>
        <div class="crud-card">
            <h3>Read</h3>
            <p>View all existing records in the database.</p>
            <a href="Read.jsp" class="button-read">Read</a>
        </div>
        <div class="crud-card">
            <h3>Update</h3>
            <p>Edit and update existing records.</p>
            <a href="Update.jsp" class="button-update">Update</a>
        </div>
        <div class="crud-card">
            <h3>Delete</h3>
            <p>Remove records you no longer need.</p>
            <a href="Delete.jsp" class="button-delete">Delete</a>
        </div>
    </section>

    <footer>
        <p>&copy; 2024 CRUD Operations. All Rights Reserved.</p>
    </footer>
</body>
</html>
