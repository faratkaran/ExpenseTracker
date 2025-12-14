FROM eclipse-temurin:17-jdk

WORKDIR /app

COPY . .

# 🔴 Give execute permission to mvnw
RUN chmod +x mvnw

# Build the app
RUN ./mvnw clean package

EXPOSE 8080

CMD ["java", "-jar", "target/*SNAPSHOT.jar"]
