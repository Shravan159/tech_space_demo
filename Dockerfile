# Step 1: Use official Node.js base image
FROM node:18-alpine

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy only package files first (for faster rebuilds)
COPY package*.json ./

# Step 4: Install dependencies
RUN npm install --production

# Step 5: Copy the rest of your app code
COPY . .

# Step 6: Expose the port your app uses
EXPOSE 3000

# Step 7: Define the default command to start the app
CMD ["npm", "start"]