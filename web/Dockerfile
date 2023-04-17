# Use PHP 8.1 as default PHP version
# Use Apache as the web server
FROM php:8.1-apache

# Install dependencies that needed & configure Apache modules
RUN apt-get update && \
docker-php-ext-install mysqli pdo pdo_mysql && \
a2enmod rewrite && \
chmod -R 755 /var/www/html

WORKDIR /var/www/html

# Copy the application files
COPY ./app /var/www/html

# Copy the conf files
COPY ./conf/000-default.conf /etc/apache2/sites-available/000-default.conf

CMD ["apache2ctl", "-D", "FOREGROUND"]