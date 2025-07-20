# Use official Node.js LTS image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy all project files
COPY . .

# Expose the port your app runs on (adjust if different)
EXPOSE 5000

# Command to start your app
CMD ["npm", "start"]
