# Use the official Nginx base image
FROM nginx:latest

# Remove default Nginx config to avoid conflicts
RUN rm /etc/nginx/conf.d/default.conf

# Copy the custom Nginx configuration
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80 for incoming traffic
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
