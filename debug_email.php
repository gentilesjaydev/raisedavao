<?php
require_once 'includes/brevo_mailer.php';

// Test data
$test_email = 'gentilesjay8426@gmail.com'; // Derived from user screenshot
$test_name = 'Jay Gentiles Test';
$dummy_pdf = 'assets/pdfs/test.pdf';

// Ensure assets/pdfs exists
if (!is_dir('assets/pdfs')) {
    mkdir('assets/pdfs', 0777, true);
}

// Create a dummy PDF if it doesn't exist
file_put_contents($dummy_pdf, '%PDF-1.4 test dummy');

echo "Attempting to send test email to $test_email...\n";
$result = sendCovenantEmail($test_email, $test_name, $dummy_pdf);

if ($result) {
    echo "SUCCESS: Email sent successfully.\n";
} else {
    echo "FAILED: Check PHP error logs (or verify API key and sender email).\n";
}
?>