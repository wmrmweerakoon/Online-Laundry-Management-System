<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment - Online Laundry Management System</title>
    <link rel="stylesheet" href="CSS/payment.css">
</head>
<body>
    <section class="payment-section">
        <h1>Payment</h1>
        <p>Complete your payment details below to confirm your order.</p>

        <!-- Payment Form -->
        <form class="payment-form" onsubmit="return validatePaymentForm()">
            <div class="form-group">
                <label for="name-on-card">Name on Card:</label>
                <input type="text" id="name-on-card" name="name-on-card" placeholder="John Doe" required>
            </div>

            <div class="form-group">
                <label for="card-number">Card Number:</label>
                <input type="text" id="card-number" name="card-number" placeholder="1111-2222-3333-4444" required>
            </div>

            <div class="form-group">
                <label for="expiry-date">Expiry Date:</label>
                <input type="month" id="expiry-date" name="expiry-date" required>
            </div>

            <div class="form-group">
                <label for="cvv">CVV:</label>
                <input type="text" id="cvv" name="cvv" placeholder="123" required>
            </div>

            <div class="form-group">
                <label for="billing-address">Billing Address:</label>
                <input type="text" id="billing-address" name="billing-address" placeholder="123 Main St" required>
            </div>

            <!-- Enter Amount Section -->
            <div class="form-group">
                <label for="amount">Enter Amount (LKR):</label>
                <input type="number" id="amount" name="amount" placeholder="1000" required>
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
    