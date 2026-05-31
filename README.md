# RAISE DAVAO - Covenant of Commitment System

![RAISE Davao](https://img.shields.io/badge/Project-RAISE%_Davao-0ea5e9?style=for-the-badge)

A complete digital signing and document generation system for the **Regional Alliance for Industry-Supported Skills & Education in IT (RAISE) Davao**. This application manages the digital signing of the "Covenant of Commitment", automatic PDF generation with signatures, email delivery, and a live "Signature Wall" for events.

## Features

- **Authentication & Roles**: Secure login and registration with Role-based routing for Partners and Administrators.
- **Digital Signature Collection**: Integrated Signature Pad.js for drawing or uploading signatures during registration.
- **PDF Generation Engine**: FPDF-based document creator that dynamically stamps signatures and audit metadata onto the Covenant of Commitment.
- **Automated Email Delivery**: Brevo API integration automatically emails the professionally generated PDF to partners upon signing.
- **Live Signature Wall**: A "Projector Mode" display that automatically refreshes every 5 seconds to showcase new signatories live at events.
- **Partner Dashboard**: A central hub where partners can view and download their signed endorsements.
- **Admin Management & Analytics**: Real-time statistics, user control panels, full CRUD for submissions, and CSV data export functionality.
- **Clean URLs**: `.htaccess` configuration for SEO-friendly, extension-less routing (e.g., `/covenant` instead of `covenant.php`).

## Setup & Installation

### Requirements
- PHP 8.x
- MySQL / MariaDB
- Web Server (Apache with `mod_rewrite` enabled for clean URLs)

### Installation Steps

1. **Clone the repository:**
   ```bash
   git clone https://github.com/gentilesjaydev/raisedavao.git
   cd raisedavao
   ```

2. **Database Configuration:**
   - Create a MySQL database (e.g., `raise_davao_db`).
   - Run the `setup_database.php` script in your browser to auto-create the necessary `users` and `covenant_submissions` tables, or manually import the `raise_davao_db.sql` file.

3. **Environment Variables:**
   - Create a `.env` file in the root directory (this file is `.gitignore`d).
   - Add your Brevo API key to the `.env` file for email functionality:
     ```env
     BREVO_API_KEY=your_brevo_api_key_here
     ```
   - *Note: Ensure your sender email in `includes/brevo_mailer.php` is verified in your Brevo account (default: `raisedavao@gmail.com`).*

4. **Serve the Application:**
   - Place the project folder in your web server's document root (e.g., `htdocs` or `www`).
   - Access the system via your local server (e.g., `http://localhost/RAISEDAVAO/`).

## Project Structure

- `admin/` - Administrative dashboard and user management.
- `assets/` - CSS, JS, images, and other static assets.
- `includes/` - Reusable PHP components (Mailer, DB connection, FPDF).
- `vendor/` - Third-party libraries.
- `index.php` - Landing page.
- `login.php` / `register.php` - Authentication flows.
- `covenant.php` / `signature-wall.php` - Core application views.

## Future Enhancements
- Celebration effects (sound/toast) on the Signature Wall.
- Custom typography for FPDF generation (Montserrat/Inter).
- CSRF protection implementation for enhanced security.
- Password Reset flow via Brevo integration.

## License
&copy; 2026 RAISE DAVAO. All rights reserved.
