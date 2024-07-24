# Use an official PHP 7.4 image as a base
FROM php:7.4-fpm

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages
RUN apt-get update && apt-get install -y nginx

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NAME World

# Run app.php when the container launches
CMD ["php", "app.php"]

