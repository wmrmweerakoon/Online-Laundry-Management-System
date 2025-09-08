<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Read Records</title>
    <link rel="stylesheet" href="CSS/Read.css">
    <style>
        /* Reset default margin and padding */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Body styles */
        body {
            font-family: 'Helvetica Neue', Arial, sans-serif;
            background-color: #f0f4f8; /* Light background */
            color: #333; /* Dark text */
            line-height: 1.6; /* Better line spacing */
        }

        /* Header styles */
        header {
            background-color: #007bff; /* Blue background */
            color: white;
            padding: 20px 0;
            text-align: center;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1); /* Subtle shadow for depth */
        }

        header h1 {
            font-size: 2.5rem; /* Larger title */
            margin: 0; /* Remove default margin */
        }

        /* Read section styles */
        .read-section {
            display: flex;
            justify-content: center; /* Center the button horizontally */
            align-items: center; /* Center the button vertically */
            height: 80vh; /* Adjust height for centering */
        }

        /* Button styles */
        .button-read {
            background-color: #28a745; /* Green background */
            color: white;
            border: none;
            border-radius: 5px;
            padding: 15px 30px;
            font-size: 18px; /* Larger font size */
            cursor: pointer;
            transition: background-color 0.3s, transform 0.2s; /* Smooth transitions */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Shadow for depth */
        }

        .button-read:hover {
            background-color: #218838; /* Darker green on hover */
            transform: translateY(-2px); /* Lift effect on hover */
        }

        /* Footer styles */
        footer {
            text-align: center;
            padding: 20px;
            background-color: #007bff; /* Match header */
            color: white;
            position: relative;
            bottom: 0;
            width: 100%;
            box-shadow: 0 -2px 5px rgba(0, 0, 0, 0.1); /* Subtle shadow for depth */
        }

        footer p {
            margin: 0; /* Remove default margin */
        }
    </style>
</head>
<body>
    <header>
        <h1>Read Records</h1>
    </header>

    <section class="read-section">
        <form action="ReadServlet" method="post">
            <button type="submit" class="button-read">Fetch Records</button>
        </form>
    </section>

    <footer>
        <p>&copy; 2024 CRUD Operations. All Rights Reserved.</p>
    </footer>
</body>
</html>
