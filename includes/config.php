<?php
// Database configuration for Premium Accounts System
$dsn = 'mysql:host=localhost;dbname=tkcoke_premium';
$username = 'root';
$password = '';
$options = [
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_OBJ,
];
try {
    $dbh = new PDO($dsn, $username, $password, $options);
} catch (PDOException $e) {
    exit('Database connection failed: ' . $e->getMessage());
}
?>
