# Use a base image with a web server installed
FROM nginx:latest

# Copy the index.html file to the nginx default HTML directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 for the web server
EXPOSE 80

# Start the nginx web server
CMD ["nginx", "-g", "daemon off;"]
