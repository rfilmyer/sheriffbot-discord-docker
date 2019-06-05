# Use an official Node runtime as a parent image
FROM node:12

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN npm install "https://github.com/rfilmyer/sheriffbot-discord.git"

# Run app.py when the container launches
CMD ["node", "app.js"]
