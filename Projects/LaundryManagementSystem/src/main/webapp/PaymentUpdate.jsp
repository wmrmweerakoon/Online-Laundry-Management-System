<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Payment</title>
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
        input[type="date"],
        input[type="number"] {
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
    <h2>Update Payment Details</h2>
    <div class="form-container">
        <form action="${pageContext.request.contextPath}/PayUpdateServlet" method="post">
            <label for="payment_id">Payment ID:</label>
            <input type="text" id="payment_id" name="payment_id" required />
            
            <label for="card_name">Card Name:</label>
            <input type="text" id="card_name" name="card_name" required />
            
            <label for="card_number">Card Number:</label>
            <input type="text" id="card_number" name="card_number" required />
            
            <label for="expiry_date">Expiry Date:</label>
            <input type="date" id="expiry_date" name="expiry_date" required />
            
            <label for="cvv">CVV:</label>
            <input type="text" id="cvv" name="cvv" required />
            
            <label for="billing_address">Billing Address:</label>
            <input type="text" id="billing_address" name="billing_address" required />
            
            <label for="amount">Amount:</label>
            <input type="number" id="amount" name="amount" required />
            
            <input type="submit" value="Update Payment">
        </form>
    </div>
</body>
</html>
