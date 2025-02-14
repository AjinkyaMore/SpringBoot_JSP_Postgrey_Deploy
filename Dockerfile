# Use an official OpenJDK image
FROM eclipse-temurin:17-jdk

# Set working directory
WORKDIR /app

# Copy all files to container
COPY . .

# Give execute permission to Maven Wrapper
RUN chmod +x mvnw

# Build the application
RUN ./mvnw clean package

# Expose the default Spring Boot port
EXPOSE 8080

# Run the application
CMD ["java", "-jar", "target/*.war"]
