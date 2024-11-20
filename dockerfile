# Use the official Nginx image from the Docker Hub
FROM nginx:latest

# Set the working directory
WORKDIR /usr/share/nginx/html

# Copy all HTML files and the CSS file into the Nginx HTML directory
COPY index.html .
COPY golkonda.html .
COPY gwaliorfort.html .
COPY hawamahel.html .
COPY tajmahal.html .
COPY sachistupa.html .
COPY indiagate.html .
COPY style.css .
COPY images/ ./images/

# Expose port 80 to the outside world
EXPOSE 80
