<?php
require_once 'includes/db.php';

try {
    $pdo->exec("ALTER TABLE users ADD COLUMN signature_file VARCHAR(255) NULL AFTER password");
    echo "Column 'signature_file' added successfully to 'users' table.";
} catch (PDOException $e) {
    echo "Error or Already Exists: " . $e->getMessage();
}
?>
