
FROM eclipse-temurin:17-jdk-alpine
EXPOSE 8080

ENV APP_HOME /usr/src/app
WORKDIR $APP_HOME

# Matches GitHub Actions download path (app/*.jar)
COPY app/*.jar app.jar

CMD ["java", "-jar", "app.jar"]
