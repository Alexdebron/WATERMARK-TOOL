# Base image
FROM node:20-alpine

# Set working directory
WORKDIR /app

# Copy package files (if there are any, but this project is HTML only)
# COPY package.json ./
# RUN npm install

# Copy the project contents
COPY . .

# If server needed, install a static server, e.g. serve
RUN npm install -g serve

# Expose port (serve uses 5000 by default, or any port you choose)
EXPOSE 5000

# Command to run the application
CMD ["serve", "-s", ".", "-l", "5000"]
