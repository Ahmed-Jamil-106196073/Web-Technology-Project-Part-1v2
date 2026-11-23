<?php
$host = "localhost";
$user = "root";
$password = "";
$database = "job_recruitment";

$conn = new mysqli($host, $user, $password, $database);

if ($conn->connect_error) {
    error_log("Database connection failed: " . $conn->connect_error);
    http_response_code(500);
    exit("Database connection failed.");
}

$conn->set_charset("utf8mb4");
?>