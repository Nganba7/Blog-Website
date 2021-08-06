<?php

$host = 'localhost';
$user = 'root';
$pass = 'admin';
$db_name = 'wording';

$conn = new MySQLi($host,$user,$pass,$db_name);

if($conn->connect_error) {
	die('Database connection error: ' . $conn->connect_error);
}
