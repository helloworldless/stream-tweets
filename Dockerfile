# Base Alpine Linux based image with OpenJDK JRE only
FROM openjdk:8-jre-alpine
# copy application WAR (with libraries inside)
COPY target/stream-tweets-*.jar /app.jar
# specify default command
CMD ["/usr/bin/java", "-jar", "-Dspring.profiles.active=local", "/app.jar"]