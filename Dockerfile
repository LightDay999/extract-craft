# Use an official Node runtime as the parent image
FROM node:14-slim

# Set the working directory in the container to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY package*.json ./

# Install any needed packages specified in package.json
RUN npm install

# Copy the rest of the application code into the container
COPY . ./

# Make port 3000 available to the world outside this container
EXPOSE 3000

# Run npm start command when the container launches
CMD ["npm", "start"]
