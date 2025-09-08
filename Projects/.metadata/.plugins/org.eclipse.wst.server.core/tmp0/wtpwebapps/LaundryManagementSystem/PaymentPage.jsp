<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment - Online Laundry Management System</title>
    

    <!--Internal Css-->
    <style>
        /* Reset default styling */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

/* Body Styling */
body {
    font-family: 'Arial', sans-serif;
    background-color: #f7f7f7;
    color: #333;
}

/* Payment Section */
.payment-section {
    max-width: 500px;
    margin: 50px auto;
    background-color: #fff;
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    text-align: center;
}

.payment-section h1 {
    font-size: 32px;
    color: #ff6f61;
    margin-bottom: 20px;
}

.payment-section p {
    font-size: 16px;
    margin-bottom: 30px;
    color: #666;
}

.payment-form {
    text-align: left;
}

.form-group {
    margin-bottom: 20px;
}

.form-group label {
    font-size: 14px;
    color: #333;
}

.form-group input {
    width: 100%;
    padding: 10px;
    font-size: 16px;
    border: 1px solid #ddd;
    border-radius: 5px;
}

/* Specific Styling for the Enter Amount Field */
#amount {
    border: 1px solid #ddd;
    padding: 10px;
    font-size: 16px;
    border-radius: 5px;
    width: 100%;
    margin-bottom: 20px;
}

button[type="submit"] {
    width: 100%;
    padding: 10px;
    font-size: 18px;
    background-color: #ff6f61;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

button[type="submit"]:hover {
    background-color: #ff4824;
}

/* Footer Styling */
.footer {
    text-align: center;
    padding: 20px;
    background-color: #333;
    color: white;
}

    </style>
</head>
<body>
    <section class="payment-section">
        <h1>Payment</h1>
        <p>Complete your payment details below to confirm your order.</p>

        <!-- Payment Form -->
        <form action="${pageContext.request.contextPath}/PaymentCreateServlet" method="post" class="payment-form" onsubmit="return validatePaymentForm()">
            <div class="form-group">
                <label for="name-on-card">Name on Card:</label>
                <input type="text" id="name-on-card" name="name-on-card" placeholder="Card Name" required>
            </div>

            <div class="form-group">
                <label for="card-number">Card Number:</label>
                <input type="text" id="card-number" name="card-number" placeholder="Card Number" required>
            </div>

            <div class="form-group">
                <label for="expiry-date">Expiry Date:</label>
                <input type="date" id="expiry-date" name="expiry-date" required>
            </div>

            <div class="form-group">
                <label for="cvv">CVV:</label>
                <input type="text" id="cvv" name="cvv" placeholder="CVV" required>
            </div>

            <div class="form-group">
                <label for="billing-address">Billing Address:</label>
                <input type="text" id="billing-address" name="billing-address" placeholder="Billing Address" required>
            </div>

            <!-- Enter Amount Section -->
            <div class="form-group">
                <label for="amount">Enter Amount (LKR):</label>
                <input type="number" id="amount" name="amount" placeholder="Amount" required>
            </div>

            <button type="submit">Make Payment</button>
        </form>
    </section>

    <footer class="footer">
        <p>&copy; 2024 Online Laundry Management System. All rights reserved.</p>
    </footer>

    <script>
        // Basic form validation
        function validatePaymentForm() {
            const cardNumber = document.getElementById('card-number').value;
            const cvv = document.getElementById('cvv').value;
            const amount = document.getElementById('amount').value;

            // Simple validation for card number (assumes 16 digits) and CVV (assumes 3 digits)
            const cardNumberPattern = /^\d{16}$/;
            const cvvPattern = /^\d{3}$/;

            if (!cardNumberPattern.test(cardNumber)) {
                alert('Please enter a valid 16-digit card number.');
                return false;
            }

            if (!cvvPattern.test(cvv)) {
                alert('Please enter a valid 3-digit CVV.');
                return false;
            }

            // Validate amount
            if (amount === "" || isNaN(amount) || amount <= 0) {
                alert('Please enter a valid amount.');
                return false;
            }

            alert('Payment submitted successfully!');
            return true;
        }
    </script>
</body>
</html>
