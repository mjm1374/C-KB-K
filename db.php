<?php
$servername = "localhost";
$username = "ckbkDev";
$password = ":6.nyMg]T-3dVcyD";

// Create connection
$conn = new mysqli($servername, $username, $password);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
echo "Connected successfully";
?>