# Use an official OpenJDK runtime as the base image
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /app


# Copy the jar file of the Config Server application into the container
COPY target/config-server-0.0.1-SNAPSHOT.jar app.jar

# Expose the port used by the Config Server
EXPOSE 8888

# Run the Config Server application
ENTRYPOINT ["java", "-jar", "app.jar"]