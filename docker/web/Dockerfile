FROM php:8.2-apache

# Enable Apache mod_rewrite and allow .htaccess overrides
RUN a2enmod rewrite \
 && printf "<Directory /var/www/html>\n    AllowOverride All\n</Directory>\n" > /etc/apache2/conf-available/allow-override.conf \
 && a2enconf allow-override

# Install system dependencies for GD
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    && rm -rf /var/lib/apt/lists/*

# Configure and install PHP extensions needed by the app
RUN docker-php-ext-configure gd --with-freetype --with-jpeg \
 && docker-php-ext-install pdo pdo_mysql gd

# Expose default Apache port
EXPOSE 80

# The app will be mounted into /var/www/html/e-commerce via docker-compose
