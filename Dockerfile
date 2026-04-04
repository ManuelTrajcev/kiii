FROM nginx:1.25-alpine

# Copy the local index.html file to the appropriate directory in the Nginx container
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 for the web server
EXPOSE 80

# Run Nginx in the foreground to keep the container running
CMD ["nginx", "-g", "daemon off;"]