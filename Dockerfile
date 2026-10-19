# Use lightweight Nginx as the web server
FROM nginx:alpine

# Set the working directory for website files
WORKDIR /usr/share/nginx/html

# Remove the default Nginx website
RUN rm -rf ./*

# Copy COSARC ERP application files
COPY index.html .
COPY app.js .
COPY config.js .
COPY styles.css .

# Expose port 80
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
