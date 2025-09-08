<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Management Admin</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            padding: 20px;
        }

        .container {
            max-width: 900px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        h1 {
            margin-bottom: 20px;
        }

        .button-container {
            display: flex;
            justify-content: space-around;
            margin-top: 20px;
        }

        button {
            padding: 15px 30px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        button:hover {
            background-color: #0056b3;
        }

        form {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-top: 20px;
        }

        label {
            margin-bottom: 10px;
            font-weight: bold;
        }

        input {
            width: 80%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        button[type="submit"] {
            width: 50%;
            background-color: #28a745;
        }

        button[type="submit"]:hover {
            background-color: #218838;
        }

        /* Popup Styles */
        .popup {
            display: none;
            position: fixed;
            left: 50%;
            top: 50%;
            transform: translate(-50%, -50%);
            z-index: 1000;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            max-width: 600px;
            width: 90%;
        }

        .popup-content {
            text-align: center;
        }

        .close {
            position: absolute;
            right: 20px;
            top: 20px;
            font-size: 20px;
            cursor: pointer;
            color: #333;
        }

        .close:hover {
            color: red;
        }

        .popup h2 {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Order Management Admin</h1>
        <div class="button-container">
            <!-- Add Order Button -->
            <button onclick="window.location.href='orderinsert.jsp'">Add Order</button>

            <!-- Update Order Button (Triggers Popup) -->
            <button onclick="openPopup('updateOrderPopup')">Update Order</button>

            <!-- Delete Order Button (Triggers Popup) -->
            <button onclick="openPopup('deleteOrderPopup')">Delete Order</button>
        </div>

        <!-- Update Order Popup -->
        <div id="updateOrderPopup" class="popup">
            <div class="popup-content">
                <span class="close" onclick="closePopup('updateOrderPopup')">&times;</span>
                <h2>Update Order</h2>
                <form id="updateOrderForm" method="post" action="UpdateOrder">
                
                    <label for="name">Id:</label>
                    <input type="text" id="id" name="id" required>
               
                    <label for="name">Name:</label>
                    <input type="text" id="name" name="name" required>

                    <label for="address">Address:</label>
                    <input type="text" id="address" name="address" required>

                    <label for="phone">Phone:</label>
                    <input type="tel" id="phone" name="phone" required>

                    <label for="pickUpdate">Pick-Up Date:</label>
                    <input type="date" id="pickUpdate" name="pickUpdate" required>

                    <label for="pickUptime">Pick-Up Time:</label>
                    <input type="time" id="pickUptime" name="pickUptime" required>

                    <button type="submit">Submit</button>
                </form>
            </div>
        </div>

        <!-- Delete Order Popup -->
        <div id="deleteOrderPopup" class="popup">
            <div class="popup-content">
                <span class="close" onclick="closePopup('deleteOrderPopup')">&times;</span>
                <h2>Delete Order</h2>
                <form id="deleteOrderForm"  method="post" action="DeleteOrder">
                    <label for="deleteOrderId">Order ID:</label>
                    <input type="number" id="id" name="id" required>
                    <button type="submit">Submit</button>
                </form>
            </div>
        </div>
    </div>

    <script>
        // Function to open popup
        function openPopup(popupId) {
            document.getElementById(popupId).style.display = 'block';
        }

        // Function to close popup
        function closePopup(popupId) {
            document.getElementById(popupId).style.display = 'none';
        }
    </script>
</body>
</html>
