# Use the official WordPress image as the base image
FROM wordpress:latest

# Set environment variables
ENV WORDPRESS_DB_HOST=${{ secrets.DB_HOST_PROD }}
ENV WORDPRESS_DB_USER=chakri
ENV WORDPRESS_DB_PASSWORD=${{ secrets.DB_PASSWORD }}
ENV WORDPRESS_DB_NAME=chakri

# Expose WordPress port
EXPOSE 80

# Specify volume for WordPress Data
VOLUME /var/www/html
