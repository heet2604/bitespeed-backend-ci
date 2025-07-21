FROM node:18

WORKDIR /app

COPY backend/package*.json ./        # Pull from backend/
RUN npm install

COPY backend/. .                     # Copy rest of the backend files

EXPOSE 3001
CMD ["npm", "start"]
