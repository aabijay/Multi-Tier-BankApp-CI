# Use official Eclipse Temurin JDK image (Java 17 + Alpine for small size)
FROM eclipse-temurin:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the built JAR file into the image
COPY target/*.jar app.jar

# Expose the port your app runs on (adjust if different)
EXPOSE 8080

# Run the JAR file
CMD ["java", "-jar", "app.jar"]
