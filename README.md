# ![php](https://img.shields.io/badge/Php-8993BE?style=for-the-badge&logo=php&logoColor=white) E-commerce Website

E-commerce web application built using php routing. Instead of relying on the web server to map the request path to a file, all requests are forwarded to [index.php](/src/index.php) which has defined routes and callbacks registered to each route. If the request URI is a valid route, the callback returns a page to the user else, redirected to the 404 page.

[Live Demo](https://web.archive.org/web/20220907155514/https://tomiwa.com.ng/yemyem/)

## Features

- Login and registration system
- Password reset
- Ordering system
- Update profile
- Order history
- CSRF protection
- Input sanitisation
- Sends invoice to user's email using ([sendgrid](https://sendgrid.com))
- Livechat ([intercom](https://intercom.com))
  #### Admin Panel
- Create, modify and delete products, customers and faq
- Unlimited product pictures
- Image compression ([php_gd](https://php.net/manual/en/book.image.php)): 50%
- Image magic bytes verification
- Create or select product category
- Export/Import database
- Last 7 days sales and revenue stats using Chartjs
- Modify contact details and privacy policy
- Send email to users ([sendgrid](https://sendgrid.com))

## Setup

### Docker Setup (Recommended)

The easiest way to run the application is using Docker Compose:

**Prerequisites:**

- Docker Desktop installed

**Quick Start:**

1. Clone the repository
2. Navigate to the project directory
3. Start the application:
   ```bash
   docker compose -f compose-docker.yml up -d
   ```
4. Access the application at: http://localhost:8080/e-commerce/

**Docker Commands:**

- **Start application:** `docker compose -f compose-docker.yml up -d`
- **Stop application:** `docker compose -f compose-docker.yml down`
- **View logs:** `docker compose -f compose-docker.yml logs -f`
- **Restart containers:** `docker compose -f compose-docker.yml restart`
- **Rebuild after code changes:** `docker compose -f compose-docker.yml up -d --build`
- **Stop and remove all data:** `docker compose -f compose-docker.yml down -v` ⚠️ (This will delete the database)

**What's Included:**

- Apache + PHP 8.2 with all required extensions (PDO, PDO_MySQL, GD)
- MySQL 8.0 database with auto-import of sample data
- Persistent database storage in Docker volume
- Pre-configured environment variables

### Manual Setup

If you prefer to run without Docker:

- Install Apache, PHP 8.2+, and MySQL
- Create database
- Execute [db-init/001_ecommerce_dump.sql](db-init/001_ecommerce_dump.sql)
- Configure database connection in [db.php](src/views/db.php)
- Enable the php_gd/gd extension in php.ini
- Configure virtual host with document root pointing to `/src` directory

### Optional Configuration

- **SendGrid Email (Optional):** Configure environment variables `SENDGRID_API_KEY`, `SENDGRID_FROM_EMAIL`, and `SENDGRID_FROM_NAME` for email notifications
- **Intercom Livechat (Optional):** Enter intercom app id in [footer.php](src/views/footer.php)

## Admin Credentials

```
uri: /admin/login
username: admin
password: 123456
```

## Screenshots

![Login](screenshots/login.png)
![Register](screenshots/register.png)
<img width="994" height="735" alt="Screenshot 2026-01-03 at 15 45 20" src="https://github.com/user-attachments/assets/2439246d-e26e-478b-a23e-3ae52be6efc6" />
<img width="1263" height="719" alt="Screenshot 2026-01-03 at 15 24 59" src="https://github.com/user-attachments/assets/eb02616d-35ab-4a10-aa26-eae96b77ee99" />
<img width="1017" height="685" alt="Screenshot 2026-01-03 at 15 46 10" src="https://github.com/user-attachments/assets/2ce89f91-7810-42a9-becd-cdb0d39713b8" />
![Order Success](screenshots/success.png)
![Profile](screenshots/profile.png)
![Orders](screenshots/orders.png)
![Order Details](screenshots/order-details.png)
![Forgot Password](screenshots/forgot-password.png)
![Invoice](screenshots/invoice.png)
![Admin Login](screenshots/admin-login.png)
![Admin Home](screenshots/admin-home1.png)
![Admin Home](screenshots/admin-home2.png)
![Admin Customers](screenshots/admin-customers.png)
![Admin Orders](screenshots/admin-orders.png)
![Admin Products](screenshots/admin-products.png)
![Admin Reset Password](screenshots/admin-reset-password.png)
![Admin Settings](screenshots/admin-settings.png)
