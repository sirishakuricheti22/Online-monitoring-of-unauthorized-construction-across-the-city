<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>News Related to Unauthorized Constructions</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5;
        }
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #fff;
            padding: 6px 12px;
            border-radius: 12px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
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
            background-color: #f0f0f0;
        }
        .content {
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            margin: 20px auto;
            width: 95%;
            max-width: 1000px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }
        table, th, td {
            border: 1px solid black;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
    </style>
</head>
<body>

    <!-- Navbar -->
    <div class="navbar">
        <div class="logo">
            <span style="color: blue;">Unauthorized</span>
            <span style="color: green;">Constructions</span>
        </div>
        <div class="button-group">
            <a href="ucpage.html">
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

    <!-- District Selection Form -->
    <div class="content">
        <h2>Select District to View Data</h2>
        <form action="" method="POST">
            <label for="district">Choose a district:</label>
            <select name="district" id="district">
                <option value="Hyderabad">Hyderabad</option>
                <option value="Rangareddy">Ranga Reddy</option>
                <option value="Medchal-Malkajgiri">Medchal-Malkajgiri</option>
            </select>
            <input type="submit" value="View Data">
        </form>

        <?php
        // Database connection details
        $host = 'localhost'; // Double-check if this is the correct port
        $dbname = 'unauthorizedconstructions';
        $username = 'root'; 
        $password = ''; 

        try {
            // Create a new PDO instance
            $conn = new PDO("mysql:host=localhost;dbname=unauthorizedconstructions", "root", "");
            $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

            // Check if district is selected
            if (isset($_POST['district'])) {
                $selected_district = $_POST['district'];

                // Prepare the SQL query to fetch data based on the selected district
                $stmt = $conn->prepare("SELECT sno, district, mandal, village, lake_name, lake_id, ftl_link, cadastral_link, synos_bufferzone_link FROM uncon WHERE district = :district");
                $stmt->bindParam(':district', $selected_district);
                $stmt->execute();

                // Fetch the data as an associative array
                $lakeDetails = $stmt->fetchAll(PDO::FETCH_ASSOC);

                // Check if data was retrieved
                if (count($lakeDetails) > 0) {
                    echo "<h3>Data fetched for district: " . htmlspecialchars($selected_district) . "</h3>";
                    echo "<table>
                            <tr>
                                <th>SNO</th>
                                <th>District</th>
                                <th>Mandal</th>
                                <th>Village</th>
                                <th>Lake Name</th>
                                <th>Lake ID</th>
                                <th>FTL Link</th>
                                <th>Cadastral Link</th>
                                <th>Synos & Buffer Zone Link</th>
                            </tr>";

                    // Loop through the data and display it in table rows
                    foreach ($lakeDetails as $row) {
                        echo "<tr>";
                        echo "<td>" . htmlspecialchars($row['sno']) . "</td>";
                        echo "<td>" . htmlspecialchars($row['district']) . "</td>";
                        echo "<td>" . htmlspecialchars($row['mandal']) . "</td>";
                        echo "<td>" . htmlspecialchars($row['village']) . "</td>";
                        echo "<td>" . htmlspecialchars($row['lake_name']) . "</td>";
                        echo "<td>" . htmlspecialchars($row['lake_id']) . "</td>";
                        echo "<td><a href='" . htmlspecialchars($row['ftl_link']) . "'>View</a></td>";
                        echo "<td><a href='" . htmlspecialchars($row['cadastral_link']) . "'>View</a></td>";
                        echo "<td><a href='" . htmlspecialchars($row['synos_bufferzone_link']) . "'>View</a></td>";
                        echo "</tr>";
                    }

                    echo "</table>";
                } else {
                    echo "No data found for the selected district.";
                }
            }
        } catch (PDOException $e) {
            echo "Connection failed: " . $e->getMessage();
        }
        ?>
    </div>

</body>
</html>
