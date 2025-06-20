# Use official Node.js image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy rest of the backend code
COPY . .

# Expose the port your app runs on
EXPOSE 5001

# Start the server
CMD ["node", "server.js"]
