FROM adoptopenjdk/openjdk11:latest
#FROM gcr.io/google-appengine/openjdk11
LABEL description = "Kotlin Simple Application"
EXPOSE 8080
COPY ./build/libs/kopring.jar /opt/kopring.jar
WORKDIR /opt
ENTRYPOINT ["java", "-jar", "kopring.jar"]
