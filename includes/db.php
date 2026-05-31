<?php
// Set Timezone for Philippines
date_default_timezone_set('Asia/Manila');

// Smart Environment Detection
$is_local = in_array($_SERVER['HTTP_HOST'], ['localhost', '127.0.0.1']);

if ($is_local) {
    // LOCAL XAMPP SETTINGS
    $host = 'localhost';
    $dbname = 'raise_davao_db';
    $username = 'root';
    $password = '';
} else {
    // INFINITYFREE HOSTING SETTINGS
    $host = 'sql207.infinityfree.com';
    $dbname = 'if0_41369119_raise_davao_db';
    $username = 'if0_41369119';
    $password = 'p8I5rtD7GW3B7';
}

try {
    // For Remote Hosting, it's better to connect directly to the DB name
    $pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8mb4", $username, $password);

    // Set attributes for Error handling and default fetch mode
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $pdo->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);

    // Sync MySQL timezone with Philippines
    $pdo->exec("SET time_zone = '+08:00'");

} catch (PDOException $e) {
    die("Database Connection failed: " . $e->getMessage());
}
?>