# Use the official WordPress image as the base image
FROM wordpress:latest

# Set environment variables
ENV WORDPRESS_DB_HOST=db-prod.crw0iyascsde.us-east-1.rds.amazonaws.com
ENV WORDPRESS_DB_USER=chakri
ENV WORDPRESS_DB_PASSWORD=$DB_PASSWORD
ENV WORDPRESS_DB_NAME=chakri

# Expose WordPress port
EXPOSE 80

# Specify volume for WordPress Data
VOLUME /var/www/html
