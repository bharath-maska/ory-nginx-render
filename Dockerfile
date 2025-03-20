# Use the official Nginx base image
FROM nginx:latest

# Copy the custom Nginx configuration
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80 for incoming traffic
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
