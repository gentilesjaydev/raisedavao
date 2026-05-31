<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

require_once 'includes/db.php'; // This connects and automatically creates the DB

echo "<h2>System Database Setup</h2>";

try {
    // 1. Create 'users' table
    $sqlUsers = "
        CREATE TABLE IF NOT EXISTS users (
            id INT AUTO_INCREMENT PRIMARY KEY,
            full_name VARCHAR(150) NOT NULL,
            email VARCHAR(150) UNIQUE NOT NULL,
            password VARCHAR(255) NOT NULL,
            role ENUM('admin', 'user') DEFAULT 'user',
            status ENUM('active', 'inactive') DEFAULT 'active',
            created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
    ";
    $pdo->exec($sqlUsers);
    echo "<p style='color:green;'>✅ Users table created successfully.</p>";

    // 2. Create 'covenant_submissions' table
    $sqlCovenant = "
        CREATE TABLE IF NOT EXISTS covenant_submissions (
            id INT AUTO_INCREMENT PRIMARY KEY,
            user_id INT NULL, 
            organization_name VARCHAR(255) NOT NULL,
            institution_type VARCHAR(100) NOT NULL,
            represented_by VARCHAR(255) NOT NULL,
            position_title VARCHAR(255) NOT NULL,
            email_address VARCHAR(150) NOT NULL,
            contact_number VARCHAR(50),
            signature_file VARCHAR(255) NOT NULL, /* Stores path to the generated PNG signature */
            pdf_file VARCHAR(255) NULL, /* Stores path to the generated PDF with FPDF */
            ip_address VARCHAR(45),
            signed_at DATETIME DEFAULT CURRENT_TIMESTAMP,
            FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE SET NULL
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
    ";
    $pdo->exec($sqlCovenant);
    echo "<p style='color:green;'>✅ Covenant Submissions table created successfully.</p>";

    // 3. Create Default Admin Account
    $adminEmail = 'admin@raisedavao.com';
    $stmt = $pdo->prepare("SELECT id FROM users WHERE email = ?");
    $stmt->execute([$adminEmail]);
    
    if ($stmt->rowCount() == 0) {
        $adminPass = password_hash('Admin123!', PASSWORD_DEFAULT);
        $insertAdmin = $pdo->prepare("INSERT INTO users (full_name, email, password, role) VALUES (?, ?, ?, ?)");
        $insertAdmin->execute(['System Super Admin', $adminEmail, $adminPass, 'admin']);
        
        echo "<div style='background:#f4f7fb; padding:15px; border-left:4px solid #0ea5e9; margin-top:20px;'>
                <h4>Default Admin Account Created!</h4>
                <p><strong>URL:</strong> /admin/login.php (We will build this!)</p>
                <p><strong>Email:</strong> $adminEmail</p>
                <p><strong>Password:</strong> Admin123!</p>
              </div>";
    } else {
        echo "<p style='color:#64748b;'>Default admin account already exists.</p>";
    }

    echo "<h3 style='margin-top:30px; color:#1e40af;'>🚀 Database Architecture is fully setup. You can now process submissions!</h3>";

} catch (PDOException $e) {
    echo "<p style='color:red;'>Setup Failed: " . $e->getMessage() . "</p>";
}
?>
