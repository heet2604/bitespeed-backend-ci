# Use Node.js LTS version
FROM node:18

# Create app directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy source code
COPY . .

# Expose port (change if your app uses another)
EXPOSE 3001

# Start the app
CMD ["node", "server.js"]
