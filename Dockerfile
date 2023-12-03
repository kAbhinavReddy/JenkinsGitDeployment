# Use an official Node runtime as a parent image
FROM node:14-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the app files to the working directory
COPY . .

# Build the React app
RUN npm run build

# Set environment variables
ENV PORT 80

# Expose the port
EXPOSE $PORT

# Start the server
CMD ["npm", "start"]
