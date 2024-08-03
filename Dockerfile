# Use a base image with Java 11
FROM openjdk:11-jdk

# Set the working directory
WORKDIR /app

# Copy the Java application files
COPY target/*.jar app.jar

# Expose the port that the application will run on
EXPOSE 8080

# Set the command to run the Java application
CMD ["java", "-jar", "app.jar"]
