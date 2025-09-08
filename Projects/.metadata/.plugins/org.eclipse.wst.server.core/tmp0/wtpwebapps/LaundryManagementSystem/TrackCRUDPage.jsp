<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CRUD Operator Dashboard</title>
    <style>
        /* Internal CSS */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            background: linear-gradient(135deg, #74ebd5 0%, #acb6e5 100%);
            color: #333;
        }

        header {
            background-color: #343a40;
            color: white;
            padding: 20px;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        header h1 {
            font-size: 2.5em;
            margin: 0;
        }

        /* Flex container for buttons, ensuring responsiveness */
        .crud-buttons {
            display: flex;
            justify-content: space-around;
            align-items: flex-start;
            flex-wrap: wrap;
            margin: 50px auto;
            width: 80%;
        }

        /* Styling for each button container with description */
        .crud-action {
            background-color: #fff;
            padding: 20px;
            margin: 15px;
            flex: 1 1 calc(45% - 30px); /* Responsive: Each button takes up 45% width */
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        /* Button styling for each action */
        #createBtn {
            width: 100%;
            padding: 15px;
            background-color: #28a745; /* Green for Create */
            color: white;
            border: none;
            font-size: 18px;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        #createBtn:hover {
            background-color: #218838;
        }

        #readBtn {
            width: 100%;
            padding: 15px;
            background-color: #007bff; /* Blue for Read */
            color: white;
            border: none;
            font-size: 18px;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        #readBtn:hover {
            background-color: #0069d9;
        }

        #updateBtn {
            width: 100%;
            padding: 15px;
            background-color: #ffc107; /* Yellow for Update */
            color: white;
            border: none;
            font-size: 18px;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        #updateBtn:hover {
            background-color: #e0a800;
        }

        #deleteBtn {
            width: 100%;
            padding: 15px;
            background-color: #dc3545; /* Red for Delete */
            color: white;
            border: none;
            font-size: 18px;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        #deleteBtn:hover {
            background-color: #c82333;
        }

        /* Description text */
        .crud-action p {
            font-size: 16px;
            color: #666;
            margin-top: 15px;
            text-align: justify;
        }

        /* Animation when hovering over the card */
        .crud-action:hover {
            transform: translateY(-10px);
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
        }

        /* Responsive layout for smaller screens */
        @media (max-width: 768px) {
            .crud-action {
                flex: 1 1 100%; /* Full width on smaller screens */
            }
        }

        footer {
            text-align: center;
            padding: 20px;
            background-color: #343a40;
            color: white;
            margin-top: 50px;
            box-shadow: 0 -4px 8px rgba(0, 0, 0, 0.1);
        }
    </style>
    
</head>
<body>
    <header>
        <h1>CRUD Operator Dashboard</h1>
    </header>

    <!-- CRUD Buttons Section with Descriptions -->
    <section class="crud-buttons">
        <div class="crud-action">
            <a href="OrderTrackingPage.jsp"><button id="createBtn">Create</button></a>
            <p>Click to add a new entry. The 'Create' action opens a form for adding details to the system.</p>

        </div>

        <div class="crud-action">
            <a href="TrackOrderRead.jsp"><button id="readBtn">Read</button></a>
            <p>Click this button to view existing records. The 'Read' action retrieves data from the database and displays it for your review.</p>
        </div>

        <div class="crud-action">
            <a href="TrackUpdate.jsp"><button id="updateBtn">Update</button></a>
            <p>Click this button to modify an existing entry. The 'Update' action allows you to select a record and change its details as needed.</p>
        </div>

        <div class="crud-action">
            <a href="TrackDelete.jsp"><button id="deleteBtn">Delete</button></a>
            <p>Click to remove a record. This action permanently deletes data from the system.</p>

        </div>
    </section>

    <!-- Footer Section -->
    <footer>
        <p>&copy; 2024 CRUD Operator Dashboard. All rights reserved.</p>
    </footer>
    
    <!-- Internal JS -->
        <script>
        // JavaScript functions to simulate constructor-like behavior

        // Create Button Function
        function createFunction() {
            alert("Create constructor has been called. Prepare to add a new entry.");
            // Logic to simulate the constructor for creating can go here
        }

        // Read Button Function
        function readFunction() {
            alert("Read constructor has been called. Fetching data...");
            // Logic to simulate the constructor for reading can go here
        }

        // Update Button Function
        function updateFunction() {
            alert("Update constructor has been called. Prepare to modify existing data.");
            // Logic to simulate the constructor for updating can go here
        }

        // Delete Button Function
        function deleteFunction() {
            alert("Delete constructor has been called. Ready to remove data.");
            // Logic to simulate the constructor for deleting can go here
        }

        // Assign event listeners after DOM is loaded
        window.onload = function() {
            document.getElementById("createBtn").addEventListener("click", createFunction);
            document.getElementById("readBtn").addEventListener("click", readFunction);
            document.getElementById("updateBtn").addEventListener("click", updateFunction);
            document.getElementById("deleteBtn").addEventListener("click", deleteFunction);
        }
    </script>

    
</body>
</html>
