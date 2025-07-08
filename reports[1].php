<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Report Unauthorized Constructions</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5; /* Light background for contrast */
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
        form {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }
        label {
            font-weight: bold;
        }
        input[type="text"],
        input[type="email"],
        textarea {
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            width: 100%;
            box-sizing: border-box;
        }
        input[type="file"] {
            margin-top: 5px;
        }
        button[type="submit"] {
            background-color: blue;
            color: white;
            border: none;
            padding: 10px;
            border-radius: 5px;
            cursor: pointer;
        }
        button[type="submit"]:hover {
            background-color: darkblue;
        }
        /* Tick mark animation styles */
        .tick-container {
            display: none;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            margin-top: 20px;
        }
        .tick {
            width: 50px;
            height: 50px;
            border: 5px solid green;
            border-radius: 50%;
            position: relative;
            animation: scale-up 0.5s ease forwards;
        }
        .tick::after {
            content: '';
            position: absolute;
            width: 15px;
            height: 30px;
            border: solid green;
            border-width: 0 4px 4px 0;
            transform: rotate(45deg);
            top: 10px;
            left: 18px;
            opacity: 0;
            animation: fade-in 0.5s ease forwards 0.5s; /* Delay for fade in */
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

    <div id="report" class="content">
        <h1>Report Unauthorized Constructions</h1>
        <form id="reportForm" action="" method="post" enctype="multipart/form-data">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>

        <label for="location">Location:</label>
        <input type="text" id="location" name="location" required>

        <label for="description">Description:</label>
        <textarea id="description" name="description" rows="4" required></textarea>

        <label for="image">Upload Your Image:</label>
        <input type="file" id="image" name="image" accept="image/*" required>

        <button type="submit">Submit</button>
    </form>

        <!-- Tick mark animation container -->
        <div id="tickContainer" class="tick-container">
            <div class="tick"></div>
            <p>Report Submitted Successfully!</p>
        </div>
    </div>

    <script>
        // Handle form submission
        const reportForm = document.getElementById('reportForm');
        const tickContainer = document.getElementById('tickContainer');

        reportForm.addEventListener('submit', function(event) {
            event.preventDefault(); // Prevent default form submission

            // Hide the form
            reportForm.style.display = 'none';

            // Show tick mark animation
            tickContainer.style.display = 'flex';

            // Optionally, hide the tick mark after a few seconds
            setTimeout(() => {
                tickContainer.style.display = 'none';
                reportForm.reset(); // Reset form fields (optional)
                reportForm.style.display = 'flex'; // Show the form again if needed
            }, 3000); // Adjust the timeout duration as needed
        });
    </script>
    <?php
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        error_reporting(E_ALL);
        ini_set('display_errors', 1);

        $name = $_POST['name'];
        $email = $_POST['email'];
        $location = $_POST['location'];
        $description = $_POST['description'];
        $image = $_FILES['image'];

        // Validate the image upload
        if ($image['error'] !== UPLOAD_ERR_OK) {
            die("Image upload failed: " . $image['error']);
        }

        // Move the uploaded image to a designated folder
        $uploadDir = 'uploads/';
        if (!is_dir($uploadDir)) {
            mkdir($uploadDir, 0777, true);
        }
        $uploadFile = $uploadDir . basename($image['name']);
        if (!move_uploaded_file($image['tmp_name'], $uploadFile)) {
            die("Failed to save uploaded image.");
        }

        // Database connection
        $conn = new mysqli('localhost', 'root', '', 'unauthorizedconstructions');

        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }

        // Insert form data into the database
        $stmt = $conn->prepare("INSERT INTO reports (name, email, location, description, image_path) VALUES (?, ?, ?, ?, ?)");
        if (!$stmt) {
            die("Statement preparation failed: " . $conn->error);
        }

        $stmt->bind_param("sssss", $name, $email, $location, $description, $uploadFile);

        if ($stmt->execute()) {
            echo "Reported successful...";
        } else {
            echo "Error: " . $stmt->error;
        }

        $stmt->close();
        $conn->close();
    }
?>

</body>
</html>



