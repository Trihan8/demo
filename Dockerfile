# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file (replace with the path to your actual JAR file)
COPY target/demo-0.0.1-SNAPSHOT.jar /app/app.jar

# Expose the port that your Spring Boot application runs on
EXPOSE 8080

# Set the command to run the Spring Boot application
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
