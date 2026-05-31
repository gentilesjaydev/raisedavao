<?php
/**
 * Brevo Mailer Utility
 * Uses Brevo REST API v3 to send transactional emails.
 */

// Load .env file if available
$envFile = __DIR__ . '/../.env';
if (file_exists($envFile)) {
    $lines = file($envFile, FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES);
    foreach ($lines as $line) {
        if (strpos(trim($line), '#') === 0) continue;
        if (strpos($line, '=') !== false) {
            list($name, $value) = explode('=', $line, 2);
            putenv(trim($name) . '=' . trim($value));
        }
    }
}

// Replace this with your actual Brevo API Key or set it in .env
define('BREVO_API_KEY', getenv('BREVO_API_KEY') ?: '');

function sendCovenantEmail(string $recipient_email, string $recipient_name, string $pdf_path): bool
{

    $url = "https://api.brevo.com/v3/smtp/email";

    // Read the PDF content and encode it to base64 for attachment
    $pdf_content = base64_encode(file_get_contents($pdf_path));
    $pdf_filename = basename($pdf_path);

    $data = [
        "sender" => [
            "name" => "RAISE Davao",
            "email" => "raisedavao@gmail.com" // Update with your sender email verified in Brevo
        ],
        "to" => [
            ["email" => $recipient_email, "name" => $recipient_name]
        ],
        "subject" => "Signed Covenant of Commitment - RAISE Davao",
        "htmlContent" => "
            <div style='font-family: \"Segoe UI\", Helvetica, Arial, sans-serif; background-color: #f8fafc; padding: 40px 20px;'>
                <div style='max-width: 600px; margin: 0 auto; background-color: #ffffff; border-radius: 16px; overflow: hidden; box-shadow: 0 10px 15px -3px rgba(0, 0, 0, 0.1);'>
                    <!-- Header -->
                    <div style='background-color: #0f172a; padding: 30px; text-align: center;'>
                        <h1 style='color: #ffffff; margin: 0; font-size: 24px; letter-spacing: 1px;'>RAISE <span style='color: #0ea5e9;'>DAVAO</span></h1>
                        <p style='color: #94a3b8; margin: 10px 0 0 0; font-size: 14px;'>Regional Alliance for Industry-Supported Skills & Education in IT</p>
                    </div>
                    
                    <!-- Body -->
                    <div style='padding: 40px 30px; color: #1e293b;'>
                        <h2 style='color: #0ea5e9; font-size: 22px; margin-top: 0;'>Congratulations, $recipient_name!</h2>
                        <p style='font-size: 16px; line-height: 1.6;'>You have successfully signed <strong>The Covenant of Commitment</strong>. We are honored to have you join this alliance dedicated to bridging the gap between academic preparation and industry excellence in the Davao Region.</p>
                        
                        <div style='margin: 30px 0; padding: 20px; background-color: #f1f5f9; border-left: 4px solid #0ea5e9; border-radius: 4px;'>
                            <p style='margin: 0; font-size: 15px; color: #475569;'>Your signed copy of <strong>The Covenant of Commitment</strong> has been generated and is attached to this email for your records.</p>
                        </div>
                        
                        <p style='font-size: 16px; line-height: 1.6;'>Thank you for your commitment to building the future of IT education and workforce development in the Davao Region.</p>
                        
                        <hr style='border: 0; border-top: 1px solid #e2e8f0; margin: 30px 0;'>
                        
                        <p style='margin: 0; font-size: 14px; color: #64748b;'>Best Regards,</p>
                        <p style='margin: 5px 0 0 0; font-size: 16px; font-weight: 700; color: #0f172a;'>The RAISE Davao Team</p>
                    </div>
                    
                    <!-- Footer -->
                    <div style='background-color: #f8fafc; padding: 20px; text-align: center; border-top: 1px solid #e2e8f0;'>
                        <p style='margin: 0; font-size: 12px; color: #94a3b8;'>&copy; 2026 RAISE DAVAO. All rights reserved.</p>
                        <p style='margin: 5px 0 0 0; font-size: 12px; color: #94a3b8;'>Luxebridge Suites Davao, Maa, Davao City</p>
                    </div>
                </div>
            </div>
        ",
        "attachment" => [
            [
                "content" => $pdf_content,
                "name" => $pdf_filename
            ]
        ]
    ];

    $ch = curl_init($url);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_POST, true);
    curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($data));
    curl_setopt($ch, CURLOPT_HTTPHEADER, [
        'api-key: ' . BREVO_API_KEY,
        'Content-Type: application/json',
        'Accept: application/json'
    ]);

    $response = curl_exec($ch);
    $httpCode = curl_getinfo($ch, CURLINFO_HTTP_CODE);
    curl_close($ch);

    if ($httpCode >= 200 && $httpCode < 300) {
        return true;
    } else {
        error_log("Brevo API Error: " . $response);
        return false;
    }
}
?>