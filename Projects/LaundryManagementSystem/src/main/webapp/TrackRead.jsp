<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Track Order - Read</title>
    <style>
        body {
            font-family: Arial, sans-serif;
           background: linear-gradient(135deg, #74ebd5 0%, #acb6e5 100%);
            margin: 0;
            padding: 20px;
        }

        h2 {
            color: #333;
            text-align: center;
        }
        a button {
			background-color: #007BFF; /* Blue button color */
			color: white;
			border: none;
			border-radius: 4px;
			padding: 10px 20px;
			font-size: 16px;
			cursor: pointer;
			transition: background-color 0.3s;
		}

		a button:hover {
			background-color: #0056b3; /* Darker blue on hover */
		}

        .order-details {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            max-width: 500px;
            margin: 0 auto;
        }

        p {
            font-size: 16px;
            line-height: 1.5;
            margin: 10px 0;
            color: #555;
        }

        .label {
            font-weight: bold;
            color: #333;
        }

        @media (max-width: 600px) {
            body {
                padding: 10px;
            }
            .order-details {
                padding: 15px;
            }
        }
    </style>
</head>
<body>
    <h2>Order Details</h2>
    <div class="order-details">
        <p><span class="label">Order Number:</span> ${orderData.trackNO}</p>
        <p><span class="label">Customer Email:</span> ${orderData.custEmail}</p>
        <p><span class="label">Order Date:</span> ${orderData.date}</p>
        <a href="TrackCRUDPage.jsp">
		<button>Back</button>
	</a>
    </div>
</body>
</html>
