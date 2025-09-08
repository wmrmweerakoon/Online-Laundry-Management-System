<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Order</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #74ebd5 0%, #acb6e5 100%);
            margin: 0;
            padding: 40px;
        }

        h2 {
            color: #333;
            text-align: center;
        }

        .form-container {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            max-width: 400px;
            margin: 0 auto;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #555;
        }

        input[type="text"],
        input[type="email"],
        input[type="date"] {
            width: calc(100% - 20px);
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            margin-bottom: 20px;
            font-size: 16px;
        }

        input[type="submit"] {
            background-color: #007BFF;
            color: white;
            border: none;
            border-radius: 4px;
            padding: 10px 15px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
            width: 100%;
        }

        input[type="submit"]:hover {
            background-color: #ffc107;
        }

        @media (max-width: 600px) {
            body {
                padding: 20px;
            }
            .form-container {
                padding: 15px;
            }
        }
    </style>
</head>
<body>
    <h2>Update Order Details</h2>
    <div class="form-container">
        <form action="${pageContext.request.contextPath}/OrderTrackUpdateServlet" method="post">
            <label for="track_id">Track ID:</label>
            <input type="text" id="track_id" name="track_id"  required />
            
            <label for="order_number">Order Number:</label>
            <input type="text" id="order_number" name="order_number"  required />
            
            <label for="customer_email">Customer Email:</label>
            <input type="email" id="customer_email" name="customer_email"  required />
            
            <label for="order_date">Order Date:</label>
            <input type="date" id="order_date" name="order_date"  required />
            
            <input type="submit" value="Update Order">
        </form>
    </div>
</body>
</html>
