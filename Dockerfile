# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Install any needed packages
RUN npm install

# Make port 80 available to the world outside this container
EXPOSE 82
# Define build argument
# in case u are using docker-compose, u add these 2 , else not needed
# -----------------------------------------------
ARG IMAGE_TAG
ENV IMAGE_TAG=${IMAGE_TAG}
# -----------------------------------------------
# Define environment variable
ENV NAME World

# Run app.js when the container launches
CMD ["node", "app.js"]