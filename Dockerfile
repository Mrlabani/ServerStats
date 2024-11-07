# Use the official Node.js image
FROM node:16

# Create and set the working directory
WORKDIR /app

# Copy package.json and package-lock.json if they exist, and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of your application code
COPY . .

# Expose the port (optional, mainly for debugging)
EXPOSE 3000

# Start the bot
CMD ["node", "app.js"]
