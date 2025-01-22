# Use an official Nginx image as the base
FROM nginx:alpine

# Set the working directory
WORKDIR /usr/share/nginx/html

# Copy the application files into the container
COPY . .

# Copy the custom Nginx configuration file
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 5000 inside the container
EXPOSE 5000

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
