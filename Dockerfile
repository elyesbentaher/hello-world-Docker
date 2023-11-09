# Use the official Node.js image as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Install OpenJDK
RUN apt-get update && apt-get install -y openjdk-11-jdk

# Install Node.js dependencies
COPY package*.json ./
RUN npm install

# Bundle your source code inside the Docker image
COPY . .

# Expose the port that the application uses
EXPOSE 3000

# Set the JAVA_HOME environment variable
ENV JAVA_HOME /usr/lib/jvm/java-11-openjdk-amd64


# Command to run your application
CMD ["./gradlew", "buildNode"]


