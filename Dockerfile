FROM openjdk:23-slim

COPY build/libs/accountservice.jar /app.jar

EXPOSE 8090/tcp

CMD [ "java", "-jar", "/app.jar" ]
