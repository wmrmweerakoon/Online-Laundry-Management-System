<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Customer</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #e9ecef;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #333;
        }

        .form-container {
            background: white;
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            padding: 30px;
            width: 400px;
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #4CAF50;
        }

        label {
            font-weight: 500;
            margin-bottom: 5px;
            display: block;
        }

        input[type="text"],
        input[type="email"],
        textarea {
            width: 100%;
            padding: 12px;
            margin: 8px 0 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
        }

        textarea {
            resize: none;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 12px;
            cursor: pointer;
            border-radius: 5px;
            font-size: 16px;
            width: 100%;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        @media (max-width: 480px) {
            .form-container {
                width: 90%;
                padding: 20px;
            }
        }
    </style>
</head>
<body>

<div class="form-container">
    <h2>Update Customer Details</h2>
    <form action="ContactUpdateServlet" method="post">
        <label for="id">Customer ID:</label>
        <input type="text" id="id" name="id" required>

        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>

        <label for="message">Message:</label>
        <textarea id="message" name="message" rows="4" required></textarea>

        <input type="submit" value="Update">
    </form>
</div>

</body>
</html>
