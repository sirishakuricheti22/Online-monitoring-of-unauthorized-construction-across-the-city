<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Report Unauthorized Constructions</title>
    <style>
       body {
            font-family: Arial, sans-serif;
            margin: 20px;
            padding: 20px;
            max-width: 1200px;
            margin: auto;
            background-color: #f9f9f9;
            border: 1px solid #ddd;
            border-radius: 8px;
        }
        h4 {
            margin-left: 30px; /* Adjust this value as needed */
            font-size: 32px; /* Adjust the font size as needed */
            font-weight: bold;
            color: #333;
            position: relative;
            display: inline-block;
            overflow: hidden; /* Ensures that the shine doesn't extend outside the text */
        }

        h4::before {
            content: '';
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 100%;
            background: linear-gradient(90deg, transparent, rgba(255, 255, 255, 0.6), transparent);
            animation: shine 2s infinite;
        }

        @keyframes shine {
            0% {
                left: -100%;
            }
            50% {
                left: 100%;
            }
            100% {
                left: 100%;
            }
        }

        .container {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            justify-content: center;
        }

        .card {
            background-color: white;
            border: 1px solid #ddd;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            width: 48%;
            height: auto;
            padding: 16px;
            box-sizing: border-box;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .card img {
            width: 90%;
            height: 180px;
            object-fit: cover;
            border-radius: 8px;
        }

        .card h3 {
            margin: 10px 0 5px;
            font-size: 18px;
            text-align: center;
        }

        .card p {
            margin: 5px 0;
            color: #555;
            font-size: 14px;
            text-align: center;
        }

        .card p:last-of-type {
            margin-top: auto;
        }
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #fff;
            padding: 6px 12px;
            border-radius: 12px; /* Curved edges */
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1); /* Elevation */
            margin: 20px auto;
            width: 95%;
            max-width: 1200px;
            min-height: 35px;
        }
        .logo {
            font-size: 19px;
            font-weight: bold;
            color: black;
        }
        .button-group {
            display: flex;
            gap: 10px;
        }
        .text-button {
            background: none;
            border: none;
            font-size: 12px;
            cursor: pointer;
            color: #555;
            padding: 6px;
            border-radius: 6px;
            transition: color 0.3s, background-color 0.3s;
        }
        .text-button:hover {
            color: #000;
            background-color: #f0f0f0; /* Subtle hover effect */
        }
        .content {
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            margin: 20px auto;
            max-width: 800px;
            position: relative; /* For absolute positioning of the overlay */
        }
      
        @keyframes scale-up {
            0% {
                transform: scale(0);
            }
            100% {
                transform: scale(1);
            }
        }
        @keyframes fade-in {
            0% {
                opacity: 0;
            }
            100% {
                opacity: 1;
            }
        }
        /* Disabled overlay styles */
        .disabled-overlay {
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background-color: rgba(200, 200, 200, 0.7); /* Semi-transparent gray */
            display: flex;
            justify-content: center;
            align-items: center;
            border-radius: 8px;
            z-index: 1; /* On top of the content */
        }
    </style>
</head>
<body>

    <!-- Include Navbar -->
    <div class="navbar">
        <div class="logo">
            <span style="color: blue;">Unauthorized</span>
            <span style="color: green;">Constructions</span>
        </div>
        <div class="button-group">
            <a href="fetch_data.php">
                <button class="text-button">Unauthorized Constructions</button>
            </a>
            <a href="reports.php">
                <button class="text-button">Report</button>
            </a>
            <a href="newspage.php">
                <button class="text-button">News</button>
            </a>
        </div>
    </div>

    <h4>Information about unauthorized constructions which are reported by users</h4>
    <div class="container">
<?php
    // Database connection
    $conn = new mysqli('localhost', 'root', '', 'unauthorizedconstructions');

    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Fetch data from the database
    $sql = "SELECT image_path, location, description, created_at FROM reports ORDER BY created_at DESC";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            echo '<div class="card">';
            echo '<img src="' . htmlspecialchars($row['image_path']) . '" alt="User Image">';
            echo '<h3>Location: ' . htmlspecialchars($row['location']) . '</h3>';
            echo '<p>Description: ' . htmlspecialchars($row['description']) . '</p>';
            echo '<p>Date Posted: ' . htmlspecialchars($row['created_at']) . '</p>';
            echo '</div>';
        }
    } else {
        echo "<p>No data available.</p>";
    }

    $conn->close();
?>
    </div>
   
</body>
</html>





