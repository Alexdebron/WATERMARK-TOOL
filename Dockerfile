# Lightweight web server image
FROM nginx:alpine

# Remove default nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy your HTML, CSS, JS into nginx web root
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Nginx auto-start
CMD ["nginx", "-g", "daemon off;"]
