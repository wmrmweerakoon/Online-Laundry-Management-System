<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order List</title>
    <style>
        /* General page styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }

        h2 {
            color: #333;
            text-align: center;
        }

        .faq_content {
            max-width: 800px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        /* Accordion Styling */
        .accordion {
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 8px;
            overflow: hidden;
        }

        .accordion-header {
            background-color: #007BFF;
            color: #fff;
            cursor: pointer;
            padding: 15px;
            font-weight: bold;
            transition: background-color 0.3s ease;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .accordion-header:hover {
            background-color: #0056b3;
        }

        .accordion-header::after {
            content: '+';
            font-size: 20px;
        }

        .accordion.active .accordion-header::after {
            content: '-';
        }

        .accordion-content {
            background-color: #f9f9f9;
            padding: 15px;
            border-top: 1px solid #ccc;
            display: none;
        }

        .accordion-content p {
            margin: 0;
        }

        /* Styling for an active accordion */
        .accordion.active .accordion-content {
            display: block;
        }

        /* Button Styling */
        button {
            background-color: #007BFF;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        button:hover {
            background-color: #0056b3;
        }

        /* Responsive */
        @media (max-width: 768px) {
            .faq_content {
                padding: 15px;
            }

            .accordion-header {
                font-size: 16px;
            }

            .accordion-content {
                font-size: 14px;
            }
        }
    </style>
</head>
<body>

    <div class="faq_content">
    <h2>Order List</h2>

    <!-- Check if the list is null or empty -->
    <c:if test="${empty orList}">
        <p>No orders found!</p>
    </c:if>

    <!-- Iterate over the order list -->
    <c:forEach var="order" items="${orList}">
        <div class="accordion">
            <div class="accordion-header">Order ID: ${order.id}</div>
            <div class="accordion-content">Name: ${order.name}</div>
            <div class="accordion-content">Address: ${order.address}</div>
            <div class="accordion-content">Phone: ${order.phone}</div>
            <div class="accordion-content">Pick-Up Date: ${order.pickUpdate}</div>
            <div class="accordion-content">Pick-Up Time: ${order.pickUptime}</div>
        </div>
    </c:forEach>
</div>

    <script>
        const accordions = document.querySelectorAll('.accordion-header');
        
        accordions.forEach(accordion => {
            accordion.addEventListener('click', () => {
                const parent = accordion.parentElement;
                parent.classList.toggle('active');
            });
        });
    </script>
</body>
</html>
