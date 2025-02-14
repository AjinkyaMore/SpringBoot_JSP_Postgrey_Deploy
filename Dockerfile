# Use OpenJDK as base image
FROM eclipse-temurin:17-jdk

# Set working directory
WORKDIR /app

# Copy everything from the project
COPY . .

# Give execute permission to Maven Wrapper
RUN chmod +x mvnw

# Build the WAR file
RUN ./mvnw clean package

# Find the generated WAR file dynamically
RUN cp target/*.war app.war

# Expose the default Spring Boot port
EXPOSE 8080

# Start the application
CMD ["java", "-jar", "app.war"]
