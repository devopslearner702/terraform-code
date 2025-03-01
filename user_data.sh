#!/bin/bash
# Update the system
apt-get update -y
apt-get upgrade -y

# Install Apache
apt-get install -y apache2

# Enable Apache to start on boot
systemctl enable apache2

# Start Apache service
systemctl start apache2

# Set server details in Apache's main configuration file
echo "ServerName localhost" >> /etc/apache2/apache2.conf
echo "ServerAdmin webmaster@localhost" >> /etc/apache2/apache2.conf

# Create a custom HTML page to verify Apache installation
echo "<html><body><h1>Apache Web Server is Running on Ubuntu!</h1></body></html>" > /var/www/html/index.html

# Restart Apache to apply changes
systemctl restart apache2
